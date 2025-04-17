# Ubuntu updater

This script compiles a list of useful commands for Ubuntu, this install, remove, update and upgrade packages and other
things

## Install

```
$ sudo chmod +x install
$ ./install
```

## Running commands

```
$ updater -h
```

## 🔹 Ubuntu/Debian Updater 🔹
    Automates system updates, upgrades, and cleanup tasks.

    📌 Usage:
      updater [OPTION]

    🛠️ Options:
      -h, --help             Show this help message.
      -v, --version          Show script version.

    🔧 System Maintenance
    (no args)   Update, upgrade and clean all

    📚 Available options

    clean       Clean downloaded .deb packages from cache
    cache:stats Show cache statistics

    📦 Package Management
    pkg:install [PACKAGE]      Install a package
    pkg:installed              List installed packages
    pkg:upgrade [PACKAGE]      Upgrade specific package
    pkg:remove [PACKAGE]       Remove a package
    pkg:find [PACKAGE]         Search for a package
    pkg:download [PACKAGE]     Download package source code
    pkg:dependencies [PACKAGE] Check package dependencies
    pkg:description [PACKAGE]  Show package description
    pkg:descriptions           List all packages with descriptions

    🔄 PPA Management
    ppa:list          List configured PPAs
    ppa:install <ppa> Add a PPA
    ppa:remove <ppa>  Remove a PPA

    💾 Memory Management
    freemem         Free up memory

    📊 Monitoring
    sys-info        Show system information
    disk-usage      Show disk usage by partition
    memory-info     Show detailed memory usage

    🛡️ Security
    ufw-status       Show UFW status
    ports-list       List open ports and associated services
    check-updates    Check for security updates
    killport <port>  Kill process using a port

    ⚙️ Services
    service-list          List active services
    service-restart <srv> Restart a service

    💡 Tip: Replace [PACKAGE] with package name and <ppa> with PPA path
