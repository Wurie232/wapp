<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Wurie-nyce App</title>
    <script>
        async function fetchWeather() {
            const response = await fetch('weather');
            const data = await response.json();
            document.getElementById('weather').innerText = `City: ${data.city}, Temperature: ${data.temperature}, Condition: ${data.condition}`;
        }
    </script>
</head>
<body onload="fetchWeather()">
    <h1>Welcome to Wurie-nyce App!</h1>
    <p id="weather">Loading weather...</p>
</body>
</html>
