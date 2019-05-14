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
    * Shared Libraries
    * User vs Developer
      * Let's install an upgrade vs. Let's deliver an upgrade
    * Let's remove a program!
  * Let's install something we need: meld, origin-clients
  * DNF Quick Command overview
    * dnf (install remove update)
    * dnf (info history)
  * Where do packages come from?
    * repolist
    * Alternative repositories
      * install vlc
    * Show /etc/yum.repos.d config files
  * Group packages
    * dnf (grouplist groupinstall)
  * What are packages made up of?
    * RPM file (RPM Package Manager)
    * Extract it
      * rpm2cpio | cpio -idmv
    * Which package owns this file?
      * dnf provides
      * rpm (-qf)
    * How else can we examine it? How are dependencies expressed?
      * rpm (-ql -qpl --provides --requires)
      * rpm (--whatrequires --whatprovides)
      * dnf repoquery (sample: java)
    * How else can we install or remove it?
      * rpm (-ivh -e)
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
  * Go through sample setup of local ISO (RHEL/Fedora) 
    * Discuss VM workflow
      * SSH into machine
      * Using the virt-manager GUI
  * Go through sample setup of QEMU image