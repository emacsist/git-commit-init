#!/usr/bin/env bash

cnpm install -g commitizen conventional-changelog conventional-changelog-cli
cnpm init --yes
commitizen init cz-conventional-changelog --save --save-exact
cnpm install --save-dev @commitlint/config-angular @commitlint/cli
echo "module.exports = {extends: ['@commitlint/config-angular']};" > commitlint.config.js
cnpm install --save-dev @commitlint/{config-conventional,cli}
cnpm install husky --save-dev

curl -O https://raw.githubusercontent.com/emacsist/git-commit-init/master/.huskyrc

jq -s '.[0] * .[1]' .huskyrc package.json > tmp.json
mv package.json package.json.bak
mv tmp.json package.json
rm .huskyrc
