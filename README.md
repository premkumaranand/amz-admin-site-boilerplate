# Admin site template with api
This provides a boilerplate admin site template, with a basic feathersjs api 
configured with JWT authentication.

## How to start
```bash
source scripts/shortcuts.sh

# to pickup local setup
setlocal

# shorthand for building your docker
dbuild

# shorthand to run your docker
drun

# Give it some 10 minutes for npm install to start the admin site inside your docker startup

#shorthand to sh into docker
dsh
```

Visit [http://sample.admin.amazinsellers.com:8090](http://sample.admin.amazinsellers.com:8090) to see the admin site

[TODO]: Add steps to create the first user. Register form?

## How to stop
```bash
source scripts/shortcuts.sh

# stop and delete the container
dclear

# save some space for yourself!
dprune
```

## How to deploy in production
[TODO] Not tested yet
1. Build production image
    ```bash
    source scripts/shortcuts.sh
    
    # to pickup local setup
    setprod
    
    # shorthand for building your docker
    dbuild
    ```
2. Deploy the image (Where? How? is a [TODO])

## How to create your project from this boilerplate
[TODO]: This is manual for now. Has a potential to write a script.
* Replace 'az-template' with your project name
* Replace 'aztemplate' with your image name
* Replace 'sample.api.amazinsellers.com' with your api URL
* Replace 'sample.admin.amazinsellers.com' with your admin site URL
* Set up these domains against localhost in your host `/etc/hosts` file

## Known issues

### Issue-1
Login does not work in the first instance (at least when using mlab mongo db).
### Workaround
Make a Postman call to [http://sample.api.amazinsellers.com:8090/users](http://sample.api.amazinsellers.com:8090/users)

## TODO
* Add pm2 watch for API
* Test deploying in a server
* Set up mongodb. Set up a default user.
