- [1. VSCode](#1-vscode)
  - [1.1. Installation and other useful tools](#11-installation-and-other-useful-tools)
  - [1.2. Markdown](#12-markdown)
  - [1.3. Extensions](#13-extensions)
  - [1.4. The .vscode folder for Visual Studio Code Settings](#14-the-vscode-folder-for-visual-studio-code-settings)
    - [1.4.1. launch.json](#141-launchjson)
    - [1.4.2. settings.json](#142-settingsjson)
    - [1.4.3. tasks.json](#143-tasksjson)
- [2. Git](#2-git)
  - [2.1. Using Git Locally](#21-using-git-locally)
- [3. Lab and Test Environments with AutomatedLab](#3-lab-and-test-environments-with-automatedlab)
  - [3.1. Benefits of AutomatedLab](#31-benefits-of-automatedlab)
  - [3.2. Importance of Deleting and Redeploying Labs](#32-importance-of-deleting-and-redeploying-labs)
  - [3.3. Sample Automated Lab Scripts](#33-sample-automated-lab-scripts)
- [4. PowerShell Modules](#4-powershell-modules)
  - [4.1. Module Distribution using PowerShell Remoting](#41-module-distribution-using-powershell-remoting)
  - [4.2. NuGet Feeds](#42-nuget-feeds)
  - [4.3. PowerShell Training Repository](#43-powershell-training-repository)
- [5. Code Snippets](#5-code-snippets)
  - [5.1. Why Code Snippets are Helpful](#51-why-code-snippets-are-helpful)
  - [5.2. Using and Customizing Code Snippets](#52-using-and-customizing-code-snippets)
  - [5.3. Sample Help Snippet](#53-sample-help-snippet)
  - [5.4. Helpful Links](#54-helpful-links)
- [6. PowerShell Security](#6-powershell-security)

# 1. VSCode

## 1.1. Installation and other useful tools

- [VSCode](https://code.visualstudio.com/download)
- [Git](https://git-scm.com/downloads)
- [PowerShell 7](https://github.com/PowerShell/PowerShell/releases)

## 1.2. Markdown

Markdown is a lightweight markup language that is easy to read and write. It allows you to format text using plain text syntax, making it ideal for creating documentation, README files, and writing for the web. Additionally, Markdown can be converted to HTML, making it versatile for various applications.

Here are some of the best websites with tutorials about Markdown:

- [Markdown Guide](https://www.markdownguide.org)
- [GitHub Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
- [Markdown Tutorial](<https://www.markdowntutorial.com>

## 1.3. Extensions

Extensions in Visual Studio Code (VSCode) are add-ons that allow you to customize and enhance your development environment. They provide additional functionality, tools, and integrations that can improve your productivity and streamline your workflow. By using extensions, you can tailor VSCode to meet your specific needs, whether you're working with different programming languages, frameworks, or tools. Extensions can help with code formatting, linting, debugging, version control, and much more, making VSCode a powerful and versatile code editor.

- [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell)
- [Copilot Chat](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)
- [Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
- [Cline](https://cline.bot/)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [Compare It](https://marketplace.visualstudio.com/items?itemName=in4margaret.compareit)
- [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)
- [Favorites](https://marketplace.visualstudio.com/items?itemName=howardzuo.vscode-favorites)
- [Indent Rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [Markdown Emoji](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-emoji)
- [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)
- [Red Hat Commons](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-commons)
- [TODO Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
- [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
- [XML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml)
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)

## 1.4. The .vscode folder for Visual Studio Code Settings

This document explains the purpose and contents of the three configuration files in the `.vscode` folder.

### 1.4.1. launch.json

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

### 1.4.2. settings.json

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

### 1.4.3. tasks.json

The `tasks.json` file defines custom tasks that can be run from VS Code. Currently, it has:

1. **Echo Task**
   - A simple shell task that outputs "Hello"
   - Serves as a basic example of task configuration
   - Version 2.0.0 of the tasks format

---

# 2. Git

Using Git for even small script projects can be highly beneficial. It allows you to keep track of changes, collaborate with others, and maintain a history of your project. Git provides a robust version control system that helps you manage your code efficiently, revert to previous versions if needed, and understand the evolution of your project over time.

## 2.1. Using Git Locally

If you don't have access to products like GitHub Enterprise or GitLab, you can still use Git locally on your machine. Here are the steps to get started:

1. **Initialize a Git Repository**: Navigate to your project directory and run:

  ```sh
  git init
  ```

  This command creates a new Git repository in your project folder.

2. **Add Files to the Repository**: Add your project files to the staging area using:

  ```sh
  git add .
  ```

  This command stages all the files in your project directory.

3. **Commit Changes**: Commit the staged files to the repository with a message describing the changes:

  ```sh
  git commit -m "Initial commit"
  ```

4. **Check Repository Status**: To see the status of your repository, use:

  ```sh
  git status
  ```

5. **View Commit History**: To view the commit history, run:

  ```sh
  git log
  ```

By following these steps, you can effectively use Git to manage your projects locally without relying on external hosting services.

---

# 3. Lab and Test Environments with AutomatedLab

AutomatedLab is a powerful tool for deploying lab and test environments. It simplifies the process of setting up complex environments by automating the deployment of virtual machines, networks, and other infrastructure components. This is particularly useful for testing, development, and training purposes.

## 3.1. Benefits of AutomatedLab

- **Efficiency**: AutomatedLab allows you to define your lab environment once and deploy it multiple times. This saves time and ensures consistency across deployments.
- **Flexibility**: You can easily modify your lab definition to adapt to new requirements or scenarios.
- **Reproducibility**: By using a lab definition, you can recreate the exact same environment whenever needed, which is crucial for testing and debugging.
- **Cost Management**: Regularly deleting and redeploying lab environments helps manage costs, especially when using cloud resources.

## 3.2. Importance of Deleting and Redeploying Labs

- **Resource Optimization**: Deleting unused environments frees up resources and reduces costs.
- **Clean State**: Redeploying ensures that you start with a clean state, avoiding issues caused by leftover configurations or data.
- **Security**: Regularly redeploying environments helps mitigate security risks by ensuring that the latest patches and configurations are applied.

By leveraging AutomatedLab, you can streamline the process of managing lab environments, making it easier to focus on development and testing activities.

## 3.3. Sample Automated Lab Scripts

To help you get started with AutomatedLab, here are some simple sample scripts that demonstrate how to set up and configure lab environments:

- [AutomatedLab Sample Scripts](https://github.com/AutomatedLab/AutomatedLab/tree/develop/SampleScripts)

These scripts provide a variety of examples, from basic setups to more complex configurations, allowing you to quickly understand how to use AutomatedLab for your own projects. By studying these samples, you can learn how to define and deploy virtual machines, networks, and other infrastructure components efficiently.

---

# 4. PowerShell Modules

## 4.1. Module Distribution using PowerShell Remoting

The following code block demonstrates how to use PowerShell Remoting to distribute a module to a remote machine. It creates a new PowerShell session on the remote computer, retrieves the specified module from the local machine, and sends the module to the remote session for all users. the function `Send-ModuleToPSSession` is provided by [AutomatedLab.Common](https://github.com/AutomatedLab/AutomatedLab.Common)

```powershell
$s = New-PSSession -ComputerName MyMachine
$m = Get-Module -ListAvailable -Name MyModule
Send-ModuleToPSSession -Module $m -Session $s -Scope AllUsers
```

## 4.2. NuGet Feeds

NuGet feeds are repositories that host packages, which can include libraries, tools, and other resources. They allow developers to share and consume these packages easily. In the context of PowerShell, NuGet feeds can be used to distribute PowerShell modules within an organization, ensuring that all team members have access to the same versions of the modules.

Using NuGet feeds for PowerShell modules is beneficial because it:

- Ensures consistency across different environments.
- Simplifies the distribution and updating of modules.
- Provides version control, allowing teams to manage dependencies effectively.
Products that offer NuGet feed capabilities include:

- **Azure Artifacts**: Part of Azure DevOps, it provides a fully integrated package management solution.
- **GitHub Packages**: Allows hosting and managing packages alongside your source code.
- **MyGet**: A third-party service that provides hosted NuGet feeds.

These tools help streamline the process of managing and distributing PowerShell modules within an organization.

## 4.3. PowerShell Training Repository

The [PowerShell Training Repository](https://github.com/raandree/PowerShellTraining) is an excellent resource for anyone looking to get into PowerShell programming. It provides a comprehensive collection of training materials, including scripts, modules, and exercises designed to help you learn PowerShell from the ground up. The repository covers a wide range of topics, from basic syntax and commands to advanced scripting techniques and automation tasks. By working through the examples and exercises, you can build a solid foundation in PowerShell and enhance your scripting skills effectively.

During the workshop we have created the little sample module [Lib](./source//Lib/) which is available in the source folder.

---

# 5. Code Snippets

## 5.1. Why Code Snippets are Helpful

Code snippets are predefined pieces of code that you can quickly insert into your scripts or programs. They are helpful because they:

- **Save Time**: By reusing common code patterns, you can avoid writing repetitive code from scratch.
- **Reduce Errors**: Snippets are often tested and validated, reducing the likelihood of introducing errors.
- **Improve Consistency**: Using standardized snippets ensures that your code follows consistent patterns and practices.
- **Enhance Productivity**: Quickly inserting complex code structures allows you to focus on the logic and functionality of your code.

## 5.2. Using and Customizing Code Snippets

In Visual Studio Code (VSCode), you can use and customize code snippets to fit your specific needs. Here’s how:

1. **Using Built-in Snippets**: VSCode comes with built-in snippets for various programming languages. To use them, start typing the prefix of the snippet, and VSCode will show a list of matching snippets. Select the desired snippet to insert it into your code.

2. **Creating Custom Snippets**: You can create your own snippets by defining them in a JSON file. Here’s an example of how to create a custom snippet for PowerShell:

- Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on macOS).
- Type `Preferences: Configure User Snippets` and select it.
- Choose the language for which you want to create a snippet (e.g., PowerShell).
- Add your custom snippet in the JSON file. For example:

    ```json
    {
     "Print Hello World": {
      "prefix": "hello",
      "body": [
        "Write-Output 'Hello, World!'"
      ],
      "description": "Prints Hello, World! to the console"
     }
    }
    ```

3. **Managing Snippets**: You can edit, delete, or organize your snippets by modifying the JSON file where they are defined. This allows you to keep your snippets up-to-date and relevant to your workflow.

## 5.3. Sample Help Snippet

We have created the sample snippet `Custom Help Block` stored in [powershell.json](./source//Snippets/powershell.json).

## 5.4. Helpful Links

Here are some useful resources to learn more about code snippets and how to use them effectively:

- [Visual Studio Code Snippets Documentation](https://code.visualstudio.com/docs/editor/userdefinedsnippets)
- [Creating and Using Snippets in VSCode](https://www.digitalocean.com/community/tutorials/how-to-create-and-use-snippets-in-visual-studio-code)
- [PowerShell Snippets for VSCode](https://devblogs.microsoft.com/powershell/powershell-snippets-in-visual-studio-code/)

By leveraging code snippets, you can streamline your development process, maintain high code quality, and enhance your overall productivity.

---

# 6. PowerShell Security

Locking down PowerShell is crucial because it is a powerful scripting language that can be exploited by malicious actors to execute harmful scripts, access sensitive data, and compromise system security. While setting the execution policy can provide a basic level of control over script execution, it is not a robust security measure. Execution policies are not designed to be a security boundary and can be easily bypassed by users with administrative privileges.

- A good introduction is [PowerShell Security - Friedrich Weinmann - PSConfEU 2022](https://www.youtube.com/watch?v=M261YjSKj4w)
- An article for a good start is [Mitigating PowerShell risks with Constrained Language mode](
https://4sysops.com/archives/mitigating-powershell-risks-with-constrained-language-mode/)

To truly secure PowerShell, consider implementing the following measures:

- **Constrained Language Mode**: This restricts the language to a subset that limits the capabilities of scripts, reducing the risk of malicious code execution.
- **Just Enough Administration (JEA)**: This provides role-based access control, allowing users to perform specific administrative tasks without giving them full administrative rights.
- **Script Signing**: Require all scripts to be digitally signed by a trusted publisher, ensuring that only authorized scripts are executed.
- **Logging and Auditing**: Enable detailed logging of PowerShell activity to monitor and detect suspicious behavior. Use tools like the PowerShell Script Block Logging and Module Logging features.
- **Application Control**: Use Windows Defender Application Control (WDAC) or AppLocker to control which scripts and binaries can be executed on the system.

By implementing these security measures, you can significantly reduce the risk of PowerShell-based attacks and enhance the overall security of your environment.
