# Troubleshooting

## Known issues

### Node-SASS Docker installation

```sh
Node Sass could not find a binding for your current environment: Linux/musl 64-bit with Node.js 11.x
```

Issue: Dependency version mismatch

Rectification:

1. Delete `node_modules` folder
2. Add `node_modules` to a new `.dockerignore` folder

### Safari infinite loop on hot reloads

In nuxt.config.js, add the following:

```sh
{
  build: {
    devMiddleware: {
      headers: {
        'Cache-Control': 'no-store',
        Vary: '*'
      }
    }
  }
}
```
