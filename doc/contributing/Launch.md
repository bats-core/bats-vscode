# Launch VScode with your custom Extention

Reffer to VSCode [documentation](https://code.visualstudio.com/api/working-with-extensions/testing-extension) for further details.

## Launch the extention

A `.vscode/launch.json` file is already configured to launches the extension inside a new window.

After properly manage [installation](./install.md), Choose the one of the bellow methode who suits you the most.

### In the window

* Click on the `run & debug` tab on the left.
* On top of the left pannel, select `Extention` in the dropdown (default value).
* Click on the play icon.

### On the menu

* Select `Run` > `Start Debugging`

### Press F5

## Interract with the debug window

This will open a bedug VSCode window with the pluggin activated.

To exit it you can close the window or on the main VSCode window, click on ths stop icon on the appeared overlay.

You can use this overlay (on the main window) to rebuild/refresh the test window without stoping and relaunching.
