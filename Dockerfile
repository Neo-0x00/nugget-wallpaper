FROM nginx:alpine

LABEL org.opencontainers.image.title="Nugget Wallpaper GitHub Pages"
LABEL org.opencontainers.image.description="Nugget 中文社区动态交互壁纸库 GitHub Pages 静态索引页"
LABEL org.opencontainers.image.url="https://neo-0x00.github.io/nugget-wallpaper/"
LABEL org.opencontainers.image.source="https://github.com/Neo-0x00/nugget-wallpaper"
LABEL org.opencontainers.image.documentation="https://nugget.click"

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY docs/ /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://127.0.0.1/ >/dev/null || exit 1
