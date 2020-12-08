#!/usr/bin/env bash

cnpm install -g commitizen conventional-changelog conventional-changelog-cli
cnpm init --yes
commitizen init cz-conventional-changelog --save --save-exact
cnpm install --save-dev @commitlint/config-angular @commitlint/cli
echo "module.exports = {extends: ['@commitlint/config-angular']};" > commitlint.config.js
cnpm install --save-dev @commitlint/{config-conventional,cli}
cnpm install husky --save-dev
