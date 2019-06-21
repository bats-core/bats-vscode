# Bats language support for VSCode

![Current Version](https://vsmarketplacebadge.apphb.com/version/jetmartin.bats.svg)
![Install Count](https://vsmarketplacebadge.apphb.com/installs-short/jetmartin.bats.svg)

[BATS](https://github.com/bats-core/bats-core) (Bash Automated Testing System) language support for [VSCode](https://code.visualstudio.com/).\
BATS is a test library running in Bash/Shell, created by [@sstephenson](https://github.com/sstephenson).

![Bats overwiew](images/bats.gif)

## Features

The extention will add Bats language support to VSCode.\
The extention also add Bats Snippets.
The extention add highlight syntax for [bats-core](https://github.com/bats-core/bats-core), [bats-support](https://github.com/ztombol/bats-support) & [bats-assert](https://github.com/ztombol/bats-assert)

### Snippets

Type BATS:*snippet* to use snippets. See [BATS REAME.md](https://github.com/sstephenson/bats/blob/master/README.md) for documentation.

* **BATS:env** : Shebang.
* **BATS:test** : Test case.
* **BATS:line** : Test line output.
* **BATS:status** : Test status code.
* **BATS:output** : Test output.
* **BATS:load** : Load common code.
* **BATS:skip** : Skip test.
* **BATS:setup** : Setup function.
* **BATS:teardown** : Teardown function.

## highlight syntax

### Bats-core

See [bats-core](https://github.com/bats-core/bats-core).

* `run`,`load`,`skip`

### Bats-support

See [bats-support](https://github.com/ztombol/bats-support).

* `fail`
* `batslib_err`,`batslib_count_lines`,`batslib_is_single_line`,`batslib_get_max_single_line_key_width`,`batslib_print_kv_single`,`batslib_print_kv_multi`,`batslib_print_kv_single_or_multi`,`batslib_prefix`,`batslib_mark`,`batslib_is_caller`,`batslib_err`,`batslib_decorate`

### Bats-assert

See [bats-assert](https://github.com/ztombol/bats-assert).

* `assert`,`refute`
* `assert_equal`,`assert_success`,`assert_failure`,`assert_output`,`assert_line`
* `refute_output`,`refute_line`

## Color customizations

If you want to change bats colors from sh ones, you can do so in user preferences or workspace settings (`.vscode/settings.json`).

Default display :

![Bats overwiew](images/default_colours.png)

Exemple using bellow `.vscode/settings.json` file :

![Bats overwiew](images/custom_colours.png)

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

## Requirements

No specific requirements to use that extension.

## Installation

1. Install Visual Studio Code 1.23.0 or higher
2. Launch Visual Studio Code
3. From the command palette *ctrl-shift-p* (Windows, Linux) or *cmd-shift-P* (OSX)
4. Select Install Extension
5. Choose extension bats
6. Reload Visual Studio Code

## Extension Settings

That extension do not add any VS Code settings.

## Licence

MIT

## Known Issues

Feel free to report any issues [here](https://github.com/jetmartin/bats/issues).

## Release Notes

See [change log](https://github.com/jetmartin/bats/blob/master/CHANGELOG.md).

## More

[Bats-core](https://github.com/bats-core/bats-core) (2017-*) is former [BATS](https://github.com/sstephenson/bats) (2011-2016).
This extension has been inspired by [sublime-bats](https://github.com/jverdeyen/sublime-bats).

If you like [BATS](https://github.com/sstephenson/bats), you may also like [ShellCheck](https://github.com/koalaman/shellcheck) and the   [vscode-shellcheck extention](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck).
