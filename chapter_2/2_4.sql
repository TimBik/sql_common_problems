CREATE VIEW V AS
SELECT ename || ' ' || deptno as data
FROM emp;

SELECT *
FROM V;

-- translate(data, '0123456789', '##########') - заменит все цифры на символ '#'
-- replace(data_with_digit_as_#, '#', '') - уберет все знаки '#' -> останутся только буквы
-- replace(data, data_without_digits, '') - из строк data уберет начальные буквы, так как в data_without_digits хранится начальное слово
SELECT data,
       replace(data,
               replace(
                       translate(data, '0123456789', '##########'), '#', ''), '') nums,
       replace(
               translate(data, '0123456789', '##########'), '#', '')              chars
FROM V;


SELECT data,
       replace(data, chars, '') nums,
       chars
FROM (SELECT data,
             replace(
                     translate(data, '0123456789', '##########'), '#', '') AS chars
      FROM V) x
;