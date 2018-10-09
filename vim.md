# Learn vim

Here is where I am going to keep notes on learning vim

- Enter normal mode (this is a custom mapping)\
  `$ jj`
- Scroll up \
  `$ Ctl+e`
- Scroll down \
  `$ Ctl+y`
- Move forward word \
  `$ w`
- move to end of word \
  `$ e`
- Move backward word \
  `$ b`
- delete word\
  `$ dw`
- delete word back \
  `$ db`
- delete word to end \
  `$ de`
- delete line \
  `$ dd`
- undo \
  `$ u`
- redo \
  `$ ctl + r`
- delete all in quote \
  `$ da"`
- delete all in between quotes \
  `$ di"`
- comment multiple lines
  `$ ctl + v` \
  `$ move cursor around text you want` \
  `$ shift + i` \
  `$ type desired text`
  `$ leave insert mode and watch text appear`

## My vscode vim settings

```
"vim.insertModeKeyBindings": [
    {
      "before": ["j", "j"],
      "after": ["<Esc>"]
    }
  ],
  "[markdown]": {
    "editor.quickSuggestions": true
  },
  "vim.handleKeys": {
    "<C-n>": false
  },
  "vim.useSystemClipboard": "true"
```
