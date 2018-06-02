Ansible 構成管理ツール環境
====

Ansibleによる構成管理を簡易に行うための環境を提供します。
テンプレートとしてのデータや実行シェル、Atomエディタからの自動実行なども含んでいます。

## 概要

  1. ansibleモジュール環境が整備されています。
  2. コマンドインターフェイスを持ちます。

## 構成
  ユーザールートの直下にプロジェクトフォルダがあり、その下に「ansible」フォルダがある
  という構造を前提としています。
  1. ansible.cfgは自動的に「ansible」フォルダ下にコピーされます。
  2. hostsはこのフォルダの下にある想定です。
  3. hosts,configのテンプレートがコピーされます。
  4. atom用インターフェイスファイルが用意されます。

## 使い方
  1. https://github.com/m0kimura/ansible.git　からクローンします。
  2. ansibleフォルダに移動し、「./docker.sh」で簡単に開始できます。　ただし、これは学習モードですので、study-projectフォルダをユーザールートに作成しておいてください。
  3. プロジェクト直下に「ansible」フォルダが必要です。
  4. 「./docker.sh プロジェクトフォルダ」でプロジェクトフォルダで以下のコマンドが実行できます。
  5. atomインターフェイスを使う場合は「https://github.com/m0kimura/our-ide
  」を.atom/packages配下にクローンします。
  6. atomインターフェイスを使う場合はvisudoにより「ユーザー ALL=NOPASSWD: ALL」を追加します。

## コマンドインターフェイス
  1. 「lex setup template」テンプレートを環境にコピーします。
  1. 「lex setup config」でssh用configが「.ssh」フォルダにコピーされます。
  2. 「lex ping」すべてのホストにpingを送ります。
  3. 「lex syntax ファイル名」playbookの文法チェックを行います。
  4. 「lex play ファイル名」playbookを実行します。

## ライセンス

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## 作者

[m0kimura](https://github.com/m0kimura)
[サイト](https://www.kmrweb.net/)
