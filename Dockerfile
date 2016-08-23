#
# WSO2 API Manager 2.0.0
#
FROM java:8
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/2.0.0/wso2am-2.0.0.zip && \
apt-get update && \
    apt-get install -y zip ant && \
    apt-get clean && \
    unzip /opt/wso2am-2.0.0.zip -d /opt && \
    rm /opt/wso2am-2.0.0.zip

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
EXPOSE 9443 9763 8280 8243 10397
ENTRYPOINT ["/opt/wso2am-2.0.0/bin/wso2server.sh"]
