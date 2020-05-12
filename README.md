# docusaurus-deploy-action

Action for deploying docusaurus documentation (should work for v1 and v2).

Required input arguments:

- git-user: git user name

Optional input arguments:

- source-folder: folder with docusaurus documentation (defaults to 'website')
- git-password: git password (defaults to secrets.GITHUB_TOKEN, which should work if it has default rights)

Secrets the action uses:

- GITHUB_TOKEN

Environment variables the action uses:
None

Example workflow:
([GitHub workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions))

```yaml
name: CI
on: [push]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: redkubes/docusaurus-deploy-action@master
        with:
          source-folder: website
          git-user: $SOME_USERNAME
          git-password: ${{ secrets.GITHUB_TOKEN }}
```
