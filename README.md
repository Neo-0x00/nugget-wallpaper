# Nugget 动态交互壁纸库

这是 Nugget 中文社区的动态交互壁纸入口页，适合想给 iPhone 或 iPad 换一张动态锁屏壁纸的用户访问。

你可以从这里快速进入官方社区和交互壁纸库：

- Nugget 中文社区官网：[https://nugget.click](https://nugget.click)
- Nugget 交互壁纸库：[https://wallpaper.nugget.click](https://wallpaper.nugget.click)
- GitHub Pages 页面：[https://neo-0x00.github.io/nugget-wallpaper/](https://neo-0x00.github.io/nugget-wallpaper/)

## 这里有什么

页面会引导用户了解 Nugget 动态交互壁纸，并跳转到官方壁纸库查看完整内容。壁纸库适合查找：

- iPhone 动态壁纸、iOS 动态壁纸、iOS 26 壁纸、iPadOS 壁纸
- Live Photo 壁纸、视频壁纸、锁屏壁纸、苹果动态壁纸
- Nugget 壁纸、Nugget 模板、Nugget 中文社区教程
- 动漫动态壁纸、游戏动态壁纸、音乐视觉壁纸、角色主题壁纸
- 无需越狱设置动态壁纸、PosterBoard 相关壁纸资源

页面正文会尽量用普通用户能读懂的方式介绍壁纸和使用入口；标题、描述、关键词、Open Graph、Twitter Card、FAQ 结构化数据、站点地图和 robots.txt 则放在页面背后，方便分享、收藏和被搜索到。

## 适合谁

- 想为 iPhone 或 iPad 设置动态锁屏壁纸的用户
- 想浏览 Nugget 动态交互壁纸、Live Photo 壁纸、视频壁纸的用户
- 想快速找到 Nugget 中文社区官网、教程和壁纸库入口的用户
- 想了解无需越狱动态壁纸设置方式的新用户

## 项目结构

```text
docs/
├── index.html                  # GitHub Pages 页面
├── 404.html                    # 自定义 404 页面
├── manifest.json               # Web App 配置
├── robots.txt                  # 抓取规则
├── sitemap.xml                 # 站点地图
├── googleb61c8f82012ad232.html # Google 站点验证
└── favicon/                    # favicon 与应用图标
```

## 本地预览

这个项目是纯静态页面，不需要安装前端依赖。

```bash
python3 -m http.server 8080 --directory docs
```

然后访问：

```text
http://127.0.0.1:8080
```

## GitHub Pages

仓库发布目录是 `docs/`。在 GitHub 仓库 Pages 设置中选择：

- Source: Deploy from a branch
- Branch: `main`
- Folder: `/docs`

## Docker Hub 自动发布

项目包含 Nginx 静态镜像配置，并使用 GitHub Actions 自动构建和推送 Docker Hub 镜像。本地不需要构建 Docker 镜像。

需要在 GitHub 仓库的 `Settings -> Secrets and variables -> Actions` 中配置：

- `DOCKERHUB_USERNAME`：Docker Hub 用户名或组织名
- `DOCKERHUB_TOKEN`：Docker Hub Access Token

提交到 `main` 分支后，`.github/workflows/docker.yml` 会发布：

- `DOCKERHUB_USERNAME/nugget-wallpaper:latest`
- `DOCKERHUB_USERNAME/nugget-wallpaper:sha-<commit>`

Docker Hub 的仓库介绍可以使用下面这段内容，方便用户从镜像页面回到官网和壁纸库：

```md
Nugget 动态交互壁纸库静态页面，提供 iPhone 动态壁纸、Live Photo 壁纸、视频壁纸和 Nugget 中文社区入口。

- Nugget 中文社区官网：https://nugget.click
- Nugget 交互壁纸库：https://wallpaper.nugget.click
- GitHub Pages：https://neo-0x00.github.io/nugget-wallpaper/
- GitHub 仓库：https://github.com/Neo-0x00/nugget-wallpaper
```

## 说明

本仓库只维护静态介绍页、GitHub Pages 页面、Docker 镜像配置和相关元数据。壁纸资源、教程、下载和社区内容以 Nugget 中文社区官网与交互壁纸库为准。
