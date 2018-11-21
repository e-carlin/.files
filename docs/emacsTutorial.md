# Learning Emacs
### screen
- `C-v`	Move forward one screenful
- `M-v`	Move backward one screenful
- `C-l`	Clear screen and redisplay all the text,
		 moving the text around the cursor
		 to the center of the screen.
		 (That's CONTROL-L, not CONTROL-1.)
- `C-l C-l` move text at cursor to top of screen
### document     
- `M-<` Jump to start of doc
- `M->` Jump to end of doc
### chars     
- `C-f`	Move forward a character
-	`C-b`	Move backward a character
### words
-	`M-f`	Move forward a word
-	`M-b`	Move backward a word
### lines
-	`C-n`	Move to next line
-	`C-p`	Move to previous line
-	`C-a`	Move to beginning of line
-	`C-e`	Move to end of line
-	`M-a`	Move back to beginning of sentence
-	`M-e`	Move forward to end of sentence

# meta commands
*** This command is important ***
- `C-g` Stops command that is taking too long or discards numberic arguments to a command

### windows
- `C-x 1` Go to just one window (Kill all other windows)

### delete chars
- `<DEL>` Delete the character just before the cursor
-	`C-d` Delete the next character after the cursor
### kill words
-	`M-<DEL>` Kill the word immediately before the cursor
-	`M-d` Kill the next word after the cursor
### kill lines
-	`C-k` Kill from the cursor position to end of line
-	`M-k` Kill to the end of the current sentence

### delete block
- `C-<SPC>` then move cursor to end of block then `C-w`

### yanking (pasting a cut section)
- `C-y` pastes a cut section back in at the cursor

### Undo / Redo
- `C-/` undo last command
- `C-g C-/` Undos are on a stack so do a no-op (C-g) and then all undos are put on the stack to be undone

### Files
- `	C-x C-f <filename>` finds (or creates a new) a file (you can use `C-g` to cancel the search)
- `C-x C-s` Save the file you are working on

### Buffers
- `C-x C-b` see a list of open buffers
- `C-x b <filename>` goes to a file open in another buffer
- `C-x s` saves some buffers (you are prompted for which ones)

### Extending commands
- `C-x <char>` extends a command with a one char name
- `M-x <name>` extends a command with the full name

### Kill emacs
- `C-x C-x` kills emacs (you are prompted to save unsaved buffers)

### Suspend emacs (in the shell)
- `C-z` suspends emacs and returns you to the shell
- `fg` or `%emacs` returns you to the suspended session

### Autosaving
- `M-X recover-file` Files with # surrounding them are files autosaved by emacs use this command to restor a file to the autosaved version. Go to the normal file then run this command.
- 






