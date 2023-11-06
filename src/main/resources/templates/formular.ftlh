[#ftl]
[#import "/spring.ftl" as spring]
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
        <h1>Registrace na letní dětský tábor</h1>
        <form action="/" method="post">
            <div class="form-group mt-5">
            <label for="jmeno">Jméno:</label>
            [@spring.formInput path="form.jmeno" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="form-group">
            <label for="prijmeni">Příjmení:</label>
            [@spring.formInput path="form.prijmeni" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="form-group">
            <label for="datumNarozeni">Datum narození:</label>
            [@spring.formInput path="form.datumNarozeni" fieldType="date" /]
            </div>

            <div class="form-group">
            <label for="pohlavi">Pohlaví:</label>
            [@spring.formSingleSelect path="form.pohlavi" options={
            "": "",
            "1": "Chlapec",
            "2": "Dívka"
            } /]
                <div>[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="form-group">
            <label for="turnus">Turnus:</label>
            [@spring.formSingleSelect path="form.turnus" options={
            "": "",
            "turnus-1": "5. až 11. července",
            "turnus-2": "12. až 18. července",
            "turnus-3": "9. až 25. července"
            } /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="form-group">
            <label for="email">E-mail:</label>
            [@spring.formInput path="form.email" fieldType="email" /]
            </div>

            <div class="form-group">
            <label for="telefon">Telefon:</label>
            [@spring.formInput path="form.telefon" /]
            </div>

            <button type="submit" class="btn btn-primary mt-3">Odeslat</button>
        </form>
    </main>
</body>
</html>
