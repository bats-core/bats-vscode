# BATS (Bash Automated Testing System) for VSCode

[![Current Version](https://img.shields.io/visual-studio-marketplace/v/jetmartin.bats.svg?color=brightgreen&label=Visual%20Studio%20Marketplace&logo=visual-studio-code&logoColor=blue&style=flat)
![Install Count](https://vsmarketplacebadge.apphb.com/installs-short/jetmartin.bats.svg)
![downloads Count](https://vsmarketplacebadge.apphb.com/downloads-short/jetmartin.bats.svg)][marketplace]
 [![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/jetmartin/bats.svg?color=emerald&label=release&logoColor=white&logo=github&labelColor=grey)][github]
[![license](https://img.shields.io/badge/license-MIT-brightgreen.svg)][MIT]

<!-- ![Current Version](https://vsmarketplacebadge.apphb.com/version/jetmartin.bats.svg) -->
<!-- ![Install Count](https://img.shields.io/visual-studio-marketplace/i/jetmartin.bats.svg?color=blueviolet&style=flat) -->
<!-- ![downloads Count](https://img.shields.io/visual-studio-marketplace/d/jetmartin.bats.svg?color=blueviolet&style=flat) -->

This extension adds language support for the [Bats] (Bash Automated Testing System) testing framework to [VS Code][vscode].

> Bats is a [TAP]-compliant testing framework for Bash. It provides a simple way to verify that the UNIX programs you write behave as expected.
> A **`.bats`** test file is a Bash script with special syntax for defining test cases. Under the hood, each test case is just a function with a description.

## 🎉 Features

![Bats overview](images/bats.gif)

- [x] **Bats** language support for VSCode
- [x] Code Snippets for quick coding
- [x] Syntax highlighting for core functions
- [x] Syntax highlighting for community modules

💡 See [bats-core README][bats-readme] for documentation on how to use [Bats].

[<img alt="Bats logo" align="right" src="icon.png">][Bats]

### 🦇 Bats Community modules

[badge-core]: <https://img.shields.io/github/package-json/v/bats-core/bats-core.svg?style=flat-square&labelColor=olivedrab&color=grey&label=bats-core>
[badge-assert]: <https://img.shields.io/github/package-json/v/jasonkarns/bats-assert-1.svg?label=bats-assert&style=flat-square&labelColor=royalblue&color=grey>
[badge-mock]: <https://img.shields.io/github/release/lox/bats-mock.svg?style=flat-square&color=grey&labelColor=orchid&label=bats-mock>
[badge-support]: <https://img.shields.io/github/package-json/v/jasonkarns/bats-support.svg?style=flat-square&color=grey&labelColor=sienna&label=bats-support>
[badge-file]: <https://img.shields.io/github/package-json/v/ztombol/bats-file.svg?style=flat-square&color=grey&labelColor=indianred&label=bats-file>
[badge-file-silver]:<https://img.shields.io/github/package-json/v/ztombol/bats-file.svg?style=flat-square&color=silver&labelColor=darkseagreen&label=bats-file>

<!-- next color rebeccapurple, thistle, darkcyan, sandybrown, darkseagreen -->

[![bats-core project][badge-core]][bats-core-l]
[![bats-assert project][badge-assert]][bats-assert-l]
[![bats-mock project][badge-mock]][bats-mock-l]
[![bats-support project][badge-support]][bats-support-l]
[![bats-file project][badge-file-silver]][bats-file-l]

> [Bash Automated Testing System (2018)][bats-core] is a [community-maintained][@bats-core] Bats project.

### 📝Snippets

Type `BATS:*snippet*` to use snippets.

[![bats-core snippets][badge-core]][bats-core-l]

- [x] **BATS:env**      : shebang.
- [x] **BATS:setup**    : Setup function.
- [x] **BATS:teardown** : Teardown function.
- [x] **BATS:load**     : Load common code.
- [x] **BATS:test**     : Test case.
- [x] **BATS:status**   : Test status code.
- [x] **BATS:output**   : Test output.
- [x] **BATS:line**     : Test line output.
- [x] **BATS:skip**     : Skip test.

[![bats-assert snippets][badge-assert]][bats-assert-l] 🚧

- [x] **BATS:assert**
- [x] **BATS:assert_output**
- [x] **BATS:assert_line**
- [x] **BATS:assert_success**
- [x] **BATS:assert_failure**
- [x] **BATS:assert_equal**
- [x] **BATS:refute**
- [x] **BATS:refute_output**
- [x] **BATS:refute_line**

### :flashlight: Syntax highlighting

These modules have syntax highlighting support

- [x] <https://github.com/bats-core/bats-core>
- [x] <https://github.com/jasonkarns/bats-assert-1>
- [x] <https://github.com/jasonkarns/bats-support>
- [ ] <https://github.com/ztombol/bats-file> 🚧
- [x] <https://github.com/lox/bats-mock>
<!--  <https://github.com/grayhemp/bats-mock> :thinking:-->

#### 🎨 Color customizations

If you want `Bats` syntax highlighting to look different to `shellscript` syntax, you can change your user preferences or workspace settings (`.vscode/settings.json`).

Default theme, for `shellscript`:

![Bats overview](images/default_colours.png)

Example after saving the `editor.tokenColorCustomizations` settings below.

![Bats overview](images/custom_colours.png)

Add this to your VS Code settings.

```json
{
    "editor.tokenColorCustomizations": {
        "textMateRules": [
            {
                "scope": "keyword.control.bats",
                "settings": {
                    "foreground": "#9f1fd1",
                    "fontStyle": "italic"
                }
            },
            {
                "scope": "support.function.bats",
                "settings": {
                    "foreground": "#d41515",
                    "fontStyle": "italic"
                }
            },
            {
                "scope": "support.variable.bats",
                "settings": {
                    "foreground": "#329432",
                    "fontStyle": "italic"
                }
            }
        ]
    }
}
```

[<img alt="Bats logo" align="right" src="icon.png">][Bats]

## Installation

### Release Notes

See [Changelog].

### Extension marketplace

This extension is published in the [VSCode marketplace][marketplace].

 1. Run [Install Extensions] from the [Command Palette]
 2. Search and choose  [**`bats`**][marketplace].

## ❕Known Issues

[![GitHub issues](https://img.shields.io/github/issues/jetmartin/bats.svg?color=tomato)][issues]

Feel free to report any [issues].

## :scroll: License

[MIT]

## Related Projects

This extension has been inspired by [sublime-bats].

### Bats

> © 2017-2018 [bats-core organization][@bats-core]\
> © 2011-2016 [Sam Stephenson][@sstephenson]

[<img alt="Bats logo" align="right" src="https://img.shields.io/github/package-json/v/bats-core/bats-core.svg?label=bats-core&labelColor=lightsteelblue&style=popout-square&color=grey&logoColor=white&logoWidth=28&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAInAAACJwG+ElQIAAACk0lEQVRIibWWz0tUURTHP9/3S8ecmSzDSNKF9IMSxTaSFeUqWrQIIdq0riDoD4iClkHQPmiRSFuRFloQKkJCEGIlFbWqRWWZOSr+mnmnhU8Z36gzWn3hwjv3nu/3nHveu+c+mRn/E04pTpIUtyW52wogKS2pOjbdJOm6pB2SKoAbQGOMVyUpEdfz8hx8oA1oBwJJ3cComS0Cv4BWoAHIAnuArojnAs3AJWBG0iAwHPFQNFqBi0BNLIFZ4BPwBjgeBQD4DDwBDgAtUcB8jAOdZjaiiHgNKKmmW0AIPHDMbDjK5l+j38yGVt7BAMvlqANO/aXwO+A98AJA+edAkgOcBabxKtrJzo9D2ATs3EDsN7iv8LyjZBf6VpI1s6VVzfhBk3alKbcO/FyPZTIT0ad3B6iNif8CbpvZpKQkbuoCudxTs5nv+U6FBy2wMzTUdlkmMxHNNAOvgSFgcjlrBoBBYD8AydoAh9346ijQM7M1Azd5fo0NXt5zE3Asz3YJ0h34qSGC1Fv81P24nlcQ0XMVSyCbZ44BBqDy1EGC1C2wFtYwYnIbLxXCzHKSKhSkr4AuI4JinC0FkOQRpDvBDpfKKambriJRtQ/sCMYsjtMNmxVnOwHMlgWlfsyqid7HZigsUTZXyg00AjYFOgmWv4sCbuEOPGdeqox31ThuEqoeQtt7KDOHPzsX6Y8WD7Aw9ZxAJ5Soao9ax3rowlUNZTPzP79gLFX6hHrE0vTjuGNBq1hdSFTVkwtP4zBs81MfV+fCsBeUxSyLCDC9pNy/a5kfH9bVKXbpy0+14aiORbeXBGlyuT4gRPoKdo+FzDPbRKRoAABJZQTJc+D4WHgV1MNS4qHZt9mi3K38tkiNAYzJzBZK5fwBZY8K2Apsw+YAAAAASUVORK5CYII=">][Bats]

[Bash Automated Testing System (2018)][bats-core] is a community-maintained [Bats][bats-core] project.

### shellcheck

If you like [Bats], you may also like [ShellCheck][shellcheck] and the [VSCode extension][vscode-shellcheck]

<!-- Links -->

[Bats]: <https://github.com/bats-core/bats-core>
[sBats]: <https://github.com/sstephenson/bats>
[@sstephenson]: <https://github.com/sstephenson>
[@bats-core]: <https://github.com/bats-core>
[TAP]: <https://testanything.org/>
[Bash]: <https://www.gnu.org/software/bash/>
[bats-readme]: <https://github.com/bats-core/bats-core/blob/master/README.md>

[bats-core]: <https://github.com/bats-core/bats-core>
[bats-assert]: <https://github.com/jasonkarns/bats-assert-1>
[bats-support]: <https://github.com/jasonkarns/bats-support>
[bats-file]: <https://github.com/ztombol/bats-file>
[bats-mock]: <https://github.com/lox/bats-mock>
[grayhemp-mock]: <https://github.com/grayhemp/bats-mock>

[bats-core-l]: <https://github.com/bats-core/bats-core/releases/latest>
[bats-assert-l]: <https://github.com/jasonkarns/bats-assert-1/releases/latest>
[bats-support-l]: <https://github.com/jasonkarns/bats-support/releases/latest>
[bats-file-l]: <https://github.com/ztombol/bats-file/releases/latest>
[bats-mock-l]: <https://github.com/lox/bats-mock/releases/latest>

[marketplace]: <https://marketplace.visualstudio.com/items?itemName=jetmartin.bats>
[github]: <https://github.com/jetmartin/bats>
[issues]: <https://github.com/jetmartin/bats/issues>
[Changelog]: <https://github.com/jetmartin/bats/blob/master/CHANGELOG.md>
[MIT]: <https://github.com/jetmartin/bats/blob/master/LICENSE>
[humanstxt]: <https://github.com/jetmartin/bats/blob/master/humans.txt>

[command palette]: <https://code.visualstudio.com/Docs/editor/codebasics#_command-palette>
[install extensions]: <https://code.visualstudio.com/docs/editor/extension-gallery#_install-an-extension>
[Visual Studio Code]: <https://code.visualstudio.com/>
[vscode]: <https://code.visualstudio.com/>
[shellcheck]: <https://shellcheck.net/>
[vscode-shellcheck]: <https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck>
[sublime-bats]: <https://github.com/jverdeyen/sublime-bats>

