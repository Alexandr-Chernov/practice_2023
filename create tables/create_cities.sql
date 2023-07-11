-- Создание таблицы-справочника Cities
CREATE TABLE Cities (
  CityID SERIAL Primary key,
  City VARCHAR(2000),
  Report_date DATE
);