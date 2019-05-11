# es-bundled-template

Example for bundling ES templates.

## Build

```
docker build -t es-bundled-template:latest .
```

## Run

```
docker run -p 9200:9200 es-bundled-template:latest
```

## Test

```
http :9200/_template
```
