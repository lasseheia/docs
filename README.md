# docs

[![Build and deploy MkDocs site](https://github.com/lasseheia/docs/actions/workflows/pages.yaml/badge.svg)](https://github.com/lasseheia/docs/actions/workflows/pages.yaml)

## Local Development

To run the MkDocs server locally, use the following command:

```zsh
nix develop --command bash -c "mkdocs serve"
```

Or, using direnv:

```zsh
direnv allow
mkdocs serve
```
