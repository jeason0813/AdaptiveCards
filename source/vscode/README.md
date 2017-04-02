# Adaptive Cards Viewer for Visual Studio Code

[Visual Studio Marketplace](https://marketplace.visualstudio.com/items/tomlm.vscode-AdaptiveCardsviewer)

## Usage 
When you are editing a .json file with a adaptive card $schema property you can view by using **Ctrl+Shift+V A**.

```javascript
{
    "$schema": "https://microsoft.github.io/AdaptiveCards/schemas/adaptive-card.json",
    "type": "AdaptiveCard",
    "version": "1.0",
    "body": [

    ]
}
```


### Options
The following Visual Studio Code setting is available for the AdaptiveCards Viewer.  This can be set in `User Settings` or `Workspace Settings`.

```javascript
{

    // Open or not open the preview screen automatically
    "adaptivecardsviewer.enableautopreview": true,
}
```