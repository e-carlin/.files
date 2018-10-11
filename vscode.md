# Learn vscode

Here is where I am going to keep notes on learning vscode

- Move cursor to file explorer \
  `$ cmd + shft + e`
- Open selected file \
  `$ cmd +↓`
- Move file window to right or left pane \
  `$ cmd + ctl + ← || →`


## Settings
```
{
  "editor.rulers": [80],
  "editor.detectIndentation": false,
  "editor.tabSize": 2,
  "files.insertFinalNewline": true,
  "files.trimTrailingWhitespace": true,
  "update.channel": "none",
"typescript.preferences.quoteStyle": "single",
  "typescript.tsdk": "/google/src/head/depot/google3/third_party/javascript/node_modules/typescript/stable/lib",
  "typescript.format.insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces": false,
  "[typescript]": {
    "editor.formatOnSave": true
  },
  "tslint.configFile": "/google/data/ro/teams/typescript/tslint/node_modules/google.tslint.json",
  "tslint.nodePath": "/google/data/ro/teams/typescript/tslint/node_modules",

  "clang-format.fallbackStyle": "google",
  "python.linting.pylintPath": "/usr/bin/gpylint",
  "files.associations": {
    "BUILD": "bazel",
    "METADATA": "bazel",
    "WORKSPACE": "bazel"
  },
  "[bazel]": {
    "editor.formatOnSave": true
  },
  "window.zoomLevel": 1,
  "[javascript]": {
    "editor.formatOnSave": true
  },
  "vim.useSystemClipboard": true,
  "vim.insertModeKeyBindings": [
    {
      "before": ["j", "j"],
      "after": ["<Esc>"]
    }
  ],
  "vim.handleKeys": {
    "<C-n>": false,
    "<C-f>": false,
    "<C-c": false,
    "<C-w>": false,
  },
  "prettier.singleQuote": true,
  "prettier.trailingComma": "es5"

}
```

## VSCode Keybindings
```
// Place your key bindings in this file to overwrite the defaults
[
  {
    "key": "shift+alt+down",
    "command": "editor.action.copyLinesDownAction",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+shift+alt+down",
    "command": "-editor.action.copyLinesDownAction",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "shift+alt+up",
    "command": "editor.action.copyLinesUpAction",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+shift+alt+up",
    "command": "-editor.action.copyLinesUpAction",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+shift+w",
    "command": "workbench.action.closeWindow",
    "when": "!editorIsOpen && !multipleEditorGroups"
  },
  {
    "key": "ctrl+w",
    "command": "-workbench.action.closeWindow",
    "when": "!editorIsOpen && !multipleEditorGroups"
  },
  {
    "key": "ctrl+shift+w",
    "command": "-workbench.action.closeWindow"
  },
  {
    "key": "shift+space",
    "command": "workbench.files.action.focusFilesExplorer"
  }
]
```
