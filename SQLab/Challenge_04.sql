/* 問題
書籍の価格と消費税の一覧を出力
*/

SELECT
    name,
    price,
    price * 0.1 AS tax
FROM
    book_sales
    JOIN books ON books.id = book_sales.book_id;
