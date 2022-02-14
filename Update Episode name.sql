UPDATE Episode
   SET [Title] = CONCAT(Title, '_CANCELLED')
   WHERE DoctorID IS NULL;
