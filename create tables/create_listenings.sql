-- Создание таблицы-факта Listenings
CREATE TABLE Listenings (
  ID SERIAL PRIMARY KEY,
  userID VARCHAR(2000),
  TrackID INT,
  CityID INT,
  DayID INT,
  time VARCHAR(2000),
  Report_date DATE,
  FOREIGN KEY (userID) REFERENCES Users(userID) ON DELETE SET NULL,
  FOREIGN KEY (TrackID) REFERENCES Tracks(TrackID) ON DELETE SET NULL,
  FOREIGN KEY (CityID) REFERENCES Cities(CityID) ON DELETE SET NULL,
  FOREIGN KEY (DayID) REFERENCES Days(DayID) ON DELETE SET NULL
);