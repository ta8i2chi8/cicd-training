### やりたいこと
1. アプリのPRをマージすると、GitHub Actionsにより自動でイメージビルドが走ってcontainer registryにプッシュ
2. イメージの更新をargoCDが検知して、Kubernetesリポジトリにタグ更新コミットつきブランチを作成
3. GitHub Actionsでブランチ作成をトリガーにmainブランチ向けリリースPRを作成
4. mainブランチ向けリリースPRをマージすると、argoCDによりクラスターに適用

参考
https://techblog.zozo.com/entry/measure-argocd-introduction
