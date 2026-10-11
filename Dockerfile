FROM eclipse-temurin:21-jre

WORKDIR /app

# Tải file PaperMC tự động
ADD https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/LATEST/downloads/paper-1.21.1-LATEST.jar /app/paper.jar

# Copy các file cấu hình khác vào thư mục /app
COPY . /app

# Tự động đồng ý EULA
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xms1G", "-Xmx1G", "-jar", "paper.jar", "nogui"]
