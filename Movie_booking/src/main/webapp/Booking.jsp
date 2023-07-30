
<html>
<head>
<link rel="stylesheet" href="bookings.css">
</head>
<body>

<section class="ser" id="ser">
<div>
<form action="/book" method="post">
<div class="flex-container">
<label for="movie">Movie:</label>
<select name="movie" id="movie">
<option value="Oppenheimer">Oppenheimer</option>
<option value="Bro">Bro</option>
<option value="Salaar">Salaar</option>
<option value="Leo">Leo</option>
<option value="Pushpa2">Pushpa2</option>
</select>
</div>
<div class="flex-container">
<label for="city">City:</label>
<select name="city" id="city">
<option value="Vijayawada">Vijayawada</option>
<option value="Gavernpet">Gavernpet</option>
<option value="Machavaram">Machavaram</option>
</select>
</div>
<div class="flex-container">
<label for="timing">Timing:</label>
<select name="timing" id="timing">
<option value="10:00 AM">10:00 AM</option>
<option value="12:00 PM">12:00 PM</option>
<option value="2:00 PM">2:00 PM</option>
</select>
</div>
<div class="flex-container">
<label for="seats">Number of seats:</label>
<input type="number" name="seats" id="seats" min="1" max="30">
</div>
<div class="flex-container">
<label for="seatnumbers">Seat numbers:</label>
<input type="text" name="seatnumbers" id="seatnumbers" placeholder="1, 2, 3, 4, 5">
</div>
<input type="submit" value="Book">
</form>
</div>
</div>
</section>
</body>
</html>