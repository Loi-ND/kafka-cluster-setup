# Kafka Cluster Setup with Docker Compose

Hướng dẫn nhanh sử dụng docker-compose để chạy Kafka cluster 3 brokers.

**Khởi động cluster:**
```bash
docker-compose up -d
```

**Truy cập Kafdrop (UI):** http://localhost:9000

**Bootstrap servers:** localhost:9091,localhost:9092,localhost:9093

**Dừng cluster:**
```bash
docker-compose down
```

**Kiểm tra trạng thái:**
```bash
docker-compose ps
```
