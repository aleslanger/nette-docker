**Docker containers for Nette Framework**
===============
- Web Project for Nette 3.0
- Nginx
- PHP
- MySQL
- Redis



Install
```
make instal
```
Run docker containers
```
make up
```

Stop docker containers
```
make up
```
***Composer***

composer install
```
make install
```
composer update
```
make update
```


***Web URL***
```
http://localhost:1080
```

***Xdebug***
```
.docker/php/config/conf.d/xdebug.ini
```
The 'xdebug.client_host' must be adjusted. 

For windows: 
```
xdebug.client_host=host.docker.internal
```

For linux:
```
#You need to find the docker IP anything as
ifconfig docker0 | grep "inet"  
than IP add to
xdebug.client_host=172.17.0.1
```

