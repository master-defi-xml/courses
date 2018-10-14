---
title: Création et configuration d'un espace de travail sur codeanywhere.com
taxonomy:
    category: docs
---
## Création et configuration d'un espace de travail sur codeanywhere.com
__Conseil :__ Utilisez le navigateur « chrome », car les copier-coller ne semble pas marcher dans « firefox ».

### Création du compte

* Connectez-vous  sur https://codeanywhere.com
* Cliquez sur « Sign up » : vous recevrez un message de vérification
* Cliquez sur le lien de vérification* Quand le  compte est crée, accédez à l'éditeur

### Création du « container »

Dans la boite de dialogue « Connection Wizard » :

* dans la colonne de gauche, laisser « Container »
* Remplissez le nom : defi2_2018_<votre_nom> (ex: `defi2_2018_jorda`)
* choisissez le stack « Blank » Unbuntu 14.04
* appuyez sur « CREATE »
* attendez que le container soit créé.

### Installation de paquet pour les outils XML et XSLT

__Conseil :__ Utilisez Ctrl-c Ctrl-__shift__-v pour copier-coller les commandes.


Dans l'onglet de gauche (la __console de commande__), tapez les commandes (puis touche « Entrée ») :

* `sudo apt-get update`
* `sudo apt-get install -y libxml2-utils xsltproc tree vim bash-completion man-db`
* Lancez les commandes `xmllint` puis `xsltproc` pour vérifier qu'elles sont bien installées (vous devez obtenir un message expliquant l'utilisation de ces commandes).

### Partagez votre « projet »

Un projet par défaut est crée dans votre espace de travail. Pour que je puisse y  accéder pour voir vos exercices, vous devez inviter l'utilisateur `defi2@jpjorda.fr`. Pour cela :

* dans la colonne de gauche, faites un clique droit sur le nom du projet (« Default »), et cliquez sur « share project ».
* Ajoutez l'adresse email  `defi2@jpjorda.fr`.
