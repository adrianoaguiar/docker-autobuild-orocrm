# OroCRM Application
**Single Docker Container**

## Usage

**Parameters.yml Variables:**

`APP_DB_DRIVER=pdo_mysql`  
`APP_DB_HOST=db`  
`APP_DB_PORT=3306`  
`APP_DB_USER=orocrm`  
`APP_DB_PASSWORD=orocrm`  
`APP_DB_NAME=orocrm`  
`APP_DB_HOST=db`  
`APP_HOSTNAME=localhost`  
`APP_MAILER_TRANSPORT=smtp`  
`APP_MAILER_HOST=127.0.0.1`  
`APP_MAILER_PORT=`  
`APP_MAILER_ENCRYPTION=`  
`APP_MAILER_USER=`  
`APP_MAILER_PASSWORD=`  
`APP_WEBSOCKET_HOST=websocket`  
`APP_WEBSOCKET_PORT=8080`  
`APP_IS_INSTALLED=`  

**Advanced Variables:**

`CMD_INIT_BEFORE` - Command will be executed before initialization (or installation)  
`CMD_INIT_CLEAN` - Command will be used if application not installed (here you can initiate installation via cli)
`CMD_INIT_INSTALLED` - Command will be used for initialization of already installed application  
`CMD_INIT_AFTER` - Command will be executed after initialization (or installation
  
## Build your own image

    docker build --build-arg GIT_URI=https://github.com/orocrm/crm-application.git --build-arg GIT_REF=tags/1.8.2 -t orocrm .
    
### Builder Environment Variables

`SSH_PRIVATE_KEY` - Base64 encoded private key for git (not stored in container)  
`GITHUB_TOKEN` - Plain text github token for composer (not stored in container)  
`MEMORY_LIMIT_CLI` - Integer value in MB  
`MEMORY_LIMIT_FPM` - Integer value in MB  
`UPLOAD_LIMIT` - Integer value in MB  
`GIT_URI` - Git repository uri  
`GIT_REF` - Git reference, available value: `branchname` or `tags/tagname`  

### Docker Compose / Docker Cloud
Web Installer [https://stackfiles.io/registry/56d486622e80f00100d737c7](https://stackfiles.io/registry/56d486622e80f00100d737c7)  
Automated Installation [https://stackfiles.io/registry/56d486be2e80f00100d737c8](https://stackfiles.io/registry/56d486be2e80f00100d737c8)

