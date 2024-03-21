# Test your contribution

## how to test the syntax and snippets ?

Yet not automation has een provided on the current module.

We recommend installing custom colorization as explained in the module [README.md](../../README.md) or bellow :

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

You can now go to the `test` folder and check if the module behave as expected.

> Do not forget to manage proper non-regression testing and not only testing your personal updates.

## ES lint

According to the few JS code on that specific module, the ES lint config and tasks have not been configured yet.

## Markdown lint

There is a `.markdownlint.json` file to preconfigure Lint your docs.
The MDlint task has not been set yet.

If you use the VSCode plugin it will be managed while you're typing.
Otherwise, you can use the terminal to do it manually.
