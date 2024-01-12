# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).
- Learn more at https://cap.cloud.sap/docs/get-started/.


## Regular commands
> cf deploy -i 06832465-b089-11ee-a1da-eeee0a9de005 -a abort #To abort the deployment process
> cf dmol -i 06832465-b089-11ee-a1da-eeee0a9de005 #To download the deployment success, error logs
> cds add 
## Learn More

Both the below links has a bit conflicting information because > cds add multitenancy 
takes out the '@sap/xsenv' package as mentioned in the help.sap.com document. 
https://help.sap.com/docs/bas/developing-business-applications-using-productivity-tools/enabling-saas#enable-external-services-in-a-multitenant-application 

https://cap.cloud.sap/docs/guides/multitenancy/ 

