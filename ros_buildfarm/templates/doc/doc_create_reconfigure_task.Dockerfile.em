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
    os_name='ubuntu',
    os_code_name=os_code_name,
))@

RUN python3 -u /tmp/wrapper_scripts/apt.py update-install-clean -q -y git python3-catkin-pkg python3-empy python3-pip python3-rosdistro python3-yaml python3-jenkinsapi

USER buildfarm
ENTRYPOINT ["sh", "-c"]
@{
cmd = \
    'PYTHONPATH=/tmp/ros_buildfarm:$PYTHONPATH python3 -u' + \
    ' /tmp/ros_buildfarm/scripts/doc/generate_doc_jobs.py' + \
    ' ' + config_url + \
    ' ' + rosdistro_name + \
    ' ' + doc_build_name
if groovy_script:
    cmd += ' --groovy-script ' + groovy_script
if dry_run:
    cmd += ' --dry-run'
if repository_names:
    cmd += ' --repository-names ' + ' '.join(repository_names)
}@
CMD ["@cmd"]
