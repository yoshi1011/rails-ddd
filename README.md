# Rails DDD

## これはなに？

Rails7のテスト & ドメイン駆動設計入門を参考にDDD開発を試すためのリポジトリ  
そもそも、Ruby on RailsがDDDに不向きな設計のため、Rails Way・DDDの双方を考慮しつつの独自の設計に取り組む  
ドメインエキスパートとの会話などはもちろんないため、軽量DDDとしての取り組み  

## どんなアプリをつくるのか
求人サービスをモデルに作ってみる  

## 現状の方向性
ドメイン駆動設計において必要なオブジェクト群を下記の通り配置・利用する(2022/7/31時点)
### ドメインオブジェクト
app/domains配下にモデル名(ActiveRecord)と同じ名前ででディレクトリ名を設定。  
それをモジュール名として各クラスを作成する。  
models/配下のActiveRecordモデルはなるべく使わないようにする予定だが、Rails Wayが崩れてしまい、Railsを利用するメリットがなくなるので、書きながら必要に応じてActiveRecordに責務を委ねる  

### アプリケーションサービス
Railsのサービスクラスと同じような扱いをしたいため、app/servicesに記載する。  