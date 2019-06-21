# docker-learn-rxjs
Image for learn rxjs.

## How it works ?

Execute the `src/index.ts`:
```bash
docker run -v $(pwd):/app/src magicjo/learn-rxjs:latest start
```

Execute `tslint`:
```bash
docker run -v $(pwd):/app/src magicjo/learn-rxjs:latest lint
```

Copy container `node_modules` in the current folder (for the ide, for example):
```bash
docker run -v $(pwd):/app/src --entrypoint './cp-nodemodules.sh' magicjo/learn-rxjs:latest
```

## How to publish ?

First build:
```bash
docker build --force-rm --pull --no-cache --tag learn-rxjs .
```

Then tag image:
```bash
docker tag learn-rxjs magicjo/learn-rxjs:latest
```

At the end, publish:
```bash
docker push magicjo/learn-rxjs:latest
```
