# Codex Bridge / CLIProxyAPI Management Center

[简体中文说明](./README.zh-CN.md)

`Codex Bridge` is a lightweight static management console for a CLI Proxy API service.

## Why this project

- Provide a clean web-based management entry for CLI proxy services.
- Keep deployment simple (single static file output).
- Make operations easier for self-hosted and cloud environments.

## Features

- Static front-end management portal (`CLIProxyAPI/static/management.html`)
- Chinese-first interface (`lang="zh-CN"`)
- Easy to host with Nginx, Caddy, or any static file server

## Quick Start

### 1) Local preview

```bash
cd CLIProxyAPI/static
python3 -m http.server 8080
```

Open: `http://127.0.0.1:8080/management.html`

### 2) Production deployment

Deploy `CLIProxyAPI/static/management.html` to your static web host.

## Project Structure

```text
.
├── CLIProxyAPI/
│   └── static/
│       └── management.html
└── README.md
```

## Open Source Quality

This repository includes baseline community standards:

- `LICENSE`
- `CONTRIBUTING.md`
- `CODE_OF_CONDUCT.md`
- `SECURITY.md`
- `.github/ISSUE_TEMPLATE/*`
- `.github/pull_request_template.md`
- `scripts/quality-check.sh`

## Quality Check

Run the local quality checks before opening a pull request:

```bash
make quality
```

## SEO Keywords

CLI Proxy, API Gateway UI, OpenAI Proxy, Management Console, Static Admin Dashboard, GitHub Open Source

## Roadmap

- [ ] Add source map / unminified front-end artifacts
- [ ] Add automated CI checks after workflow permission is available
- [ ] Add screenshots and usage docs

## Contributing

Contributions are welcome. Please read `CONTRIBUTING.md` first.

## License

MIT. See `LICENSE` for details.
