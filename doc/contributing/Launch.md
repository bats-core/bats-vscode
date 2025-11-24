# Launch VScode with your custom Extension

Refer to VSCode [documentation](https://code.visualstudio.com/api/working-with-extensions/testing-extension) for further details.

## Launch the extension

A `.vscode/launch.json` file is already configured to launch the extension inside a new window.

After properly manage [installation](./install.md), Choose the one of the bellow method who suits you the most.

### In the window

* Click on the `run & debug` tab on the left.
* On top of the left panel, select `Extension` in the dropdown (default value).
* Click on the play icon.

### On the menu

* Select `Run` > `Start Debugging`

### Press F5

## Interact with the debug window

This will open a debug VSCode window with the plugin activated.

To exit it you can close the window or on the main VSCode window, click the stop icon on the appeared overlay.

You can use this overlay (on the main window) to rebuild/refresh the test window without stopping and relaunching.
