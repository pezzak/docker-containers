FROM phusion/baseimage:0.9.16
MAINTAINER gfjardim <gfjardim@gmail.com>

#########################################
##        ENVIRONMENTAL CONFIG         ##
#########################################

# Set correct environment variables
ENV HOME="/root" LC_ALL="C.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" TERM=xterm

# Use baseimage-docker's init system
# CMD ["/sbin/my_init"]
# Use Supervisor
COPY run.sh /
RUN chmod +x /run.sh
CMD ["/run.sh"]


#########################################
##         RUN INSTALL SCRIPT          ##
#########################################

COPY * /tmp/
RUN chmod +x /tmp/install.sh 
RUN /tmp/install.sh 
RUN rm /tmp/install.sh
RUN rm /tmp/run.sh

#########################################
##         EXPORTS AND VOLUMES         ##
#########################################

EXPOSE 17500
VOLUME /home/.dropbox /home/Dropbox
