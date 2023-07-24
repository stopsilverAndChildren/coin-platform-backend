FROM node:18.16.0

# 작업 디렉토리를 생성합니다.
WORKDIR /usr/src/app

# 앱 의존성을 설치하기 위해 package.json과 package-lock.json을 복사합니다.
COPY package*.json ./

# 종속성을 설치합니다.
RUN npm install

# 앱 소스 코드를 컨테이너 내부의 작업 디렉토리로 복사합니다.
COPY . .

# 앱을 실행합니다.
CMD ["npm", "start"]