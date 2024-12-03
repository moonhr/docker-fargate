# Node.js 18 버전의 알파인 이미지를 기반으로 설정
FROM node:18-alpine

# 작업 디렉토리 생성 및 설정
WORKDIR /app

# 패키지 파일들을 컨테이너로 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 모든 소스 코드를 컨테이너로 복사
COPY . .

# 애플리케이션 빌드
RUN npm run build

# 애플리케이션이 사용할 포트 설정
EXPOSE 3000

# 애플리케이션 시작 명령어
CMD ["npm", "start"]