<!DOCTYPE html>

<html lang="fr" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Formulaire de contact</title>
</head>
<body>

  <form action="contact" method="post">
    <fieldset id = "fieldset1">
      <legend> Vos coordonnées : </legend>
      <div>
          <label for="Nom">Nom</label>
          <input type="text" id="Nom" name="Nom">
          <label for="Prénom">Prénom</label>
          <input type="text" id="prénom" name="Prénom">
          <label for="e-mail">e-mail</label>
          <input type="text" id="e-mail" name="e-mail">
      </div>
    </fieldset>
    <fieldset id="fieldset2">
      <legend> Votre message : </legend>
        <div>
            <textarea id="destination" name="message" rows="5" cols="33">
              <option value="Corse">
                Corse
              </option>
              <option value="Grèce">
                Grèce
              </option>
              <option value="Italie">
                Italie
              </option>
            </select>
        </div>
        <div>
            <label for="Ville de départ">Ville de départ :</label>
            <select type="select" id="Ville de départ" name="Ville de départ">
              <option value="Paris">
                Paris
              </option>
              <option value="Marseille">
                Marseille
              </option>
              <option value="Lyon">
                Lyon
              </option>
            </select>
        </div>
        <div>
            <label for="durée">Durée :</label>
            <select type="select" id="durée" name="durée">
              <option value="3 jours">
                3 jours
              </option>
              <option value="1 semaine">
                1 semaine
              </option>
              <option value="1 mois">
                1 mois
              </option>
            </select>
        </div>
        <div>
        <label for="date">Date du départ :</label>
        <input id="date" type=date value="jj/mm/aaaa">
        </div>
    </fieldset>
    <div>
      <input id="valider" type=submit value=valider >
    </div>
  </form>

    <?PHP



    ?>

</body>
</html>
