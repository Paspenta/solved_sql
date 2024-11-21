/* 問題
店舗毎の書籍の売上(figure*price)をsalesとして出力
店舗名で昇順ソート
*/

SELECT
    name,
    SUM(price * figure) AS sales
FROM
    book_sales
    JOIN stores ON book_sales.store_id = stores.id
GROUP BY name
ORDER BY name;
