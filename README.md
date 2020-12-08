```bash
curl -fsSL https://raw.githubusercontent.com/emacsist/git-commit-init/master/init.sh | bash
```

执行完后，在 package.json 中添加

```json
  "husky": {
    "hooks": {
      "commit-msg": "commitlint -E HUSKY_GIT_PARAMS"
    }
  }
```
