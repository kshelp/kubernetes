# Python 3.11 slim 이미지 사용
FROM python:3.11-slim

# 환경 변수 설정
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 필수 패키지 설치
RUN apt update && apt install -y \
    build-essential \
    default-libmysqlclient-dev \
    git \
    python3-dev \
    pkg-config

# 소스코드 다운로드
RUN git clone https://github.com/kshelp/ch12_drf.git /app

# 작업 디렉토리 설정
WORKDIR /app
COPY . /app

# requirements.txt 설치
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# STATIC_ROOT 경로 미리 생성 (필수)
RUN mkdir -p www_dir/static

# collectstatic 명령 실행
RUN python manage.py collectstatic --noinput
