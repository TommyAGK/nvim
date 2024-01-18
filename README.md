# Comfy Neovim

This is a setup of neovim i find comfy to work in.
There are parts collected from various other users, inspired by or simply self-invented

I thank every single plugin writer for their efforts, without you. I would not be comfy.


# Hotkey overview!
Common things

* Leader = spacebar

* leader pv = vim built in file explorer

* ctrl-c = escape while in insert mode 

* leader x = makes file executable by calling a shell command silently
           this sets the +x chmod flag on the open file

* leader leader = sources the current open file

## Copy paste things

* leader p 
works in select mode, deletes the selected stuff without putting in a register
and pasted what you got in your paste register

* leader y
works in normal and visual mode, yanks to "+y register

* leader Y
works in normal and visual, yanks to "+Y register

## Formatting stuff

* leader f
Uses the language server to format according to the language

## harpoon keybinds: 
### normal mode:

* leader a = append current file to harpoon list, 
* CTRL-e = open harpoon list via telescope plugin
* CTRL-h = quick select element 1 in the harpoon list while visible 
* CTRL-t = quick select element 2 in the harpoon list while visible
* CTRL-n = quick select element 3 in the harpoon list while visible
* CTRL-s = quick select element 4 in the harpoon list while visible

These are when you dont have the CTRL-e window open, quick jumps!
* CTRL-SHIFT-P = Previous buffer in the list
* CTRL-SHIFT-N = Next buffer in the list 

## telescope keybinds

### normal:
* leader pf = find files
* ctrl-p = find files in current git repo
* leader ps = grep for word in files

## undo
* leader u = opens up the UI for undotree, use window motion to interact

## fugitive (git stuff)
* leader gs = git, i dont really use this much.

## Language server stuff
these only work if a LSP is loaded, 
ie, you have a file open in a language you have an LSP for

### normal: 

* gd = go to definition
* K = open manual entry for element under cursor

* leader vws = workspace symbols
* leader vd = vim diagnostics
* [d = next diagnostic element
* ]d = previous diagnostic element
* leader vca = code action
* leader vrr = code references
* leader vrn = code rneame

### insert:
* CTRL-h = signature help
* CTRL-p = select previous cmp mapping
* CTRL-n = select next cmp mapping
* CTRL-y = accept currently selected cmp mapping

## Trouble (bugfixing setup)
### normal:
* leader xq = opens up the trouble window (toggle)w


## Zen mode
### normal:
* leader zz = 90 width zen mode (toggle), numbers.
* leader zZ = 80 widht zen mode (toggle), no numbers


