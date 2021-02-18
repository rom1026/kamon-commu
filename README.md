# アプリケーション説明
アプリケーション名	:kamon-commu

アプリケーション概要	:自分の家紋を知ることで、自分の過去を知る。自分の事を知ることで、今の自分を好きになる。そんなSNS。

URL	：

テスト用アカウント	：

利用方法	：トップページで家紋を選びその中で話ができる。

目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決したかったかを書きましょう。

洗い出した要件	スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。

実装した機能についてのGIFと説明	実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。

実装予定の機能	洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。

データベース設計	ER図等を添付しましょう。

ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れない
でください（パッケージやRubyのバージョンなど）。


# DB 設計

## users table

| Column              | Type                | Options                  |
|---------------------|---------------------|--------------------------|
| nickname            | string              | null: false              |
| email               | string              | null: false,unique: true |
| encrypted_password  | string              | null: false              |
| last_name           | string              | null: false              |
| first_name          | string              | null: false              |
| kamon_id            | integer             | null: false              |
| birth_date          | date                | null: false              |

### Association

* has_many :items
* has_many :user_order


## items table

| Column              | Type                | Options                |
|---------------------|---------------------|------------------------|
| product_name        | string              | null: false            |
| product_details     | text                | null: false            |
| category_id         | integer             | null: false            |
| product_status_id   | integer             | null: false            |
| shipping_charge_id  | integer             | null: false            |
| prefecture_id       | integer             | null: false            |
| days_to_ship_id     | integer             | null: false            |
| selling_price       | integer             | null: false            |
| user                | references          | foreign_key: true      |


### Association

- belongs_to :user
- has_one :user_order

## orders table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| user               | references          | foreign_key: true       |
| item               | references          | foreign_key: true       |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## address table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| postal_code        | string              | null: false             |
| prefecture_id      | integer             | null: false             |
| municipality       | string              | null: false             |
| address            | string              | null: false             |
| building_name      | string              |                         |
| phone_number       | string              | null: false             |
| order              | references          | foreign_key: true       |

### Association

- belongs_to :orders
