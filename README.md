# A docker image novnc desktop with q4wine  for installing wine apps

A docker image pre-installed ivms4200-Linux based on bkjaya1952/q4wine-x11vnc-novnc-docker

Usage :-

To create a smath container (name ivms) using bkjaya1952/docker-ivms4200-linux-new

Refer:- https://hub.docker.com/r/bkjaya1952/docker-ivms4200-linux-new

On the Ubuntu terminal

<code>sudo docker create -t -p 8008:8080 --name ivms --privileged=true bkjaya1952/docker-ivms4200-linux-new</code>

<code>sudo docker start ivms</code>

<code>xdg-open http://localhost:8008/vnc_lite.html</code>

Then the novnc desktop with q4wine will appear on the web browser at the startup.

At the first run of the docker container , you will have to run the first startup wizard to configure the q4wine as follows.

The it will automatically download wine and install.

<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-26-54.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-26-54.png" width="625" height="520">


<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-27-41.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-27-41.png" width="625" height="520">


<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-28-27.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-28-27.png" width="625" height="520">


If you want to get the novnc desktop with q4wine after closing it, please follow the following steps

On the desktop, right click the mouse to get the fluxbox menu

<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/menu1.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/menu1.png" width="625" height="520">

To get the ivms4200 desktop with q4wine panel

On the menu go to sub menus and ckick Applications>Shells>Bash

<img src="https://raw.githubusercontent.com/bkjaya2020/docker-ivms4200-linux-new/master/Screenshot%20from%202020-03-01%2016-53-49.png" alt="https://raw.githubusercontent.com/bkjaya2020/docker-ivms4200-linux-new/master/Screenshot%20from%202020-03-01%2016-53-49.png" width="625" height="520">


How to change the timezone

After quitting the noVNC

On the terminal enter

<code>vim /etc/timezone</code>

Then the timezone file is opened

Go to the top line of the file , press insert key on your key board and enter your timezone ( ie Asia/Colombo)

Then press the Esc key and Shift :x to save & quit the file



