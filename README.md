# Reducing Friction with RunnX - Shorts 1

![header](https://raw.githubusercontent.com/RunnX/runnx/main/img/headers/rfwr-shorts-wide.png)

Reducing Friction with RunnX - Shorts 1

## Prerequisites

<details>
  <summary>Click to expand!</summary>

### Git

[Git client installation media](https://git-scm.com/download) or execute below

Windows

```powershell
winget install --id Git.Git -e --source winget
```

MacOS

```bash Shell
brew install git
```

[GitHub CLI installtion media](https://github.com/cli/cli#installation) or execute below

Windows

```powershell
winget install GitHub.cli
```

MacOS

```bash
brew install gh
```

### Terraform

[Terraform CLI installation media](https://learn.hashicorp.com/tutorials/terraform/install-cli) or execute below

Windows

```powershell
choco install terraform
```

MacOS

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

### Azure CLI

[Azure CLI installation media](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) or execute below

Windows

```powershell
winget install Microsoft.AzureCLI
```

MacOS

```bash
brew install azure-cli
```

### IDE

My preferred IDE
[VS Code installtion media](https://code.visualstudio.com/Download) or execute below

Windows

```powershell
winget install Microsoft.VisualStudioCode
```

MacOS

```bash
brew install --cask visual-studio-code
```

</details>

## Setup

Execute the code below to create a repo reproducing the Reducing Friction with RunnX #shorts 1 where you can view the terraform to create an Azure ServiceBus Queue.

Windows or MacOS

```shell
gh auth login

gh repo create rfwr-shorts-1 --template=https://github.com/RunnX/rfwr-shorts-template-1.git --public --clone
```

## Usage

To get started open the rfwr-shorts-1 folder in VS Code and open a new terminal window within VS Code.

### Initialize the project by executing the code below in the terminal

```shell
make init
```

### Populate the azure values in the 'shorts1.tfvars' terraform variables file

```tfvars
arm_subscription_id = "what is your subscription id?"
arm_principal       = "what is your principal id?"
arm_password        = "what is your password?"
tenant_id           = "what is your tenant id?"
shorts1-rg          = "what resource group do you want to create? example: rfwrshorts1-rg"
location            = "what azure region do you want to use? example: eastus"
```

### Open the servicebus.tf terraform file and type the following

```shell
sb {hit tab key}
```

### Execute the code below in the terminal

```shell
make plan
```

### Execute the code below in the terminal

```shell
make apply
```

### Look at the newly created resource group in your Azure Subscription

Your resource group should look similar to below screenshot.
![screenshot](https://raw.githubusercontent.com/RunnX/runnx/main/assets/rfwr/shorts/1/screenshot.webp)

### Don't forget to clean up your Azure Subscription when done reviewing

```shell
make destroy
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
