[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<main>
    <h1>Shrnutí registrace</h1>
    <p><strong>Jméno:</strong> ${jmeno}</p>
    <p><strong>Příjmeni:</strong> ${prijmeni}</p>
    <p><strong>Datum narození:</strong> ${datumNarozeni}</p>
    <p><strong>Pohlaví:</strong> ${pohlavi}</p>
    <p><strong>Turnus:</strong> ${turnus}</p>
    [#if email??]
        <p><strong>E-mail:</strong> ${email}</p>
    [/#if]
    [#if telefon??]
        <p><strong>Telefon:</strong> ${telefon}</p>
    [/#if]
</main>
</body>
</html>