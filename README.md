<!-- GETTING STARTED -->
## Getting Started

This is an example monorepo used to demonstrate Spacelift's Stack Dependency Feature


### Prerequisites

All you need to get started is a Spacelift Account! Head on over to Spacelift's website and create a [free trial account](https://spacelift.io/free-trial)

### Installation

Below are the required steps for setting up Stack Dependecies workflow in your Spacelift account.

1. Clone this repo
   ```sh
   git clone https://github.com/jake-sltest/spacelift-stack-dependencies.git
   ```
2. [Create a Cloud integration](https://docs.spacelift.io/concepts/stack/creating-a-stack#creating-a-stack) manually in the your Spacelift account and make sure you select the Administrative toggle. [Administrative Stacks](https://docs.spacelift.io/concepts/stack/stack-settings#administrative) have the ability create, update and destroy Spacelift resources.

3. [Create a Stack](https://docs.spacelift.io/concepts/stack/creating-a-stack#creating-a-stack) manually in the your Spacelift account and make sure you select the Administrative toggle. [Administrative Stacks](https://docs.spacelift.io/concepts/stack/stack-settings#administrative) have the ability create, update and destroy Spacelift resources.

4. In the Administrative Stack's source code settings set the appropriate repo, branch, and project root of `/spacelift-admin`

5. Once the above is completed [trigger](https://docs.spacelift.io/concepts/run/tracked.html#triggering-manually) the Administrative stack and it will create three stacks and all of it's necessary configuration. The three stacks it creates are the following:
    * 01-vpc-stack which will manage the creation of our VPC, Subnet, and output of the Subnet ID
    * 02-ec2-stack which will manage the creation of our EC2, Security Group, and output of public IP
    * 03-ansible-stack which will install and NGINX server on the EC2 Instance
6. Once everything is created simply trigger the 01-vpc-stack


### Helpful Links
* [Main Concepts](https://docs.spacelift.io/getting-started#introduction-to-main-concepts)
* [Spacelift Terraform Provider](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs)