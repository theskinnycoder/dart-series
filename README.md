# **Setup for the tutorial**

## **1) Install Dart**

### **a) Windows (_eww_)**

1.  Install **Chocolatey** by entering the following in _Command Prompt_ (**not PowerShell**):

    ```batch
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    ```

2.  Then install Dart SDK using **choco** :

    ```batch
    $ choco install dart-sdk

    $ choco upgrade dart-sdk
    ```

### **b) Linux (_the Gods_)**

1. Perform the following one-time setup :

   ```bash
   $ sudo apt-get update

   $ sudo apt-get install apt-transport-https
   ```

   ```bash
   $ sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'

   $ sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
   ```

2. Install the Dart SDK :

   ```bash
   $ sudo apt-get update
   $ sudo apt-get install dart
   ```

3. Add the _Dart SDK_'s **bin** directory to **PATH** :

   ```bash
   $ sudo echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> /etc/environment
   ```

### **c) Mac (_lucky you_)**

Install it using [**homebrew**](https://brew.sh/). It is a widely used package-manager on Mac.

```zsh
$ # Install Brew :
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

> Make sure _HomeBrew_'s **bin** is on **PATH**.

```zsh
$ # Install Dart :
$ brew tap dart-lang/dart
$ brew install dart
$ brew upgrade dart
```

---

## **2) INSTALLING VSCODE**

### **a) Windows**

1.  Visit [VSCode](https://code.visualstudio.com).
2.  Download the Windows-64 'Stable' version.
3.  Follow the installation steps by running the downloaded file, and check the **ADD VSCode to PATH** option for sure.

### **b) Linux**

- Install using [**snap**](https://snapcraft.io/code). Choose your distro type in the list to install **snap**.

- **snap** is a new global package-manager common to all distros.

```bash
# For example, on Debain-based systems :

# To install snap :
$ sudo apt update
$ sudo apt install snapd

# To install VSCode :
$ sudo snap install code --classic
```

### **c) Mac**

1.  Visit [VSCode](https://www.code.visualstudio.com).
2.  Download the MacOS 'Stable' version.
3.  Follow the installation steps by running the downloaded file

(OR)

Install it using **HomeBrew**

```bash
$ # Install VSCode :
$ brew update
$ brew tap caskroom/cask
$ brew cask search visual-studio-code
$ brew cask install visual-studio-code
```

---

## **3) Setup VSCode**

### **- Install the Dart Extension**

- Search for the Dart extension and install it.
- You get language-support, auto-complete and intellisense features through this extension.

Link to the extension : [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)

### **- `tasks.json` file**

1. Create a **.vscode** folder in your project root and create a **`tasks.json`** file in it.
2. Add the following to the file :

```json
{
	"version": "2.0.0",
	"presentation": {
		"echo": false,
		"reveal": "always",
		"focus": true,
		"panel": "shared",
		"showReuseMessage": false,
		"clear": true
	},
	"tasks": [
		{
			"label": "Format Dart",
			"type": "shell",
			"command": "dartfmt",
			"args": ["-w", "${file}"]
		},
		{
			"label": "Run Dart",
			"type": "shell",
			"command": "dart",
			"args": ["${file}"],
			"promptOnClose": false,
			"dependsOn": ["Format Dart"],
			"group": {
				"kind": "build",
				"isDefault": true
			}
		}
	]
}
```

> Happy Coding!
