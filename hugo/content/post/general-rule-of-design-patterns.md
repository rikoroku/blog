---
title: "デザインパターン5原則"
date: 2019-03-23T00:46:06Z
draft: true
---

## 基本原則
1. 変わるものを変わらないものから分離
- インターフェイスに対してプログラミングし、実装に対して行わない
- 継承より集約
- 委譲、委譲、委譲(delegation)
- YAGNI(You Ain't Gonna Need It) - 必要になるまで作るな

## 変わるものを変わらないものから分離

前提として、仕様の変更は必ず起こる。

変わるものと変わらないものを分離することで、システムの変更をより少ない範囲に留めることを目的としている。

例: テンプレートメソッド, ストラテジ

## インターフェイスに対してプログラミングし、実装に対して行わない

個別のロジックをただ組み合わせるのではなく、抽象度が高くなるよう実装する。

**例:**

具象性が高い、密結合なもの - コンテンツが増えるたびにコード全体に変更が必要。

```
if is_post
  post = Post.new(title: "foo", body: "bar")
  post.save
else
  page = Page.new(title: "foo page", body: "bar page")
  page.store
end
```

抽象度が高く、疎結合 - コンテンツが増えてもこのコードに変更を加えなくて良い。

```
content = get_content
content.create
```

## 継承より集約
継承は以下のような良くない繋がりを作る。

1. サブクラスの振る舞いがスーパークラスの振る舞いに依存してしまう。
- サブクラスからスーパークラスの中身が分かる。->カプセル化が出来ていない。

**例:**

```
class Vehicle
  def start_engine
    # 処理省略
  end

  def stop_engine
    # 処理省略
  end
end

class Motorbike < Vehicle
  def drive
    start_engine
    # 中間処理省略
    stop_engine
  end
end
```

これでは、エンジンを使用しない車両を作りたい場合に、Vehickeクラスに専用のメソッドを定義しないといけなく単一責任原則から外れてしまう。

また、変わりやすい部分(Engine)を、変わりにくい部分(Vehicle)から分離できていない。

**解決策:**

オブジェクトに他のオブジェクトに対する参照を持たせる。

オブジェクトが何かの一種である(is-a-kind-of)関係ではなく、何かを持っている(has-a)の関係にする。

```
class Car
  def initialize
    @engine = Engine.new
  end

  def drive
    @engine.start
    # 中間処理省略
    @engine.stop
  end
end

class Engine
  def start
    # 処理省略
  end

  def stop
    # 処理省略
  end
end
```

## 委譲、委譲、委譲(delegation)

クラスのメソッドを公開したい場合でも処理の実態は委譲する。

```
class Car
  def initialize
    @engine = GasolineEngine.new
  end

  def drive
    @engine.start
    @engine.stop
  end

  def switch_to_diesel
    @engine = DieselEngine.new
  end

  def start_engine
    @eigine.start
  end

  def stop_engine
    @eigine.stop
  end
end
```

## YAGNI(You Ain't Gonna Need It) - 必要になるまで作るな

**「将来使うかも」は、大抵は使わない**

必要になった時に必要な分だけの実装を行う。

## 参考

下記記事と同じ内容です。サンプルコードは他に良い例が思いつかずそのまま使っています。

https://qiita.com/kidach1/items/4b63de9ad5a97726c50c
