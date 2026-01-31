# C-Code Text Editor

A lightweight, terminal-based text editor written in C, inspired by the original Kilo tutorial. This project provides essential text editing capabilities with syntax highlighting, all in a compact and understandable codebase.

## Overview

C-code is a minimal text editor that operates entirely in raw terminal mode, offering a distraction-free editing experience similar to nano or vim's insert mode. Built with simplicity and educational value in mind, the entire editor is contained in a single ~1500 line C file.

## Core Features

### Text Editing
- **Full text editing capabilities**: Insert, delete, and modify text with ease
- **Line operations**: Create, delete, and navigate between lines
- **Cursor navigation**: Arrow keys, Home/End for line navigation, Page Up/Down for scrolling
- **Smart deletion**: Backspace and Delete key support
- **Undo/Redo**: Full undo/redo support with up to 1000 levels (Ctrl-Z/Ctrl-Y)
- **Copy/Cut/Paste**: Line-based clipboard operations (Ctrl-C/Ctrl-X/Ctrl-P)

### File Management
- **Open existing files**: Launch with `./code.exe filename`
- **Save functionality**: Ctrl-S to save changes
- **Save As**: Prompted automatically for new files
- **Unsaved changes protection**: Warning before quitting with unsaved work
- **Dirty flag tracking**: Visual indicator showing when file has been modified

### Syntax Highlighting
- **C/C++ support**: Built-in syntax highlighting for C and C++ files
- **Keyword highlighting**: Two categories of keywords (types and control structures)
- **String literals**: Highlighted with escape sequence support
- **Numbers**: Automatic detection and highlighting
- **Comments**: Both single-line (`//`) and multi-line (`/* */`) comment support
- **Auto-detection**: File extension-based syntax selection

### Search
- **Text search**: Ctrl-F to find text
- **Incremental search**: Results update as you type
- **Navigation**: Use arrow keys to jump between matches
- **Wrap-around**: Search continues from beginning when reaching end
- **Visual highlighting**: Current match highlighted in blue

### User Interface
- **Status bar**: Shows filename, line count, file type, and modification status
- **Message bar**: Context-sensitive messages with 5-second timeout
- **Position indicator**: Current line and total lines displayed
- **Welcome screen**: Version information on startup
- **Line numbers**: Toggleable line numbers in left margin (Ctrl-L to toggle)

## Installation

### Requirements
- POSIX-compliant system (Linux, macOS, BSD)
- GCC compiler or compatible C compiler
- Terminal with ANSI escape sequence support

### Building

```bash
# Clone or download the repository
cd c-code

# Compile the editor
make

# This creates the executable: code.exe
```

Alternatively, compile manually:

```bash
gcc code.c -o code.exe -Wall -Wextra -pedantic -std=c99
```

## Usage

### Starting the Editor

```bash
# Open an existing file
./code.exe myfile.c

# Start with a new file
./code.exe
```

### Key Bindings

| Key | Action |
|-----|--------|
| **Ctrl-S** | Save file |
| **Ctrl-Q** | Quit (prompts if unsaved changes) |
| **Ctrl-F** | Find/Search |
| **Ctrl-L** | Toggle line numbers on/off |
| **Ctrl-Z** | Undo last action |
| **Ctrl-Y** | Redo undone action |
| **Ctrl-C** | Copy current line |
| **Ctrl-X** | Cut current line |
| **Ctrl-P** | Paste clipboard contents |
| **Arrow Keys** | Move cursor |
| **Page Up/Down** | Scroll by page |
| **Home** | Jump to start of line |
| **End** | Jump to end of line |
| **Enter** | Insert newline |
| **Backspace/Delete** | Delete character |
| **Ctrl-H** | Alternative backspace |

### Search Mode

1. Press **Ctrl-F** to enter search mode
2. Type your search query
3. Use **Arrow Up/Down** or **Arrow Left/Right** to navigate between matches
4. Press **Enter** or **ESC** to exit search mode

### Exiting the Editor

1. Press **Ctrl-Q** to quit
2. If you have unsaved changes, you'll be warned
3. Press **Ctrl-Q** three more times to force quit, or **Ctrl-S** to save first

## Features in Development

The project roadmap includes several planned enhancements:

### Version 0.1.0 (High Priority)
- Line numbers in left margin
- Undo/Redo functionality
- Copy/Cut/Paste with clipboard
- Auto-indentation
- Column number in status bar

### Version 0.2.0 (Medium Priority)
- Search and replace
- Go to line command
- Bracket matching
- Additional syntax highlighting (Python, JavaScript, Shell, Markdown)
- Configuration file support
- Word wrap

### Future Versions
- Multiple buffers/tabs
- Split windows
- Mouse support
- UTF-8 support
- Code folding
- Auto-completion

## Project Goals

- **Simplicity**: Keep codebase small and understandable
- **Performance**: Fast startup and responsive editing
- **Portability**: Work across Unix-like systems
- **Extensibility**: Clean architecture for easy feature addition
- **Educational**: Readable code serving as a learning resource

## Current Limitations

- ASCII only (no UTF-8 support yet)
- Tab stops fixed at 8 characters
- No configuration file support
- Single undo level (dirty flag only)

## File Structure

```
c-code/
├── code.c           # Main source file
├── Makefile         # Build configuration
├── README.md        # This file
└── hello.md         # Sample markdown file
```

## Contributing

This project welcomes contributions!

## License

MIT License

## Acknowledgments

Based on the [Kilo text editor tutorial](https://viewsourcecode.org/snaptoken/kilo/) by Salvatore Sanfilippo.
