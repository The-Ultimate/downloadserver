# Description
The Ultimate Download Server a collection of software which provides you the possibility to fully automated download films, tv shows, music, etc. The big advance of The Ultimate Download Server is that all software will be installed and configured for you.

## What does it include?

* A handy portal to access all the components
* Sickrage
* CouchPotato
* LazyLibrarian
* Headphones
* Sabnzbd
* rTorrent
* Spotweb

# Getting Started
## pre-Requirements
* Git (https://github.com/)
* Docker (https://www.docker.com/products/overview)
* Docker Compose (https://docs.docker.com/compose/install/)

## Installation

1. `git clone https://github.com/The-Ultimate/downloadserver.git`
2. Edit **configure.env** with your favorite text editor and set the correct path to your media files and configure news server credentials
3. Save and exit the editor
4. `./downloadserver_<platform>.sh`

## Usage

1. Start your favorite browser and hit: **http://<dockerhost>** to start the portal

## Clean installation
### Linux

1. Install git (`sudo yum -y install git` (Fedora, CentOS, Redhat) / `sudo apt-get -y install git` (Ubuntu, Debian))
2. Install Docker (https://docs.docker.com/engine/installation/linux/)
3. Install Docker Compose (https://docs.docker.com/compose/install/)
4. Change directory to location where you want to checkout the downloadserver source
5. `git clone https://github.com/The-Ultimate/downloadserver.git`
6. `cd downloadserver`
7. Edit **configure.env** with your favorite text editor and set the correct path to your media files and configure news server credentials
8. Save and exit the editor
9. `./downloadserver_linux.sh`

### MacOS

1. Install **xcode** from the AppStore to get **git** on your system
2. Download Docker (https://download.docker.com/mac/stable/Docker.dmg)
3. Install Docker
4. Change directory to location where you want to checkout the downloadserver source
5. `git clone https://github.com/The-Ultimate/downloadserver.git`
6. `cd downloadserver`
7. Edit **configure.env** with your favorite text editor and set the correct path to your media files and configure news server credentials
8. Save and exit the editor
9. `./downloadserver_macos.sh`

### Windows

**TBD**

## FAQ
Q. **What is the default user/pass for _Spotweb_**

A. U: admin / P: bewtops


Q. **Why is Windows not (yet) supported?**

A. It's Windows

# Used sources

* **CouchPotato:** https://github.com/RuudBurger/CouchPotatoServer.git
* **Headphones:** https://github.com/rembo10/headphones.git
* **LazyLibrarian:** https://github.com/DobyTang/LazyLibrarian.git
* **rTorrent:** Installed via Yum from **epel-release** repository
* **Sabnzbd:** https://github.com/sabnzbd/sabnzbd
* **Sickrage:** https://github.com/SickRage/SickRage.git
* **Spotweb:** https://github.com/spotweb/spotweb.git

# Getting help

* Issues (https://github.com/The-Ultimate/downloadserver/issues)
* Trello (https://trello.com/b/DzAYSZgb)
* Gitter (Chat) (https://gitter.im/The-Ultimate/Lobby)

# Reporting bugs & contributing

* Want to report a bug or request a feature? Please open [an issue](https://github.com/The-Ultimate/downloadserver/issues/new).
* Want to help us build **_The Ultimate Download Server_**? Follow our [contribution guidelines](https://github.com/The-Ultimate/downloadserver/CONTRIBUTING) to build it locally and make a pull request.

# Roadmap

* See Trello board (https://trello.com/b/DzAYSZgb)

# Special thanks
Wouter Oet (https://github.com/WouterOet) for his Docker knowledge and beer talk

Jeroen Geusebroek (https://github.com/jgeusebroek) for his projects I used for examples
