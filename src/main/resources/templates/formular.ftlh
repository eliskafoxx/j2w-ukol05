[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="container">
    <h1>Registrace na letní dětský tábor</h1>

    <form class="registrace" action="/" method="post">

        <label for="jmeno" class="radek">Jméno:</label>
        [@spring.formInput path="form.jmeno"/]
        <div class="error">[@spring.showErrors"<br>"/]</div>


        <label for="prijmeni" class="radek">Příjmení:</label>
        [@spring.formInput path="form.prijmeni"/]
        <div class="error">[@spring.showErrors"<br>"/]</div>


        <label for="birthDate" class="radek">Datum narození:</label>
        [@spring.formInput path="form.birthDate" fieldType="date"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="vek" class="radek"></label>
        [@spring.formInput path="form.vek" fieldType="hidden"/]
        <div class="error">[@spring.showErrors"<br>"/]</div>


        <label for="pohlavi" class="radek">Pohlaví:</label>
        [@spring.formSingleSelect path="form.pohlavi" options={
        "": "",
        "Žena": "Žena",
        "Muž": "Muž"
        }/]
        <div class="error">[@spring.showErrors"<br>"/]</div>


        <label for="turnus" class="radek">Turnus:</label>
        [@spring.formSingleSelect path="form.turnus" options={
        "": "",
        "Turnus 01": "05.07.2024 - 19.07.2024",
        "Turnus 02": "19.07.2024 - 26.07.2024",
        "Turnus 03": "26.07.2024 - 09.08.2024",
        "Turnus 04": "09.08.2024 - 16.08.2024",
        "Turnus 05": "16.08.2024 - 30.08.2024"
        }/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="telefon" class="radek">Telefon:</label>
        [@spring.formInput path="form.telefon"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</div>
</body>
</html>
