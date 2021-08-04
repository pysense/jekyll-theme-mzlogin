---
layout: post
title: Jekyll Theme Mzlogin 主题配置
categories: [博客]
description: 
keywords: jekyll, github pages
---

## 本地预览

[Testing your GitHub Pages site locally with Jekyll - GitHub Docs](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)

```
scoop install ruby msys2
ridk install # 选 3 安装工具链
gem install jekyll bundler
cd <gpages_dir>
bundle install
```

为了防止启动 Jekyll 出现 `Error:  SSL_connect returned=1 errno=0 state=error: certificate verify failed` 错误：

1. 下载 https://curl.haxx.se/ca/cacert.pem 放入 `C:\`
2. 设置 `set SSL_CERT_FILE=C:\cacert.pem` 变量

如果第一步忽略，也可直接设置变量 `SSL_CERT_FILE=` 后再启动 Jekyll

```
bundle exec jekyll serve
```

## 针对原主题的修改

### 代码高亮样式本地化

```
cd assets\css
git clone https://github.com/mzlogin/rouge-themes
```

修改 `_includes\header.html`

```html
<!-- <link rel="stylesheet" href="{{ highlight_base_url }}/{{ site.highlight_theme}}.css"> -->
<link rel="stylesheet" href="{{ assets_base_url }}/assets/css/rouge-themes/dist/{{ site.highlight_theme }}.css">
```

## TODO

- [ ] 拓宽正文