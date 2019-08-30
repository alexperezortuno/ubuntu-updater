# Ubuntu updater  
This script compiles a list of useful commands for Ubuntu, this install, remove, update and upgrade packages and other things  

## Install
```
$ sudo chmod +x install
$ ./install
```

## Running commands
```
$ updater <command-option>
```

## List of options
| Option | Description |
|--|--|  
| -- | Without parameters Update list of packages, upgrade and clean cache  |
| list | List available commands |
| clean | Used to free up the disk space by cleaning retrieved (downloaded) .deb files (packages) from the local repository |
| package:install | Install package in the current machine |
| package:list | List all installed packages in the current machine |
| package:upgrade | Only upgrade specific package in the current machine |
| package:remove | Remove specific package |
| package:find |  Find specific package |
| package:download | To download only source code of particular package |
| package:dependencies | Check the dependencies for particular software packages. whether those dependencies packages are installed or not |
| package:description | Get description by a specific package |
| package:descriptions | List all packages with your description |
| cache:stats | Display overall statistics about the cache |
|--|--|              
