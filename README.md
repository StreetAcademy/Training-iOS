# Training-iOS

## 概要

Street-AcademyのiOS開発業務に入る前に、
iOS開発力を確認するor鍛える場。

## ルール

- developにマージしないこと。

## 研修

以下の研修課題を行う。人によって取り組む研修番号が異なる。

## 研修1

以下の項目について、参考書などを通して学ぶ。

#### Playground編

- optionalについて
- if letについて
- guardについて
- switchについて
- for, forEachについて
- 演習課題1
- 型変換について
- 演習課題2
- enumについて
- classについて
- classのinitializeについて
- staticについて
- structについて
- ViewControllerについて
- TableViewControllerについて
- JSON型について
- URL, URLComponents, URLRequestについて
- URLSessionを用いたAPIアクセスについて
- escapingとResultについて
- protocolについて
- protocolを用いたインスタンス生成について
- extensionについて

#### プロジェクト編

- UIViewControllerのライフサイクルについて
- UIViewのライフサイクルについて
- 画面遷移について
- 引数を遷移先画面に渡す方法
- xibファイルで作成したUIViewをUIViewControllerに載せる

## 研修2

Githubのリポジトリ一覧をTableViewで表示させるアプリを作成。

- API URL例: https://api.github.com/search/repositories?q=swift
- TableViewCellには画像(avatar_url)とタイトル(name)とスター数(stargazers_count)を表示
- Cellタップ時にリポジトリURL(html_url)ページを表示
- ライブラリの利用は自由 ※特に希望なければ利用なしで
- アーキテクチャは何でもOK ※特に希望なければMVC
- （2でも良いかも）検索枠を設けて、検索結果を表示する

## 研修3

研修2の更新版

- 画像を同期処理で表示（ライブラリ用いてもOK）
- 降順と昇順を切り替えられるように
- スクロールで検索枠を隠す
- Unitテストを書く
- iPhoneX, iPad対応
- その他希望があれば。

## 研修4

item-serverを用いて、商品の表示・追加・削除・更新ができるアプリ作成。

- API: https://item-server.herokuapp.com
    - get: /items
    - post: /create
    - delete: /delete
    - update: /update
- Restlet Clientファイル: [着地点](https://drive.google.com/drive/folders/16mvkEYiv_BUg1KC2J2RDmV2gQ-QpbSpX)
- 一覧表示画面と、登録画面の2画面が必須
- item情報は、タイトル、カテゴリ、価格
- ライブラリの利用は自由 ※特に希望なければAPIKitは使うこと
- アーキテクチャは何でもOK ※特に希望なければMVC
- 希望があればAPI作成から取り組む

## 研修5

研修4の更新版

- RxSwift, RxCocoaを用いたMVVMアーキテクチャに書き換える
- ライブラリ管理でcarthageを用いる
- Unitテストを書く
