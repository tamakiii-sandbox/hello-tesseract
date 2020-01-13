FROM python:3.8.1-alpine3.11

RUN apk add --update --no-cache \
      gcc \
      musl-dev \
      zlib-dev \
      jpeg-dev \
      tesseract-ocr \
      tesseract-ocr-dev \
      tesseract-ocr-data-jpn && \
    rm -rf /var/cache/*

RUN pip install pytesseract pyocr # opencv-python matplotlib

