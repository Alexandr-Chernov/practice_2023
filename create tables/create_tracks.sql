-- Создание таблицы-справочника Tracks
CREATE TABLE Tracks (
  TrackID SERIAL PRIMARY KEY,
  Track VARCHAR(2000),
  genreID INT,
  Report_date DATE,
  FOREIGN KEY (genreID) REFERENCES Genres(genreID) ON DELETE SET NULL
);
