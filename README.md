# GLmod-IgnoreFile
![GitHub](https://img.shields.io/github/license/qwertycxz/GLmod-IgnoreFile)
![GitHub branch checks state](https://img.shields.io/github/checks-status/qwertycxz/GLmod-IgnoreFile/main)
![GitHub top language](https://img.shields.io/github/languages/top/qwertycxz/GLmod-IgnoreFile)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/qwertycxz/GLmod-IgnoreFile)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/qwertycxz/GLmod-IgnoreFile)
[![Steam File Size](https://img.shields.io/steam/size/3460213396?label=steam%20file%20size)](https://steamcommunity.com/workshop/filedetails/?id=3460213396)
![GitHub issues](https://img.shields.io/github/issues/qwertycxz/GLmod-IgnoreFile)
![GitHub pull requests](https://img.shields.io/github/issues-pr/qwertycxz/GLmod-IgnoreFile)
[![Steam Views](https://img.shields.io/steam/views/3460213396)](https://steamcommunity.com/workshop/filedetails/?id=3460213396)
[![Steam Downloads](https://img.shields.io/steam/downloads/3460213396)](https://steamcommunity.com/workshop/filedetails/?id=3460213396)
[![Steam Subscriptions](https://img.shields.io/steam/subscriptions/3460213396)](https://steamcommunity.com/workshop/filedetails/?id=3460213396)
[![Steam Favorites](https://img.shields.io/steam/favorites/3460213396)](https://steamcommunity.com/workshop/filedetails/?id=3460213396)
![GitHub Sponsors](https://img.shields.io/github/sponsors/qwertycxz)
![GitHub last commit](https://img.shields.io/github/last-commit/qwertycxz/GLmod-IgnoreFile)
[![Steam Update Date](https://img.shields.io/steam/update-date/3460213396)](https://steamcommunity.com/workshop/filedetails/?id=3460213396)

A [Griftlands](https://store.steampowered.com/app/601840) mod.

When you are uploading a mod to Steam Workshop, you may want to ignore some files instead of uploading `.git` directory, etc. This mod will help you to ignore files when uploading through a `.workshopignore` file.

**Notice**: This mod is still in development, and may not work as expected. Please do not put any private information in the mod files.

**Another notice**: This mod is only tested on Windows. If you are using Linux or MacOS, please let me know if it works for you.
## Install
### Steam Workshop (Recommended)
Subscribe the mod in [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3460213396), and it will be updated automatically.
### Manually
Follow the [instructions](https://forums.kleientertainment.com/forums/topic/116914-early-mod-support).
1. Go to `%USERPROFILE%/AppData/Roaming/Klei/Griftlands` or `%USERPROFILE%/AppData/Roaming/Klei/Griftlands_testing` on your computer.
2. Go to the sub-directory where there is `saves` directory and `settings.ini` file.
3. Go to `mods` directory, create one if it does not exist.
4. Clone this repository at `mods` directory.
## Usage
After installing the mod, you can create a `.workshopignore` file in the mod root directory. The format is same as `.gitignore`.
### How does it work?
1. The mod will read the `.workshopignore` file in the mod root directory. If the file does not exist, it will upload the mod without anything change.
2. When you upload the mod, the mod will copy the files and directories that are not matched by the patterns in the `.workshopignore` file to `$TEMP`. This is done by `git ls-files`.
3. The mod will then upload the copied files and directories to Steam Workshop.
## Changelog
2025/4/7: Upload the mod to Github.
## Contributor
[@qwertycxz](https://github.com/qwertycxz)
## How could I contribute?
[Issue](https://github.com/qwertycxz/GLmod-IgnoreFile/issues/new) and [Pull-requests](https://github.com/qwertycxz/GLmod-IgnoreFile/compare) are both welcomed.
## License
[Apache 2.0](LICENSE) © qwertycxz
