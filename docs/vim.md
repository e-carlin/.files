# Learn vim

Here is where I am going to keep notes on learning vim \
\
[Another good cheat sheet](http://tnerual.eriogerg.free.fr/vimqrc.html)
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
- comment multiple lines \
  `$ ctl + v` \
  `$ move cursor around text you want` \
  `$ shift + i` \
  `$ type desired text`
  `$ leave insert mode and watch text appear`
- search for text \
  `$ /text-to-search-for` \
  `$ n # move forward in search` \
  `$ N # move backward in search`
- show text in clipboard (registers) \
  `$ :reg`
- paste text from numbered clipboard (register) \
  `$ "<number-from-reg>p`
- delete til the end of the line \
  `$ D`
- delete to start of the line \
  `$ d^`
- delete til character \
  `$ dt<character>`
- delete til character inclusive \
  `$ df<character>`
- delete file \
`$ dG `
- start of line \
`$ 0 `
- end of line \
`$ :%s/foo/bar/g #replaces foo w/ bar globally`
- indent line \
  `$ >>`
- indent multiple lines \
  `$ V` \
  `highlight desired lines by moving around` \
  `$ >>`
- set/move to mark \
  `$ m<lower-case-letter> #Sets a mark` \
  ````$ `<letter> # Moves to the mark````
- re-highlight an area \
  `$ gv`
- join lines together on one line \
  `Highlight desired lines` \
  `$ J`



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
