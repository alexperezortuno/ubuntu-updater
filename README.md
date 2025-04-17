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

## Ubuntu/Debian Updater 🔹

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
    package:install <pkg>      Install a package
    package:installed          List installed packages
    package:upgrade <pkg>      Upgrade specific package
    package:remove <pkg>       Remove a package
    package:find <pkg>         Search for a package
    package:download <pkg>     Download package source code
    package:dependencies <pkg> Check package dependencies
    package:description <pkg>  Show package description
    package:descriptions       List all packages with descriptions

    🔄 PPA Management
    ppa:list          List configured PPAs
    ppa:install <ppa> Add a PPA
    ppa:remove <ppa>  Remove a PPA

    💾 Memory Management
    memory:info     Show memory information
    freemem         Free up memory
    killport <port> Kill process using a port

    💡 Tip: Replace <pkg> with package name and <ppa> with PPA path
