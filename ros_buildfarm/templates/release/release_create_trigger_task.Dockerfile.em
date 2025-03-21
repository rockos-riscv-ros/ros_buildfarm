# generated from @template_name

@{os_code_name = 'trixie'}@
FROM z572/rockos

VOLUME ["/var/cache/apt/archives"]

ENV DEBIAN_FRONTEND noninteractive

@(TEMPLATE(
    'snippet/setup_locale.Dockerfile.em',
    timezone=timezone,
))@

@(TEMPLATE(
    'snippet/add_buildfarm_user.Dockerfile.em',
    uid=uid,
))@

@(TEMPLATE(
    'snippet/add_distribution_repositories.Dockerfile.em',
    distribution_repository_keys=distribution_repository_keys,
    distribution_repository_urls=distribution_repository_urls,
    os_name='debian',
    os_code_name=os_code_name,
    add_source=False,
))@

@(TEMPLATE(
    'snippet/add_wrapper_scripts.Dockerfile.em',
    wrapper_scripts=wrapper_scripts,
))@

# automatic invalidation once every day
RUN echo "@today_str"

@(TEMPLATE(
    'snippet/install_python3.Dockerfile.em',
    os_name='debian',
    os_code_name=os_code_name,
))@

RUN python3 -u /tmp/wrapper_scripts/apt.py update-install-clean -q -y python3-empy python3-pip python3-rosdistro python3-yaml python3-jenkinsapi

USER buildfarm
ENTRYPOINT ["sh", "-c"]
@{
cmd = \
    'PYTHONPATH=/tmp/ros_buildfarm:$PYTHONPATH python3 -u' + \
    ' /tmp/ros_buildfarm/scripts/release/trigger_jobs.py' + \
    ' ' + config_url + \
    ' ' + rosdistro_name + \
    ' ' + release_build_name + \
    ' --groovy-script ' + groovy_script + \
    ' --cache-dir ' + cache_dir
if missing_only:
    cmd += ' --missing-only'
if source_only:
    cmd += ' --source-only'
if not_failed_only:
    cmd += ' --not-failed-only'
}@
CMD ["@(cmd.replace('"', '\\"'))"]
