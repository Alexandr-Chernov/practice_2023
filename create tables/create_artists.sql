-- Создание таблицы-справочника Artists
CREATE TABLE Artists (
  artistID SERIAL PRIMARY KEY,
  artist VARCHAR(2000),
  Report_date DATE
);