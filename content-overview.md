# sysadmin 2 content overview

## ToC (45 minutes)

## Presentation Flow

* Intro
  * Welcome to SysAdmin 2

* Topic List
  * Packaging: RPMs, Yum, DNF
  * systemd & System Services
  * Virtual Machine Basic Setup

* Packaging: Binary Tarball vs. DNF
  * Story Time: Why do we need packages?
    * User vs Developer
    * Let's install an upgrade vs. Let's deliver an upgrade
    * Let's remove a program!
  * Let's install something we need: meld,
  * DNF Command overview
    * dnf (install remove update)
    * dnf (info history)
    * dnf repoquery (sample: java)
  * Where do packages come from?
    * repolist
    * Alternative repositories
      * install vlc
    * Show /etc/yum.repos.d config files
  * Group packages
    * dnf (grouplist groupinstall)
  * What are packages made up of?
    * RPM file (RPM Package Manager)
    * How do we examine it?
      * rpm (-ql -qpl --provides --requires)
      * rpm (--whatrequires --whatprovides)
    * How do we install or remove it?
      * rpm (-ivh -e)
    * Extract it
      * rpm2cpio | cpio -idmv
  * What if something goes wrong? Workshop
    * dnf check
    * dnf-exercise.sh
    * $ curl <ip-address>:<port>/dnf-exercise.sh | bash
* System daemon
  * When we start up our desktops, what do we expect?
  * Story time: with running services manually (bind for DNS, NetworkManager for networking, firewalld for firewall, sshd for ssh, ...)
    * NetworkManager, sshd, firewalld, pulseaudio
  * Service and System Configuration for Linux distributions
  * init daemon: first daemon to start, last to terminate
  * integrates common services: user logins, system console, device hotplugging, scheduled execution, logging, hostnames and locales
  * three general functions:
    * system and service manager
    * software platform
    * glue between applications and the kernel
  * Let's look at our system services
    * systemctl status
  (httpd)
  * How do we manipulate services?
    * systemctl (start stop enable disable
    * systemctl (reload restart)
  * What does a service look like?
    * systemctl cat
    * systemctl (mask unmask)
    * Reload versus of restart
  * journalctl (-xe)
* Virtual Machines
  * sudo dnf groupinstall "Virtualization"
  * Setup Alpine VM
  * Discuss setup of actual VM
    * Discuss VM workflow
      * SSH into machine
    