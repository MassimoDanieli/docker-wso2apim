#
# WSO2 API Manager 1.10.0
#
FROM java:7
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/1.10.0/wso2am-1.10.0.zip && \
apt-get update && \
    apt-get install -y zip ant && \
    apt-get clean && \
    unzip /opt/wso2am-1.10.0.zip -d /opt && \
    rm /opt/wso2am-1.10.0.zip

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 9443 9763 8280 8243
CMD ["/opt/wso2am-1.10.0/bin/wso2server.sh"]
