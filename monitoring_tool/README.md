## Packages Required ##
The following packets will be need through the installation:

`sudo apt-get install git cmake build-essential clang rapidjson-dev apache2`

## Installation ##

### Checking out required repositories ###
First checkout needed repositories:

```
git clone git@git.repository-pert.ismb.it:pkarachatzis/monitoring-tool.git
cd monitoring-tool/
mkdir service
cd services
git clone git@git.repository-pert.ismb.it:pkarachatzis/monitoring-tool-service.git
git clone https://github.com/cpswarm/swarmio.git

```

### Building swarmio lib ###

Navigate to the 'service' directory

Build the swarmio library:

```
cd swarmio/
mkdir build
cd build/
cmake ..
make

```

### Build monitoring tool service ###

Navigate to the 'service' directory

Before building the monitoring tool, you need to change the paths in the CMakeLists

```
set(LIBSWARMIO_BUILD_PATH "/home/karachatzis/monitoring-tool/service/swarmio")
set(LIBSWARMIO_LOCAL_INSTALL_PATH "${LIBSWARMIO_BUILD_PATH}/build/devroot-amd64")

```

Build the monitoring tool service:
```
cd monitoring-tool-service/
mkdir build;cd build;cmake ..;make
```

### Setting up Gui ###

Navigate to the 'monitoring-tool' directory

```
cd cgi-script/
make
sudo make install

cd /var/www/
sudo ln -s /home/karachatzis/monitoring-tool/html/ html-gui
sudo vi /etc/apache2/sites-enabled/000-default.conf
```

Open `/etc/apache2/sites-enabled/000-default.conf` with your prefered editor (sudo privillages) and do the following changes (the changes are within VirtualHost element):

```
-   DocumentRoot /var/www/html
+   DocumentRoot /var/www/html-gui

+	<Directory "/usr/local/">
+		Require all granted
+	</Directory>
+
+	ScriptAlias "/cgi-bin/" "/usr/local/cgi-bin/"
+	<Directory "/usr/local/cgi-bin/">
+		Options +ExecCGI
+		AddHandler cgi-script .cgi
+	</Directory>
```

Finally:

```
sudo a2enmod cgi
sudo service apache2 restart
```

## Running ##

Start the monitoring-tool-service, either directly `./monitoring-service` or by using a service

Open the browser at the localhost(127.0.0.1) ip (in case of linux use chromium as firefox is having performance issues with JS)
