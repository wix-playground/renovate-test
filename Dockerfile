FROM docker-repo.wixpress.com/wix-bootstrap-onbuild:stable
MAINTAINER Artem Yavorsky <artemy@wix.com>

# WORKDIR /usr/src/app/

# Install Cron
# RUN mkdir /var/lib/apt/lists/partial
# RUN apt-get update
# RUN apt-get -y install cron

# # Add crontab file in the cron directory
# ADD crontab /etc/cron.d/cron

# # Add renovate script and grant execution rights
# ADD renovate.sh /renovate.sh
# RUN chmod +x /renovate.sh

# # Give execution rights on the cron job
# RUN chmod 0644 /etc/cron.d/cron

# # Create the log file to be able to run tail
# RUN touch /var/log/cron.log

# # Install Renovate
# RUN npm install -g renovate

# # Run the command on container startup
# CMD cron && tail -f /var/log/cron.log
