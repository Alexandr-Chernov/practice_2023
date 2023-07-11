-- Создание таблицы-справочника Days
CREATE TABLE Days (
  DayID SERIAL PRIMARY KEY,
  Day VARCHAR(2000),
  Report_date DATE
);