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
  }
```
