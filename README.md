## 一键部署 [ShareList](https://github.com/reruin/sharelist) 到 HeroKu 

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Github Actions 部署

请 Fork 本项目到自己的账户下。 Actions 需要以下 Secrets 才能正常工作，这些 Secrets 会被 workflow 中的 [akhileshns/heroku-deploy](https://github.com/AkhileshNS/heroku-deploy) 使用。

具体实现细节，请查看 [workflow 配置文件](./.github/workflows/main.yml). 如何配置， 请查看，[Github Secrets](#github-secrets)

| Name              | Description                                |
| ----------------- | ------------------------------------------ |
| APP_NAME          | 就是你 heroku 项目的名字. 如果你是第一次创建APP，**请确保名字是唯一的**|
| EMAIL             | heroku 账户的 email                      |
| HEROKU_API_KEY    | heroku API key，在 account 设置下可以找到 |

> 这样Token一定必须是大写。。请在 heroku 网站创建app，来确保项目的名字的唯一性。

## Heroku部署问题

如果遇到：

> We couldn't deploy your app because the source code violates the Salesforce Acceptable Use and External-Facing Services Policy.

请Fork一下仓库，然后在自己的仓库下点击。

