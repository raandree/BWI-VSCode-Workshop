# VSCode Configuration Files Explanation

This document explains the purpose and contents of the three configuration files in the `.vscode` folder.

## launch.json

The `launch.json` file defines debugging configurations for VS Code. It contains three PowerShell launch configurations:

1. **PowerShell Launch SomeScript1**
   - Launches the specific script `SomeScript1.ps1` from the source folder
   - Uses the current working directory as context

2. **PowerShell Interactive Session**
   - Starts a general PowerShell interactive debugging session
   - Useful for ad-hoc debugging and testing

3. **PowerShell: Launch Current File**
   - Launches whatever file is currently open in the editor
   - Allows passing additional arguments if needed

## settings.json

The `settings.json` file contains workspace-specific VS Code settings. Key configurations include:

1. **PowerShell Formatting Rules**
   - Detailed code formatting preferences for PowerShell
   - Controls brace placement, whitespace, and indentation
   - Uses custom preset with pipeline indentation
   - Enables script analysis with custom settings

2. **File Management**
   - Automatically trims trailing whitespace
   - Ensures final newlines in files
   - Associates `.ps1xml` files with XML editing

3. **YAML Configuration**
   - Uses single quotes
   - Enables bracket spacing

4. **Custom Dictionary**
   - Defines workspace-specific spellings for the spell checker
   - Includes PowerShell-specific terms and project-related words

5. **Markdown Settings**
   - Disables trailing whitespace trimming for markdown files
   - Uses UTF-8 encoding

6. **Editor Customization**
   - Custom colors for line highlighting
   - Specific background and border colors for better visibility

7. **Favorites**
   - Bookmarks two PowerShell scripts for quick access:
     - `SomeScript3.ps1`
     - `SomeScript1.ps1`

## tasks.json

The `tasks.json` file defines custom tasks that can be run from VS Code. Currently, it has:

1. **Echo Task**
   - A simple shell task that outputs "Hello"
   - Serves as a basic example of task configuration
   - Version 2.0.0 of the tasks format
