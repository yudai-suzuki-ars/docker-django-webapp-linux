以下のチュートリアルを参照
https://learn.microsoft.com/ja-jp/azure/app-service/deploy-container-github-action?tabs=publish-profile

# 環境変数
APP_SERVICE_APP_NAME: AppServiceの名前

AZURE_WEBAPP_PUBLISH_PROFILE: App Service側で概要から発行プロファイルを作成
https://learn.microsoft.com/ja-jp/visualstudio/azure/how-to-get-publish-profile-from-azure-app-service?view=vs-2022

REGISTRY_NAME: コンテナレジストリ名

REGISTRY_PASSWORD: コンテナーレジストリのアクセスキーで確認

REGISTRY_USERNAME: コンテナーレジストリのアクセスキーで確認




# Django starter app for Web App on Linux

A simple Python Django application running in a Docker container. The custom image uses port 8000.

## Setting up custom image for web App on Linux
- Create a Web App on Linux using CLI or Azure portal
- Configure your web app to custom image
- Add an App Setting ```WEBSITES_PORT = 8000 ``` for your app
- Browse your site

# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
