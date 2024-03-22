### やりたいこと
1. アプリのPRをマージすると、GitHub Actionsにより自動でイメージビルドが走ってcontainer registryにプッシュ
2. イメージの更新をargoCDが検知して、Kubernetesリポジトリにタグ更新コミットつきブランチを作成
3. GitHub Actionsでブランチ作成をトリガーにmainブランチ向けリリースPRを作成
4. mainブランチ向けリリースPRをマージすると、argoCDによりクラスターに適用

![cicd drawio](https://github.com/ta8i2chi8/sample-app-for-cicd/assets/66934929/f44f56c5-a743-4e42-9beb-5d2747c293c1)

参考
https://techblog.zozo.com/entry/measure-argocd-introduction
