^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package ros_buildfarm
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

4.0.0 (2024-10-11)
------------------

* New features

  *
  * Support for building RPM packages (`#713 <https://github.com/ros-infrastructure/ros_buildfarm/pull/713>`_) (`#726 <https://github.com/ros-infrastructure/ros_buildfarm/pull/726>`_) (`#727 <https://github.com/ros-infrastructure/ros_buildfarm/pull/727>`_) (`#729 <https://github.com/ros-infrastructure/ros_buildfarm/pull/729>`_) (`#731 <https://github.com/ros-infrastructure/ros_buildfarm/pull/731>`_) (`#721 <https://github.com/ros-infrastructure/ros_buildfarm/pull/721>`_) (`#730 <https://github.com/ros-infrastructure/ros_buildfarm/pull/730>`_) (`#732 <https://github.com/ros-infrastructure/ros_buildfarm/pull/732>`_) (`#733 <https://github.com/ros-infrastructure/ros_buildfarm/pull/733>`_) (`#735 <https://github.com/ros-infrastructure/ros_buildfarm/pull/735>`_) (`#745 <https://github.com/ros-infrastructure/ros_buildfarm/pull/745>`_) (`#756 <https://github.com/ros-infrastructure/ros_buildfarm/pull/756>`_) (`#757 <https://github.com/ros-infrastructure/ros_buildfarm/pull/757>`_)
  * GPU support for build files (`#624 <https://github.com/ros-infrastructure/ros_buildfarm/pull/624>`_)
  * Implement the abichecker run on devel builds (`#681 <https://github.com/ros-infrastructure/ros_buildfarm/pull/681>`_)
  * Add scripts to build blocked source entries page (`#674 <https://github.com/ros-infrastructure/ros_buildfarm/pull/674>`_)

