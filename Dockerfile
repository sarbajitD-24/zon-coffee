FROM nginx:latest
WORKDIR /usr/share/nginx/html
RUN apt update -y && apt upgrade -y
RUN apt install -y apt-utils git
RUN git clone https://github.com/sarbajitD-24/zon-coffee.git
WORKDIR /usr/share/nginx/html/zon-coffee
RUN cp -r css fonts images js /usr/share/nginx/html/
RUN cp about.html blog.html contact.html index.html service.html testimonial.html /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
