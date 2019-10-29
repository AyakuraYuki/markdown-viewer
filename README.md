# markdown-viewer

> A simple markdown viewer works in Docker, lightweight and unlimited.

## how is it works

When you run this image, it'll try to create a default index page and then start a simple HTTP server. If you are already present your index page, it will skip the prepare step and create the server directly.

## build (for developers)

```bash
git clone https://github.com/AyakuraYuki/markdown-viewer.git
cd markdown-viewer
sh build.sh
```

## run (for developers)

> In `markdown-viewer` folder, execute the following command:

```bash
sh run.sh <port> <doc_path> [container_name]
```

## get from docker hub

```bash
docker pull ayakurayuki/markdown-viewer
```

## run image

```bash
docker run --detach -p <port>:80 -v /path/to/doc_folder:/docroot markdown_viewer
```

for example:

```bash
docker run --detach -p 13333:80 -v /path/to/doc_folder:/docroot markdown_viewer
```
