FROM openjdk:11-jre

# 将服务的 tar.gz 包复制到镜像内
COPY target/dubbo-monitor-simple-2.7.3-assembly.tar.gz /opt/dubbo-monitor-service.tar.gz

# 解压 tar.gz 包并删除压缩包
RUN tar -xzf /opt/dubbo-monitor-service.tar.gz -C /opt \
    && rm /opt/dubbo-monitor-service.tar.gz

# 启动脚本
CMD ["sh", "-c", "/opt/dubbo-monitor-service/assembly.bin/restart.sh"]
