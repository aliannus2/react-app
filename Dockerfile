FROM 168237867270.dkr.ecr.us-east-1.amazonaws.com/node-16 as builder
WORKDIR "/react-app"
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM 168237867270.dkr.ecr.us-east-1.amazonaws.com/nginx
EXPOSE 80
COPY --from=builder /react-app/build /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
CMD ["nginx","-g","daemon off;"]
