# README

## usersテーブル

| Column             | Type           |Options                    |
|--------------------|----------------|---------------------------|
| email              | string         | null: false, unique: true |
| encrypted_password | string         | null: false               |

### Association

## carsテーブル

| Column             | Type           |Options                    |
|--------------------|----------------|---------------------------|
| maker              | string         | null: false               |
| vehicle_type       | string         | null: false               |
| grade              | string         | null: false               |
| model              | string         | null: false               |
| model_year         | integer        | null: false               |
| mileage            | integer        | null: false               |
| market_price       | integer         | null: false               |

