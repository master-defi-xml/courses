---
title: Structuration d'offres d'emploi
taxonomy:
    category: docs
---

### Structuration d'offres d'emploi en xml


#### Objectifs

* Savoir utiliser codeanywhere ;
* Savoir mettre en œuvre les règles de la recommandation xml ;
* Savoir vérifier en ligne de commande qu'un document est _bien formé_, au sens XML.


#### Préparation

Pour cette exercice, vous utiliserez votre espace de travail codeanywhere. Si ce n'est déjà fait, à la racine de votre espace de travail, créez un répertoire `exercices`, et dans ce répertoire, un autre répertoire `offre_emploi`.

Vous travaillerez dans ce répertoire `exercices/offre_emploi/`.

#### Exercice


##### 1. Structuration
En vous inspirant d'exemples d'offres d'emploi, proposez une structuration possible pour ce type de document, en insistant sur les aspects "sémantiques" plutôt que sur la présentation.

Présentez votre travail sous la forme d'un arbre, en utilisant du texte indenté : créez pour cela un fichier `schema.txt`.

Vous noterez les cardinalités des différents nœuds avec les symboles suivants :

    + : 1 ou plus
    * : 0 ou plus
    ? : 0 ou 1
    Pas de symbole si 1 élément et 1 seul.


Par exemple :

    * offre
            -> langage
            -> titre
            -> date de publication
            -> date de réponse ?
            -> liste de compétences requises ?
                -> compétence+

_NOTE :_ Ce shéma abstrait ne dit rien du nom des balises, ni du choix de représenter une information par un élément ou un attribut.



##### 2. Exemples XML
Essayez de composer __deux documents XML__ à partir de deux exemples d'offres d'emploi. Créez pour cela deux documents, `exemple1.xml` et `exemple2.xml`.  Inventerez un vocabulaire cohérent (français ou anglais, « CamelCase » ou séparé-par-des-tirets ou séparé\_par\_des\_underscores)
et faites un choix judicieux d'éléments ou d'attributs.

Vérifiez que ces deux documents sont bien formés, en utilisant le programme `xmllint` en ligne de commande.


##### 3. OPTIONNEL : mise au point d'une DTD

Pour ceux qui connaissent, exprimez votre schéma de structuration sous la forme d'une DTD et utilisez la pour vérifier la validité de vos deux documents.



### Complément

Un exemple de schéma XML existant pour les offres d'emploi : celui d'[Euraxess](https://euraxess.ec.europa.eu/api/xmlguidelines)
