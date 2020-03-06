Ultimate_Townhall

L'équipe est composée de:
- Onja
- Mamy
- Armel
- Fanantenana


Le programme est activé par 2 commandes :
- bundle install
puis rb app.rb

Son but est de promouvoir The Hacking Project auprès des maires de départements français que vous allez choisir.
App.rb administre le programme en faisant appel à toutes les classes du dossier lib, dans cet ordre :
- Index vous demande les départements que vous souhaitez toucher.
- Scrapper crée la base de données provisoire des villes et emails de maires d'un département
- Db_adder ajoute cette base provisoire à la base de données globale (fichier json)
- Gmail_spam envoie un mail à tous les mails selon un template prédéfini
- Done vous donne le bilan du spamming




Le nombre de mairies touchés est reporté par le done.rb en fin d'exécution du programme.
