# Codex Bridge / CLIProxyAPI 管理中心

[English README](./README.md)

`Codex Bridge` 是一个轻量级的 CLI Proxy API 静态管理控制台项目。

## 项目目标

- 提供简洁直观的 Web 管理入口，便于运维与排障。
- 保持部署简单（单个静态文件即可运行）。
- 兼容自建与云端环境，降低接入门槛。

## 功能特性

- 静态前端管理页面：`CLIProxyAPI/static/management.html`
- 中文优先界面（`lang="zh-CN"`）
- 支持 Nginx / Caddy / 任意静态托管快速部署

## 快速开始

### 1）本地预览

```bash
cd CLIProxyAPI/static
python3 -m http.server 8080
```

浏览器访问：`http://127.0.0.1:8080/management.html`

### 2）生产部署

将 `CLIProxyAPI/static/management.html` 部署到你的静态资源服务器即可。

## 项目结构

```text
.
├── CLIProxyAPI/
│   └── static/
│       └── management.html
└── README.zh-CN.md
```

## 开源质量基线

本仓库包含开源协作常用的社区标准文件：

- `LICENSE`
- `CONTRIBUTING.md`
- `CODE_OF_CONDUCT.md`
- `SECURITY.md`
- `.github/ISSUE_TEMPLATE/*`
- `.github/pull_request_template.md`

## SEO 关键词

CLI 代理、API 网关管理、OpenAI Proxy、管理后台、静态管理面板、GitHub 开源项目

## 路线图

- [ ] 补充未压缩源码与 sourcemap
- [ ] 增加 HTML 检查与链接检查 CI
- [ ] 增加截图和详细部署文档

## 贡献

欢迎提交 Issue 和 Pull Request，提交前请先阅读 `CONTRIBUTING.md`。

## 许可证

MIT，详见 `LICENSE`。
