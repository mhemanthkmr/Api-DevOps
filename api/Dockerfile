FROM ubuntu:latest 
ENV TZ=Asia/Kolkata
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /var/api/
RUN apt update
RUN apt upgrade -y
RUN apt install htop git bc -y
RUN apt install apache2 -y
RUN apt install php libapache2-mod-php php-mysql -y
RUN apt install net-tools nano locales curl wget -y
RUN rm -rf /var/www/html
COPY ./data .
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  
RUN chmod +x /var/api/entry.sh
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
CMD [ "/var/api/entry.sh" ]
