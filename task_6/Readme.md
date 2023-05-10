 # **Task 6**

# **Using Terraform to create an environment in Google Cloud**

A part of this task is to create a few resources using terraform:
- [x] Cloud Storage Bucket: https://storage.googleapis.com/bucket-created-by-terraform/index.html
- [x] Compute Instance
- [x] Cloud SQL instance with Postgres engine


On Google Cloud Platform in your project open Cloud Shell. Create folder terraform and few files inside: provider.tf, main.tf and variables.tf:
```
vim <file_name>.tf
```
In order to be able to communicate with GCP API you need to configure a provider. A provider in Terraform is a plugin that enables interaction with an API.

In provider.tf paste the code below : 
```
provider "google" {
  project = var.project
  region  = var.project_region
  zone    = var.project_zone
}
```
In main.tf paste the code of infrastuctre you want to create. In this example it will be bucket with public access for readers, compute instance and SQL database PostgreSQL. 


The file variable.tf contains all defined variables.


Now, initialize terraform. Run the below command in the Cloud Shell.
```
terraform init
```
If it works you should see: Terraform has been successfully initialized. 

Past the code below. You can see what will be created.
```
terraform plan
```
Next step, past the code below. If the plan is okey you should agree. Enter value 'YES'.
```
terraform apply
```

It takes few minute, your instance is created. In UI on Google Cloud Platform you can see created intance. 

Add index.html. In Cloud Storage -> Bucket, there is a created bucket. You can add index.html manualy. Click on public URL and you can see content index.html.

Congratulation, you have instance created by Terraform in your project GCP.


Past the code below to destroy instance: 
```
terraform destroy 
```
![Example screenshot](./img/terraform.png)



