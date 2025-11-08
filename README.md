# theepicbook-azdevops
CI/CD Automated deploy of Epicbook app using Azure devops for CI/CD, terraform for infrastructure automation and ansible for configuration. 

### PREREQUISITE
1. id_ed25519 and id_ed25519.pub keys
2. AWS authentication keys with administrator permission.

### STEPS
1. Install the AWS Toolkit Extension

Go to the marketplace link:
https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-vsts-tools

Click “Get it free”.

Choose your Azure DevOps organization and Install.

After a minute, go back to Azure DevOps → Project Settings → Service Connections → New service connection.
You should now see AWS listed.

2. Set up AWS service connection in the project settings.

3. Import ssh keys (id_ed25519 & id_ed25519.pub) and set up your aws secrets as group variables in the project: TheEpicbook/Pipelines/Library

4. create a pipeline for the project and import the github repo: https://github.com/donhasmo/theepicbook-azdevops.git

5. Use the existing Azure_pipeline.yaml file and edit the prerequisites based on the names you have.

6. Save and run pipeline.

7. Terraform will create your infrastructure and ansible will configure the epicbook app.

8. After 10 minutes, terraform will begin to destroy the resources as it is a practice project
