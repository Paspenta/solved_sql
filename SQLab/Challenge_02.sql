/* テーブル
book_sales
    各店舗にある本とその在庫、売り上げた数を記録
books
    本の題名を記録
*/
/* 問題
どの店舗にも在庫がない書籍のタイトルを抽出せよ
*/

SELECT name
FROM
    book_sales
    JOIN books ON books.id = book_sales.book_id
GROUP BY name
HAVING SUM(stock) = 0;
