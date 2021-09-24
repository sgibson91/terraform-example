# Terraforming the Cloud

This is an example repo to demonstrate `terraform` with GCP and Azure as part of a talk.

Slides are available here :point_right: <https://docs.google.com/presentation/d/1L22ox6M8Yl0-Ocw_wREyJNeQp25vhhkdFeCwzjdjDSY/edit?usp=sharing>

The examples in this repo where developed using Hashicorp's Terraform Get Started guides for Azure and GCP.

- [Get Started with Azure](https://learn.hashicorp.com/collections/terraform/azure-get-started)
- [Get started with GCP](https://learn.hashicorp.com/collections/terraform/gcp-get-started)

## What you will need

- A `terraform` installation: <https://learn.hashicorp.com/tutorials/terraform/install-cli>
- An account with your chosen cloud provider
  - If you choose Google Cloud, you will also need to [create a service account](https://cloud.google.com/iam/docs/creating-managing-service-accounts) and [generate a key](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) for it
- The command line interface installation for your chosen cloud provider, either:
  - Azure: <https://docs.microsoft.com/en-us/cli/azure/install-azure-cli>
  - Google Cloud: <https://cloud.google.com/sdk/docs/install>

## How to use this repo

1. Clone the repo

    ```bash
    git clone https://github.com/sgibson91/terraform-example.git
    cd terraform-example
    ```

2. Change into the `terraform` subdirectory of your chosen cloud provider

    ```bash
    cd terraform/{{ azure | gcp }}
    ```

3. Authenticate with your chosen cloud provider

    ```bash
    # For Azure
    az login
    # For Google Cloud
    gcloud auth login
    ```

4. Create a copy of `inputs.example.tfvars` and replace the placeholder values with your desired inputs.
   You may even choose to change some other values that are listed in `variables.tf`.

    ```bash
    cp inputs.example.tfvars inputs.tfvars
    ```

5. Initialise `terraform`

    ```bash
    terraform init
    ```

6. Plan your infrastructure changes

    ```bash
    terraform plan -var-file=inputs.tfvars -out=plan
    ```

7. Apply your infrastructure changes

    ```bash
    terraform apply plan
    ```

:bulb: Steps 6 and 7 can be repeated as many times as you wish as you make changes to your infrastructure

8. Once you are finished, destroy your infrastructure

    ```bash
    terraform plan -var-file=inputs.tfvars -out-plan -destroy
    terraform apply plan
    ```
