## What
　　[Hugo](!https://github.com/gohugoio/hugo) GO语言静态博客工具, 这是一个Hugo with extend docker镜像。

## Why
   small & simple && extends features && used for [github action](https://github.com/wxdlong/hugo-action)
```bash
wxdlong@wxdlong:~$ docker images | grep hugo
wxdlong/hugo  latest  0d9bc2d9c223  5 weeks ago  38.7MB
```

## How

1. CD to your hugo content dir
    ```bash
    $ pwd
    /d/code/github/wxdlong.github.io
    ```

2. Generator public resources, Must mount to `/code`. 
> Docker container Default workdir is `/code`
    ```bash
    $ docker run --rm -v "${PWD}:/code" wxdlong/hugo
    Building sites … WARN 2019/08/05 14:18:11 Page's .Hugo is deprecated and will be removed in a future release. Use the global h ugo function.
    WARN 2019/08/05 14:18:11 Page's .RSSLink is deprecated and will be removed in a future release. Use the Output Format's link, e.g. something like:
        {{ with .OutputFormats.Get "RSS" }}{{ .RelPermalink }}{{ end }}.
    WARN 2019/08/05 14:18:11 Page's .URL is deprecated and will be removed in a future release. Use .Permalink or .RelPermalink. If what you want is the front matter URL value, use .Params.url.

                    | EN
    +------------------+----+
    Pages            | 42
    Paginator pages  |  4
    Non-page files   |  0
    Static files     | 52
    Processed images |  0
    Aliases          |  8
    Sitemaps         |  1
    Cleaned          |  0

    Total in 1319 ms
    ```

3. Start Server
    ```bash
    docker run --rm -v "${PWD}:/code" -p 1313:1313 wxdlong/hugo /hugo server
    Building sites … WARN 2019/08/05 14:26:46 Page's .Hugo is deprecated and will be removed in a future release. Use the global hugo function.
    WARN 2019/08/05 14:26:46 Page's .RSSLink is deprecated and will be removed in a future release. Use the Output Format's link, e.g. something like:
        {{ with .OutputFormats.Get "RSS" }}{{ .RelPermalink }}{{ end }}.
    WARN 2019/08/05 14:26:46 Page's .URL is deprecated and will be removed in a future release. Use .Permalink or .RelPermalink. If what you want is the front matter URL value, use .Params.url.

                    | EN
    +------------------+----+
    Pages            | 42
    Paginator pages  |  4
    Non-page files   |  0
    Static files     | 52
    Processed images |  0
    Aliases          |  8
    Sitemaps         |  1
    Cleaned          |  0

    Total in 198 ms
    Watching for changes in /code/{archetypes,content,data,layouts,static,themes}
    Watching for config changes in /code/config.toml
    Environment: "development"
    Serving pages from memory
    Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
    Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
    Press Ctrl+C to stop
    ```