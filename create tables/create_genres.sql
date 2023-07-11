-- Создание таблицы-справочника Genres
CREATE TABLE Genres (
  genreID SERIAL PRIMARY KEY,
  genre VARCHAR(2000),
  Report_date DATE
);
