# FDLimitChecker

## 概要

iOSでファイルデスクリプタを同時に開くことが出来る数をチェックする為のXcodeプロジェクトです。

## 使い方

1. プロジェクトをXcodeでビルド
2. 取得ボタンを押す

### Soft Limit
１プロセスで同時に開くことが出来るファイルの最大値です。

### Hard Limit
スーパーユーザーは0からHard Limitの間でSoft Limitを変更することが可能です。但し、iOSではスーパーユーザーになることが出来ない為、意味を持たない。

## 参考URL

https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getrlimit.2.html
