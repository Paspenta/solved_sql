/* 問題
テーブルauthorsから性別ごとの著者数を抽出せよ。また、著者数の降順で並び替え
出力項目はgenderとnum(著者数)
*/

SELECT
	  gender,
    COUNT(id) AS num
FROM authors
GROUP BY gender
ORDER BY num DESC;
