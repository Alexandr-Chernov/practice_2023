-- Создание таблицы-справочника Performances
CREATE TABLE Performances (
  TrackID INT,
  artistID INT,
  Report_date DATE,
  FOREIGN KEY (TrackID) REFERENCES Tracks(TrackID) ON DELETE SET NULL,
  FOREIGN KEY (artistID) REFERENCES Artists(artistID) ON DELETE SET NULL
);