* Improvements

  *
  * Include filtered packages in status pages (`#750 <https://github.com/ros-infrastructure/ros_buildfarm/pull/750>`_)
  * Call out the buildname for easier debugging (`#749 <https://github.com/ros-infrastructure/ros_buildfarm/pull/749>`_)
  * Reduce uniqueness of docker images to prevent continuous aggregation (`#748 <https://github.com/ros-infrastructure/ros_buildfarm/pull/748>`_)
  * Add per-project authorization for CI builds (`#737 <https://github.com/ros-infrastructure/ros_buildfarm/pull/737>`_)
  * use GoogleTest / JUnit test result parser based on file pattern in ROS 2 (`#723 <https://github.com/ros-infrastructure/ros_buildfarm/pull/723>`_)
  * Add --dry-run option to generate_release_job (`#720 <https://github.com/ros-infrastructure/ros_buildfarm/pull/720>`_)
  * Add support for Jenkins credential binding plugin (`#716 <https://github.com/ros-infrastructure/ros_buildfarm/pull/716>`_)
  * Add support for param files in Jenkins trigger plugin (`#714 <https://github.com/ros-infrastructure/ros_buildfarm/pull/714>`_)
  * Update subprocess_reaper.py to work with psutil 3.x to 5.x. (`#718 <https://github.com/ros-infrastructure/ros_buildfarm/pull/718>`_)
  * Refactor and abstract debian repo data caching (`#707 <https://github.com/ros-infrastructure/ros_buildfarm/pull/707>`_)
  * Use yaml.safe_load (`#708 <https://github.com/ros-infrastructure/ros_buildfarm/pull/708>`_)
  * Replace debian-specific concepts with something more platform-neutral (`#705 <https://github.com/ros-infrastructure/ros_buildfarm/pull/705>`_) (`#711 <https://github.com/ros-infrastructure/ros_buildfarm/pull/711>`_) (`#712 <https://github.com/ros-infrastructure/ros_buildfarm/pull/712>`_) (`#717 <https://github.com/ros-infrastructure/ros_buildfarm/pull/717>`_)
  * Update OS code name mapping (`#699 <https://github.com/ros-infrastructure/ros_buildfarm/pull/699>`_) (`#700 <https://github.com/ros-infrastructure/ros_buildfarm/pull/700>`_) (`#704 <https://github.com/ros-infrastructure/ros_buildfarm/pull/704>`_)
  * Add post test plots for performance test (`#689 <https://github.com/ros-infrastructure/ros_buildfarm/pull/689>`_) (`#740 <https://github.com/ros-infrastructure/ros_buildfarm/pull/740>`_)
  * add rosdep_update_options (`#684 <https://github.com/ros-infrastructure/ros_buildfarm/pull/684>`_)
  * Add CI option to display generated images on build summary (`#680 <https://github.com/ros-infrastructure/ros_buildfarm/pull/680>`_)
  * vertical align cells in blocked status pages (`#679 <https://github.com/ros-infrastructure/ros_buildfarm/pull/679>`_)
  * Support any number of layered workspaces (`#670 <https://github.com/ros-infrastructure/ros_buildfarm/pull/670>`_)
  * add option to configure CI jobs using repository names from rosdistro (`#661 <https://github.com/ros-infrastructure/ros_buildfarm/pull/661>`_)
  * Add CI config 'jenkins_job_upstream_trigger' (`#664 <https://github.com/ros-infrastructure/ros_buildfarm/pull/664>`_)
  * Add --dry-run option to generate_ci_job (`#663 <https://github.com/ros-infrastructure/ros_buildfarm/pull/663>`_

* Changes

  * 
  * Update plugin versions (`#660 <https://github.com/ros-infrastructure/ros_buildfarm/pull/660>`_) (`#683 <https://github.com/ros-infrastructure/ros_buildfarm/pull/683>`_) (`#698 <https://github.com/ros-infrastructure/ros_buildfarm/pull/698>`_)
  * Don't override MAKEFLAGS blindly (`#645 <https://github.com/ros-infrastructure/ros_buildfarm/pull/645>`_)
  * Update GPG key and move to supported platform for CI builds (`#641 <https://github.com/ros-infrastructure/ros_buildfarm/pull/641>`_)

* Fixes

  *
  * add missing jenkinsapi dependency (`#754 <https://github.com/ros-infrastructure/ros_buildfarm/pull/754>`_)
  * Install rosdoc_lite deps based on python version (`#751 <https://github.com/ros-infrastructure/ros_buildfarm/pull/751>`_)
  * Do not reuse cid files (`#753 <https://github.com/ros-infrastructure/ros_buildfarm/pull/753>`_)
  * Don't inject ros_workspace dep when there is no ros_workspace (`#722 <https://github.com/ros-infrastructure/ros_buildfarm/pull/722>`_)
  * Front-load manifest parsing and ros_workspace dep injection (`#719 <https://github.com/ros-infrastructure/ros_buildfarm/pull/719>`_)
  * Escape $ in repo URLs and strip() the GPG keys (`#715 <https://github.com/ros-infrastructure/ros_buildfarm/pull/715>`_)
  * create '/$HOME/.ccache' as a user before mounting it (`#696 <https://github.com/ros-infrastructure/ros_buildfarm/pull/696>`_)
  * Always update apt cache for CI dependency enumeration (`#691 <https://github.com/ros-infrastructure/ros_buildfarm/pull/691>`_)
  * inject downstream job dependencies for ros_workspace (`#690 <https://github.com/ros-infrastructure/ros_buildfarm/pull/690>`_)
  * Ensure repos file names don't collide (`#688 <https://github.com/ros-infrastructure/ros_buildfarm/pull/688>`_)
  * work around ros_version not being available in the scope of list comprehension (`#675 <https://github.com/ros-infrastructure/ros_buildfarm/pull/675>`_)
  * Always update ccache symlinks in devel jobs. (`#671 <https://github.com/ros-infrastructure/ros_buildfarm/pull/671>`_)
  * evaluate dependency conditions in doc jobs (`#668 <https://github.com/ros-infrastructure/ros_buildfarm/pull/668>`_)
  * make order of build env vars deterministic (`#667 <https://github.com/ros-infrastructure/ros_buildfarm/pull/667>`_)
  * workarounds to get the Noetic CI jobs using Python 3 to turn over (`#666 <https://github.com/ros-infrastructure/ros_buildfarm/pull/666>`_)
  * fix checking evaluate conditions in CI jobs (`#662 <https://github.com/ros-infrastructure/ros_buildfarm/pull/662>`_)
  * install colcon-metadata to get metadata from colcon.pkg files (`#659 <https://github.com/ros-infrastructure/ros_buildfarm/pull/659>`_)
  * add -l to workaround hanging docker build when uid is large (`#656 <https://github.com/ros-infrastructure/ros_buildfarm/pull/656>`_)
  * Prevent colcon from crawling the catkin results (`#655 <https://github.com/ros-infrastructure/ros_buildfarm/pull/655>`_)
  * Fix CI job generation when called from generate_all_jobs (`#653 <https://github.com/ros-infrastructure/ros_buildfarm/pull/653>`_)
  * Fix extra build tool arguments when testing with colcon (`#650 <https://github.com/ros-infrastructure/ros_buildfarm/pull/650>`_)
  * Manually inspect colcon index to find CI underlay packages (`#648 <https://github.com/ros-infrastructure/ros_buildfarm/pull/648>`_)
  * allow 'vcs export --exact' to fail when merging a branch (`#647 <https://github.com/ros-infrastructure/ros_buildfarm/pull/647>`_)
  * set git user email and name for 'git merge' to work (`#646 <https://github.com/ros-infrastructure/ros_buildfarm/pull/646>`_)
  * Fix CI build detection of non-ROS packages (`#642 <https://github.com/ros-infrastructure/ros_buildfarm/pull/642>`_)

* TO BE OMITTED: Could be a fix for a problem that was introduced during this development period, a housekeeping change, a small documentation change, etc

  * 
  * Revert "rewrite shebang lines for Python 3 when using cmi" (`#739 <https://github.com/ros-infrastructure/ros_buildfarm/pull/739>`_)
  * Fix typo in documentation. (`#738 <https://github.com/ros-infrastructure/ros_buildfarm/pull/738>`_)
  * revert custom xunit types (`#725 <https://github.com/ros-infrastructure/ros_buildfarm/pull/725>`_)
  * limit JUnit type for pytest.xml to Focal, otherwise fall back to GoogleTest (`#724 <https://github.com/ros-infrastructure/ros_buildfarm/pull/724>`_)
  * Add mapping from OS names to packaging formats (`#703 <https://github.com/ros-infrastructure/ros_buildfarm/pull/703>`_)
  * Activate displayTableFlag (`#710 <https://github.com/ros-infrastructure/ros_buildfarm/pull/710>`_)
  * Added num_build option to jenkin plot plugin (`#702 <https://github.com/ros-infrastructure/ros_buildfarm/pull/702>`_)
  * Skip unreleased packages from ABI checking (`#694 <https://github.com/ros-infrastructure/ros_buildfarm/pull/694>`_)
  * Restore space in self-closing tags (`#701 <https://github.com/ros-infrastructure/ros_buildfarm/pull/701>`_)
  * Added to plot plugin y max and min values (`#697 <https://github.com/ros-infrastructure/ros_buildfarm/pull/697>`_)
  * Documentation improvements and a warning (`#677 <https://github.com/ros-infrastructure/ros_buildfarm/pull/677>`_)
  * test against Dashing instead of Crystal (`#676 <https://github.com/ros-infrastructure/ros_buildfarm/pull/676>`_)
  * Add new Ubuntu and Debian repositories. (`#673 <https://github.com/ros-infrastructure/ros_buildfarm/pull/673>`_)
  * remove trusty, utopic, vivid, wily from list of suites (`#672 <https://github.com/ros-infrastructure/ros_buildfarm/pull/672>`_)
  * Embed repository GPG key. (`#635 <https://github.com/ros-infrastructure/ros_buildfarm/pull/635>`_)
  * fix branch name in version (`#661 <https://github.com/ros-infrastructure/ros_buildfarm/pull/661>`_)
  * environment: update virtual env setup instructions. Fix #657. (`#658 <https://github.com/ros-infrastructure/ros_buildfarm/pull/658>`_)
  * add link to ci_jobs.rst (`#649 <https://github.com/ros-infrastructure/ros_buildfarm/pull/649>`_)
  * Fix a regression in CI builds with no package selection args (`#644 <https://github.com/ros-infrastructure/ros_buildfarm/pull/644>`_)
  * updating plugin versions (`#640 <https://github.com/ros-infrastructure/ros_buildfarm/pull/640>`_)
  * start next development cycle which might become 3.0.1

3.0.0 (2019-06-07)
------------------
This new major version requires a post-JEP-200 Jenkins version (see `#587 <https://github.com/ros-infrastructure/ros_buildfarm/pull/587>`_) and therefore the provisioned machine to be updated (`buildfarm_deployment#207 <https://github.com/ros-infrastructure/buildfarm_deployment/pull/207>`_).

* New features

  * support colcon build tool using a configuration option (`#585 <https://github.com/ros-infrastructure/ros_buildfarm/pull/585>`_, `#589 <https://github.com/ros-infrastructure/ros_buildfarm/pull/589>`_, `#591 <https://github.com/ros-infrastructure/ros_buildfarm/pull/591>`_)
  * add CI jobs for building and testing workspaces defined in a .repos file (`#590 <https://github.com/ros-infrastructure/ros_buildfarm/pull/590>`_, `#607 <https://github.com/ros-infrastructure/ros_buildfarm/pull/607>`_, `#610 <https://github.com/ros-infrastructure/ros_buildfarm/pull/610>`_, `#623 <https://github.com/ros-infrastructure/ros_buildfarm/pull/623>`_, `#628 <https://github.com/ros-infrastructure/ros_buildfarm/pull/628>`_, `#629 <https://github.com/ros-infrastructure/ros_buildfarm/pull/629>`_, `#630 <https://github.com/ros-infrastructure/ros_buildfarm/pull/630>`_, `#632 <https://github.com/ros-infrastructure/ros_buildfarm/pull/632>`_, `#633 <https://github.com/ros-infrastructure/ros_buildfarm/pull/633>`_, `#636 <https://github.com/ros-infrastructure/ros_buildfarm/pull/636>`_)

* Improvements

  * evaluate conditions in manifests (`#621 <https://github.com/ros-infrastructure/ros_buildfarm/pull/621>`_, `#634 <https://github.com/ros-infrastructure/ros_buildfarm/pull/634>`_)
  * support for a docker_build type of doc_independent build (`#576 <https://github.com/ros-infrastructure/ros_buildfarm/pull/576>`_, `#619 <https://github.com/ros-infrastructure/ros_buildfarm/pull/619>`_)
  * add options to configure apt/pip package dependencies for the independent doc job in the build file (`#618 <https://github.com/ros-infrastructure/ros_buildfarm/pull/618>`_)
  * [prerelease] add ability to generate repos files for faster cloning (rebased) (`#600 <https://github.com/ros-infrastructure/ros_buildfarm/pull/600>`_)
  * only consider same type distros when looking for previous distro (`#593 <https://github.com/ros-infrastructure/ros_buildfarm/pull/593>`_)
  * share ccache between docker builds (`#580 <https://github.com/ros-infrastructure/ros_buildfarm/pull/580>`_)
  * allow searching by email on status pages (`#561 <https://github.com/ros-infrastructure/ros_buildfarm/pull/561>`_)
  * set build environment variables from build files (`#554 <https://github.com/ros-infrastructure/ros_buildfarm/pull/554>`_, `#558 <https://github.com/ros-infrastructure/ros_buildfarm/pull/558>`_)
  * add devel job test statistics collation (`#541 <https://github.com/ros-infrastructure/ros_buildfarm/pull/541>`_)

* Changes

  * add all Ubuntu EOL distros back to boxturtle to old release template (`#637 <https://github.com/ros-infrastructure/ros_buildfarm/pull/637>`_)
  * fetch artful from old-releases (`#569 <https://github.com/ros-infrastructure/ros_buildfarm/pull/569>`_)
  * bump tests to use latest ROS releases (`#613 <https://github.com/ros-infrastructure/ros_buildfarm/pull/613>`_)
  * support expression of dependencies via install list file (`#612 <https://github.com/ros-infrastructure/ros_buildfarm/pull/612>`_)
  * also test with Python 3.5 and 3.6 (`#570 <https://github.com/ros-infrastructure/ros_buildfarm/pull/570>`_)

* Fixes

  * pin sphinx version due to issue with latest release 2.0.0 (`#615 <https://github.com/ros-infrastructure/ros_buildfarm/pull/615>`_)
  * fix remaining flake8 violations (`#611 <https://github.com/ros-infrastructure/ros_buildfarm/pull/611>`_)
  * handle scenario where no views or jobs are reconfigured (`#606 <https://github.com/ros-infrastructure/ros_buildfarm/pull/606>`_)
  * support flake8 3.5.0 and fix various linter violations (`#608 <https://github.com/ros-infrastructure/ros_buildfarm/pull/608>`_)
  * use version number on -modules dependency (`#562 <https://github.com/ros-infrastructure/ros_buildfarm/pull/562>`_, `#599 <https://github.com/ros-infrastructure/ros_buildfarm/pull/599>`_)
  * use Bourne shell / dash compatible shell condition (`#592 <https://github.com/ros-infrastructure/ros_buildfarm/pull/592>`_)
  * fix return codes from some job generation scripts (`#595 <https://github.com/ros-infrastructure/ros_buildfarm/pull/595>`_)
  * install updated version of dpkg on Trusty (`#564 <https://github.com/ros-infrastructure/ros_buildfarm/pull/564>`_, `#566 <https://github.com/ros-infrastructure/ros_buildfarm/pull/566>`_)
  * fix regex to not match jobs from other build files (`#563 <https://github.com/ros-infrastructure/ros_buildfarm/pull/563>`_)
  * install dh-python explicitly on Bionic and Buster as it's not included with Python 3 (`#553 <https://github.com/ros-infrastructure/ros_buildfarm/pull/553>`_, `#556 <https://github.com/ros-infrastructure/ros_buildfarm/pull/556>`_)
  * use single pipe to avoid problems with Jenkins reading them concurrently (`#552 <https://github.com/ros-infrastructure/ros_buildfarm/pull/552>`_)
  * install apt transport https (`#551 <https://github.com/ros-infrastructure/ros_buildfarm/pull/551>`_)
  * add ddebs to published binarydeb files (`#545 <https://github.com/ros-infrastructure/ros_buildfarm/pull/545>`_)

2.0.1 (2018-04-30)
------------------

* Improvements

  * use egrep to find repository components in arbitrary positions (`#532 <https://github.com/ros-infrastructure/ros_buildfarm/pull/532>`_)

* Fixes

  * revert "remove using the test_depend from binary jobs" introduced in 2.0.0 (`#540 <https://github.com/ros-infrastructure/ros_buildfarm/pull/540>`_)
  * add missing import from future for Python 2 compatibility (`#537 <https://github.com/ros-infrastructure/ros_buildfarm/pull/537>`_)

2.0.0 (2018-04-03)
------------------
This new major version requires the provisioned machines to be based on the updated `buildfarm_deployment` which is based on Ubuntu Xenial hosts with Java 8 and Jenkins up to version 2.89.x.
Jenkins 2.107.x comes with additional changes which this version is not yet suitable for.

* New features

  * generate YAML files with build information (`#521 <https://github.com/ros-infrastructure/ros_buildfarm/pull/521>`_, `#522 <https://github.com/ros-infrastructure/ros_buildfarm/pull/522>`_)
  * git clone with --recurse-submodules (`#515 <https://github.com/ros-infrastructure/ros_buildfarm/pull/515>`_)

* Changes

  * remove using the test_depend for binary jobs (`#534 <https://github.com/ros-infrastructure/ros_buildfarm/pull/534>`_)
  * move all jobs that are at priority 40 down to 35 (`#500 <https://github.com/ros-infrastructure/ros_buildfarm/pull/500>`_)
  * fix Debian revision (replace - with .) as of ROS Melodic and ROS 2 Bouncy (`#460 <https://github.com/ros-infrastructure/ros_buildfarm/pull/460>`_, `#512 <https://github.com/ros-infrastructure/ros_buildfarm/pull/512>`_)
  * update plugin versions and configurations (`#477 <https://github.com/ros-infrastructure/ros_buildfarm/pull/477>`_, `#482 <https://github.com/ros-infrastructure/ros_buildfarm/pull/482>`_, `#486 <https://github.com/ros-infrastructure/ros_buildfarm/pull/486>`_)
  * merge the changes for Xenial into master (`#480 <https://github.com/ros-infrastructure/ros_buildfarm/pull/480>`_)
  * increase days_to_keep for some job types (`#481 <https://github.com/ros-infrastructure/ros_buildfarm/pull/481>`_)

* Improvements

  * add the mail publisher to the trigger_upload_repo_job (`#520 <https://github.com/ros-infrastructure/ros_buildfarm/pull/520>`_)
  * document and use option canonical_base_url (`#517 <https://github.com/ros-infrastructure/ros_buildfarm/pull/517>`_)
  * add artful and bionic to the short os names (`#493 <https://github.com/ros-infrastructure/ros_buildfarm/pull/493>`_)
  * do not make job unstable if there are skipped tests (`#492 <https://github.com/ros-infrastructure/ros_buildfarm/pull/492>`_)
  * add initial version of upload trigger job generators (`#474 <https://github.com/ros-infrastructure/ros_buildfarm/pull/474>`_)

* Fixes

  * do not generate a blocked-releases job for the first distro (`#533 <https://github.com/ros-infrastructure/ros_buildfarm/pull/533>`_)
  * fix warning about duplicate apt repos (`#530 <https://github.com/ros-infrastructure/ros_buildfarm/pull/530>`_)
  * don't set an empty ssh-agent wrapper on devel jobs (`#528 <https://github.com/ros-infrastructure/ros_buildfarm/pull/528>`_, `#531 <https://github.com/ros-infrastructure/ros_buildfarm/pull/531>`_)
  * mount the shared jenkins hgcache to allow hg operations (`#526 <https://github.com/ros-infrastructure/ros_buildfarm/pull/526>`_)
  * ignore the seccomp profile warning in docker info (`#527 <https://github.com/ros-infrastructure/ros_buildfarm/pull/527>`_)
  * call super in JobValidationError to correcly print the error (`#524 <https://github.com/ros-infrastructure/ros_buildfarm/pull/524>`_)
  * fix check for existing description tag (`#518 <https://github.com/ros-infrastructure/ros_buildfarm/pull/518>`_)
  * install gnupg on newer Ubuntu (`#506 <https://github.com/ros-infrastructure/ros_buildfarm/pull/506>`_)
  * use -d option to skip checking for build deps in source jobs on newer Ubuntu (`#505 <https://github.com/ros-infrastructure/ros_buildfarm/pull/505>`_)
  * move old_releases sources before installing locales (`#504 <https://github.com/ros-infrastructure/ros_buildfarm/pull/504>`_)
  * update list of EOL ubuntu distributions up to Zesty (`#503 <https://github.com/ros-infrastructure/ros_buildfarm/pull/503>`_)
  * resolve catkin instead of assuming current rosdistro (`#501 <https://github.com/ros-infrastructure/ros_buildfarm/pull/501>`_)
  * fix mercurial config (`#490 <https://github.com/ros-infrastructure/ros_buildfarm/pull/490>`_)
  * fix config of created views if they have no jobs associated (`#483 <https://github.com/ros-infrastructure/ros_buildfarm/pull/483>`_)

* Documentation

  * point to the Buildfarm Discourse instead of the old SIG (`#499 <https://github.com/ros-infrastructure/ros_buildfarm/pull/499>`_)
  * add delete views instructions (`#485 <https://github.com/ros-infrastructure/ros_buildfarm/pull/485>`_)

1.4.1 (2017-08-30)
------------------
* Improvements

  * increase limit of age and/or count for kept build logs for some jobs (`#471 <https://github.com/ros-infrastructure/ros_buildfarm/pull/471>`_)
  * retry apt on corrupted package archive error (`#468 <https://github.com/ros-infrastructure/ros_buildfarm/pull/468>`_)
  * improve docs to remove obsolete jobs (`#464 <https://github.com/ros-infrastructure/ros_buildfarm/issues/464>`_, `#473 <https://github.com/ros-infrastructure/ros_buildfarm/pull/473>`_)
  * make Dockerfile template more flexible (`#463 <https://github.com/ros-infrastructure/ros_buildfarm/pull/463>`_)

* Fixes

  * use cloudfront mirror for all debian sources (`#467 <https://github.com/ros-infrastructure/ros_buildfarm/pull/467>`_)

1.4.0 (2017-07-12)
------------------
* New features

  * add new jobs to display the failing jobs by ROS distro (`#454 <https://github.com/ros-infrastructure/ros_buildfarm/issues/454>`_)
  * add nightly job to trigger missed jobs (`#451 <https://github.com/ros-infrastructure/ros_buildfarm/issues/451>`_)
  * add option to trigger only not-failed jobs (`#446 <https://github.com/ros-infrastructure/ros_buildfarm/issues/446>`_)
  * use Xenial Docker images instead of Trusty (`#444 <https://github.com/ros-infrastructure/ros_buildfarm/issues/444>`_, `#445 <https://github.com/ros-infrastructure/ros_buildfarm/issues/445>`_)
  * add ORPHANED that shows both end-of-life and unmaintaned (`#439 <https://github.com/ros-infrastructure/ros_buildfarm/issues/439>`_)
  * support OR syntax as well as regex (`#435 <https://github.com/ros-infrastructure/ros_buildfarm/issues/435>`_, `#436 <https://github.com/ros-infrastructure/ros_buildfarm/issues/436>`_)
  * add config option to enable / disable sending notification emails for pull request jobs (`#432 <https://github.com/ros-infrastructure/ros_buildfarm/issues/432>`_)

* Improvements

  * print blank lines around error message (`#459 <https://github.com/ros-infrastructure/ros_buildfarm/issues/459>`_)
  * add 'Failed to stat' to the list of apt known errors (`#458 <https://github.com/ros-infrastructure/ros_buildfarm/issues/458>`_)
  * catch another apt hiccup (`#452 <https://github.com/ros-infrastructure/ros_buildfarm/issues/452>`_)
  * improve performance to generate maintenance jobs (`#450 <https://github.com/ros-infrastructure/ros_buildfarm/issues/450>`_)
  * show parameter of reconfigure jobs in build description (`#449 <https://github.com/ros-infrastructure/ros_buildfarm/issues/449>`_)
  * invert logic for future proofing (`#443 <https://github.com/ros-infrastructure/ros_buildfarm/issues/443>`_)
  * update description of import_upstream job (`#442 <https://github.com/ros-infrastructure/ros_buildfarm/issues/442>`_)
  * use higher prio for import_upstream job (`#441 <https://github.com/ros-infrastructure/ros_buildfarm/issues/441>`_)
  * change color of "unmaintained" from yellow to orange (`#440 <https://github.com/ros-infrastructure/ros_buildfarm/issues/440>`_)
  * add title to input fields (`#436 <https://github.com/ros-infrastructure/ros_buildfarm/issues/436>`_)
  * improve performance to collect recursive dependencies (`#430 <https://github.com/ros-infrastructure/ros_buildfarm/issues/430>`_)

* Fixes

  * use cloudfront.debian.net rather than deb.debian.org (`#461 <https://github.com/ros-infrastructure/ros_buildfarm/issues/461>`_)
  * avoid installing wrapper scripts (`#457 <https://github.com/ros-infrastructure/ros_buildfarm/issues/457>`_)
  * check version in a way that supports Python 2.6 (`#438 <https://github.com/ros-infrastructure/ros_buildfarm/issues/438>`_)
  * explicitly reschedule aborted builds (`#437 <https://github.com/ros-infrastructure/ros_buildfarm/issues/437>`_)

1.3.2 (2017-04-26)
------------------
* modify compare page to list packages rather than repositories (`#425 <https://github.com/ros-infrastructure/ros_buildfarm/pull/425>`_)
* fix regression in trigger logic introduced in 1.3.1 (`#427 <https://github.com/ros-infrastructure/ros_buildfarm/issues/427>`_)

1.3.1 (2017-04-21)
------------------
* Improvements

  * avoid iterating all items (if not necessary) improving reconfigure performance (`#423 <https://github.com/ros-infrastructure/ros_buildfarm/pull/423>`_)
  * minor changes to the blocked repos status page generation (`#422 <https://github.com/ros-infrastructure/ros_buildfarm/pull/422>`_)
  * add progress indicator for reconfigure Groovy scripts, mention dry run on skipped jobs
  * improve error message when trying a prerelease for a released repo without a source entry (`#413 <https://github.com/ros-infrastructure/ros_buildfarm/pull/413>`_)
  * use forked code in Travis tests (`#411 <https://github.com/ros-infrastructure/ros_buildfarm/pull/411>`_)
  * avoid switching between DST and non-DST timezone (`#408 <https://github.com/ros-infrastructure/ros_buildfarm/pull/408>`_)

* Fixes

  * update plugin versions, fix Groovy failures (`#418 <https://github.com/ros-infrastructure/ros_buildfarm/pull/418>`_, `#421 <https://github.com/ros-infrastructure/ros_buildfarm/pull/421>`_, `#424 <https://github.com/ros-infrastructure/ros_buildfarm/pull/424>`_)
  * fix wget not being available in doc jobs for custom rosdep rules (`#416 <https://github.com/ros-infrastructure/ros_buildfarm/pull/416>`_)
  * fix using latest Ubuntu Docker images which don't have locales installed anymore (`#415 <https://github.com/ros-infrastructure/ros_buildfarm/pull/415>`_)
  * fix blocking repos script (`#407 <https://github.com/ros-infrastructure/ros_buildfarm/pull/407>`_)

1.3.0 (2017-03-16)
------------------
* New features

  * get return codes of catkin_test_results from generated scripts (`#399 <https://github.com/ros-infrastructure/ros_buildfarm/pull/399>`_)
  * fold sections in Travis log (`#396 <https://github.com/ros-infrastructure/ros_buildfarm/pull/396>`_)
  * reuse existing source tarball if it exists (`#374 <https://github.com/ros-infrastructure/ros_buildfarm/pull/374>`_, `#395 <https://github.com/ros-infrastructure/ros_buildfarm/pull/395>`_, `#397 <https://github.com/ros-infrastructure/ros_buildfarm/pull/397>`_, `#398 <https://github.com/ros-infrastructure/ros_buildfarm/pull/398>`_)
  * add blocking packages status page (`#279 <https://github.com/ros-infrastructure/ros_buildfarm/pull/279>`_, `#381 <https://github.com/ros-infrastructure/ros_buildfarm/pull/381>`_)
  * add platforms targeted by ROS Lunar (`#360 <https://github.com/ros-infrastructure/ros_buildfarm/pull/360>`_, `#371 <https://github.com/ros-infrastructure/ros_buildfarm/pull/371>`_, `#372 <https://github.com/ros-infrastructure/ros_buildfarm/pull/372>`_, `#373 <https://github.com/ros-infrastructure/ros_buildfarm/pull/373>`_, `#375 <https://github.com/ros-infrastructure/ros_buildfarm/pull/375>`_, `#380 <https://github.com/ros-infrastructure/ros_buildfarm/pull/380>`_, `#384 <https://github.com/ros-infrastructure/ros_buildfarm/pull/384>`_, `#385 <https://github.com/ros-infrastructure/ros_buildfarm/pull/385>`_)

* Improvements

  * improve prerelease scripts to work for external repo which are not in the rosdistro, skip overlay step if the workspace is empty anyway (`#405 <https://github.com/ros-infrastructure/ros_buildfarm/pull/405>`_)
  * create separate Debian packages (python(3)-ros-buildfarm, python(3)-ros-buildfarm-modules) to allow side-by-side installation of the modules (`#402 <https://github.com/ros-infrastructure/ros_buildfarm/pull/402>`_)
  * add doc about return code environment variables and how to use prereleases for external repos (`#401 <https://github.com/ros-infrastructure/ros_buildfarm/pull/401>`_)
  * use python(3)-rosdistro-modules instead of python(3)-rosdistro where possible (`#383 <https://github.com/ros-infrastructure/ros_buildfarm/pull/383>`_)
  * use python(3)-catkin-pkg-modules instead of python(3)-catkin-pkg (`#379 <https://github.com/ros-infrastructure/ros_buildfarm/pull/379>`_)
  * use different schedule for status pages (`#378 <https://github.com/ros-infrastructure/ros_buildfarm/pull/378>`_)
  * avoid regenerating the source tarball and use already uploaded one if available (`#374 <https://github.com/ros-infrastructure/ros_buildfarm/pull/374>`_)
  * use deb.debian.org instead of http.debian.net (`#370 <https://github.com/ros-infrastructure/ros_buildfarm/pull/370>`_)
  * enable multiverse for binary jobs (`#364 <https://github.com/ros-infrastructure/ros_buildfarm/pull/364>`_, `#366 <https://github.com/ros-infrastructure/ros_buildfarm/pull/366>`_)
  * remove deprecated MAINTAINER command from Docker files (`#362 <https://github.com/ros-infrastructure/ros_buildfarm/pull/362>`_)
  * fold all dependency installation into a single Docker line (`#361 <https://github.com/ros-infrastructure/ros_buildfarm/pull/361>`_)
  * improve help for prerelease script (`#358 <https://github.com/ros-infrastructure/ros_buildfarm/pull/358>`_)
  * various improvements to the status pages (`#354 <https://github.com/ros-infrastructure/ros_buildfarm/pull/354>`_)

* Fixes

  * fix issues with Python 2 (`#357 <https://github.com/ros-infrastructure/ros_buildfarm/pull/357>`_, `#404 <https://github.com/ros-infrastructure/ros_buildfarm/pull/404>`_)
  * fix package type for metapackages without a doc job (`#393 <https://github.com/ros-infrastructure/ros_buildfarm/pull/393>`_)
  * workaround sporadically missing apt-src on Debian Jessie (`#387 <https://github.com/ros-infrastructure/ros_buildfarm/pull/387>`_)
  * fix generate release script (`#386 <https://github.com/ros-infrastructure/ros_buildfarm/pull/386>`_, `#386 <https://github.com/ros-infrastructure/ros_buildfarm/pull/391>`_)
  * fix plain apt retry logic (`#365 <https://github.com/ros-infrastructure/ros_buildfarm/pull/365>`_)
  * add missing configparser dependency for Python 2 (`#356 <https://github.com/ros-infrastructure/ros_buildfarm/pull/356>`_)
  * fix cross referencing with doxygen (`#352 <https://github.com/ros-infrastructure/ros_buildfarm/pull/352>`_)

1.2.1 (2016-10-20)
------------------
* fix installation of wrapper scripts (`#348 <https://github.com/ros-infrastructure/ros_buildfarm/pull/348>`_)
* fix missing dependency on Python 3 empy when using Python 2 (`#349 <https://github.com/ros-infrastructure/ros_buildfarm/issues/349>`_)

1.2.0 (2016-10-04)
------------------
* New features

  * add option to extract compiler warnings and mark builds unstable (`#293 <https://github.com/ros-infrastructure/ros_buildfarm/pull/293>`_)
  * add option to extract CMake warnings and mark builds unstable (`#335 <https://github.com/ros-infrastructure/ros_buildfarm/pull/335>`_)
  * support native jobs on ARM64 (`#343 <https://github.com/ros-infrastructure/ros_buildfarm/pull/343>`_)
  * reconfigure devel and doc jobs when the rosdistro cache gets an updated entry (`#344 <https://github.com/ros-infrastructure/ros_buildfarm/pull/344>`_, `#345 <https://github.com/ros-infrastructure/ros_buildfarm/pull/345>`_)

* Improvements

  * retry on more known apt errors (`#272 <https://github.com/ros-infrastructure/ros_buildfarm/pull/272>`_, `#289 <https://github.com/ros-infrastructure/ros_buildfarm/pull/289>`_)
  * more compare status pages, add age information to status pages (`#299 <https://github.com/ros-infrastructure/ros_buildfarm/pull/299>`_)
  * enable devel jobs on Debian (`#302 <https://github.com/ros-infrastructure/ros_buildfarm/pull/302>`_)
  * check for circular dependencies (`#313 <https://github.com/ros-infrastructure/ros_buildfarm/pull/313>`_)
  * automatically disable sourcedeb jobs after five failing attemps (`#315 <https://github.com/ros-infrastructure/ros_buildfarm/pull/315>`_)
  * make the queue path configurable (`#316 <https://github.com/ros-infrastructure/ros_buildfarm/pull/316>`_)
  * add build file specific labels (`#317 <https://github.com/ros-infrastructure/ros_buildfarm/pull/317>`_)
  * configure devel and doc jobs in alphabetical order (`#323 <https://github.com/ros-infrastructure/ros_buildfarm/pull/323>`_)
  * allow interrupting groovy reconfigure scripts (`#325 <https://github.com/ros-infrastructure/ros_buildfarm/pull/325>`_)
  * allow auth token in GitHub urls (`#329 <https://github.com/ros-infrastructure/ros_buildfarm/pull/329>`_)
  * run single apt call for folded dependencies (`#334 <https://github.com/ros-infrastructure/ros_buildfarm/pull/334>`_)
  * use upstream CrumbRequester if available (`#340 <https://github.com/ros-infrastructure/ros_buildfarm/pull/340>`_)

* Fixes

  * fix locale on Debian (`#281 <https://github.com/ros-infrastructure/ros_buildfarm/pull/281>`_)
  * fix local scripts when git configuration contains pager (`#294 <https://github.com/ros-infrastructure/ros_buildfarm/pull/294>`_)
  * ensure to source underlay in case the workspace doesn't create any setup files (`#296 <https://github.com/ros-infrastructure/ros_buildfarm/pull/296>`_)
  * fix to include recursive run dependencies within the workspace (`#310 <https://github.com/ros-infrastructure/ros_buildfarm/pull/310>`_)
  * fix wrapper scripts when using a virtual environment (`#318 <https://github.com/ros-infrastructure/ros_buildfarm/pull/318>`_)
  * fix ssh authentication for devel jobs (`#319 <https://github.com/ros-infrastructure/ros_buildfarm/pull/319>`_)
  * only require a source entry for the apt target repository (`#322 <https://github.com/ros-infrastructure/ros_buildfarm/pull/322>`_)
  * fix not to use shallow clones when using merge-before-build (`#330 <https://github.com/ros-infrastructure/ros_buildfarm/pull/330>`_)
  * fix url of diffutils (`#338 <https://github.com/ros-infrastructure/ros_buildfarm/pull/338>`_)
  * fix newline expansion for some shells (`#342 <https://github.com/ros-infrastructure/ros_buildfarm/pull/342>`_)
  * fix triggering of doc jobs for released packages (`#346 <https://github.com/ros-infrastructure/ros_buildfarm/pull/346>`_)

1.1.0 (2016-03-18)
------------------
* New features

  * add Wily and Xenial support (`#223 <https://github.com/ros-infrastructure/ros_buildfarm/pull/223>`_, `#225 <https://github.com/ros-infrastructure/ros_buildfarm/pull/225>`_)
  * add support for Debian (`#252 <https://github.com/ros-infrastructure/ros_buildfarm/pull/252>`_)
  * add support for ARM64 on Ubuntu (`#246 <https://github.com/ros-infrastructure/ros_buildfarm/pull/246>`_)
  * extract compiler warnings for devel/pr jobs (`#217 <https://github.com/ros-infrastructure/ros_buildfarm/pull/217>`_)
  * merge branch before building pull request job (`#219 <https://github.com/ros-infrastructure/ros_buildfarm/pull/219>`_)
  * reconfigure release jobs when the rosdistro cache gets an updated manifest (`#239 <https://github.com/ros-infrastructure/ros_buildfarm/pull/239>`_)
  * add support to run devel/pr job with e.g. Travis (`#264 <https://github.com/ros-infrastructure/ros_buildfarm/pull/264>`_)

* Improvements

  * add check if any upstream project is in progress to prevent notification email for jobs known to fail and being retriggered anyway (`#194 <https://github.com/ros-infrastructure/ros_buildfarm/pull/194>`_)
  * add subsections for "build", "build tests" and "run tests" in devel jobs (`#195 <https://github.com/ros-infrastructure/ros_buildfarm/pull/195>`_)
  * add "Queue" view to see all queued builds without the overhead of a job list (`#197 <https://github.com/ros-infrastructure/ros_buildfarm/pull/197>`_)
  * wrapper script for "git clone" to retry in case of network issues (`#201 <https://github.com/ros-infrastructure/ros_buildfarm/pull/201>`_)
  * retry on known apt-get errors when downloading sourcedeb files (`#209 <https://github.com/ros-infrastructure/ros_buildfarm/pull/209>`_)
  * retry when docker fails to pull base image (`#212 <https://github.com/ros-infrastructure/ros_buildfarm/pull/212>`_)
  * use groovy to reconfigure doc views (`#224 <https://github.com/ros-infrastructure/ros_buildfarm/pull/224>`_)
  * add subsection in doc jobs for better outline (`#227 <https://github.com/ros-infrastructure/ros_buildfarm/pull/227>`_)
  * output rsync stats (`#230 <https://github.com/ros-infrastructure/ros_buildfarm/pull/230>`_)
  * always update the depends_on entry (`#231 <https://github.com/ros-infrastructure/ros_buildfarm/pull/231>`_)
  * generate package specific notifications (`#247 <https://github.com/ros-infrastructure/ros_buildfarm/pull/247>`_)
  * allow overriding manual question with '-y' (`#260 <https://github.com/ros-infrastructure/ros_buildfarm/pull/260>`_)
  * disable pager for git log command (`# <https://github.com/ros-infrastructure/ros_buildfarm/pull/263>`_)

* Fixes

  * fix navigation bar in the wiki to list the packages which are part of a meta package (`#193 <https://github.com/ros-infrastructure/ros_buildfarm/pull/193>`_)
  * fix environment for tests in devel and pull request jobs (`#196 <https://github.com/ros-infrastructure/ros_buildfarm/pull/196>`_)
  * fix reconfigure devel views (`#200 <https://github.com/ros-infrastructure/ros_buildfarm/pull/200>`_)
  * catch 'Unable to locate package' apt-get error and retry (`#204 <https://github.com/ros-infrastructure/ros_buildfarm/pull/204>`_)
  * fix test environment for workspaces with only plain CMake packages (`#205 <https://github.com/ros-infrastructure/ros_buildfarm/pull/205>`_)
  * fix unnecessary triggering of devel jobs using Mercurial (`#206 <https://github.com/ros-infrastructure/ros_buildfarm/pull/206>`_)
  * fix special case in doc jobs where metapackage dependencies was None (`#207 <https://github.com/ros-infrastructure/ros_buildfarm/pull/207>`_)
  * remove non-existing job urls in generated manifest.yaml files (`#208 <https://github.com/ros-infrastructure/ros_buildfarm/pull/208>`_)
  * fix groovy script to generate views (`#210 <https://github.com/ros-infrastructure/ros_buildfarm/pull/210>`_)
  * use ccache from source for older distros (`#216 <https://github.com/ros-infrastructure/ros_buildfarm/pull/216>`_, `#241 <https://github.com/ros-infrastructure/ros_buildfarm/pull/241>`_)
  * allow empty package entries (which are not lists) (`#221 <https://github.com/ros-infrastructure/ros_buildfarm/pull/221>`_)
  * fix creating views (`#222 <https://github.com/ros-infrastructure/ros_buildfarm/pull/222>`_)
  * fix catkin doc job (`#228 <https://github.com/ros-infrastructure/ros_buildfarm/pull/228>`_)
  * use same os_codename to generate Dockerfile for dev jobs (`#229 <https://github.com/ros-infrastructure/ros_buildfarm/pull/229>`_)
  * fix apt-get retry logic (`#232 <https://github.com/ros-infrastructure/ros_buildfarm/pull/232>`_)
  * maintain pull request data when reconfiguring job using groovy (`#236 <https://github.com/ros-infrastructure/ros_buildfarm/pull/236>`_)
  * fix devel and doc reconfiguration if cache is behind (`#240 <https://github.com/ros-infrastructure/ros_buildfarm/pull/240>`_)
  * maintain the job order when reconfiguring using Groovy (`#242 <https://github.com/ros-infrastructure/ros_buildfarm/pull/242>`_)
  * always apt-get update in devel jobs (`#244 <https://github.com/ros-infrastructure/ros_buildfarm/pull/244>`_)
  * use build, run and test dependencies for topological order (`#245 <https://github.com/ros-infrastructure/ros_buildfarm/pull/245>`_)
  * rebuild dependency graph after reconfiguring jobs (`#251 <https://github.com/ros-infrastructure/ros_buildfarm/pull/251>`_)
  * fix script generation with Python 2 (`#259 <https://github.com/ros-infrastructure/ros_buildfarm/pull/259>`_)
  * fix wrapper scripts when being installed (`#261 <https://github.com/ros-infrastructure/ros_buildfarm/pull/261>`_)

1.0.0 (2016-02-01)
------------------
* This is the first stable release. Please look at the git commit log for historic information.
