---
title: 'DEVOIR 2018-2019'
taxonomy:
    category:
        - docs
---

#  M2 DEFI XML  - DEVOIR 2018-2019

__À rendre avant le mercredi 7 novembre__

## Présentation

L'équipe du [LIGM](http://infolingu.univ-mlv.fr/) de l'université Paris-Est met à disposition (Licence : [Lesser General Public License For Linguistic Resources](http://infolingu.univ-mlv.fr/DonneesLinguistiques/Lexiques-Grammaires/lgpllr.html)) des ressources linguistiques au format XML.
Le téléchargement est disponible [ici](http://infolingu.univ-mlv.fr/DonneesLinguistiques/Dictionnaires/telechargement.html) (mais est également fourni dans les fichiers à récupérer pour le devoir : voir ci-après). 

Dans ce devoir, nous allons étudier comment extraire de l'information de l'une de ces ressources, le _Dictionnaire DELA fléchi du français_.

## Indications

* Afin que vous ne soyez pas bloqué par une étape, je  vous fournie les documents XML que vous devez obtenir.
* Pour les transformations XML vers XML, vous avez fortement intérêt à partir de la [transformation « identité
 »](https://xml.jpjorda.fr/cours/xslt/identity), vue en cours.
* L'outils __xsltproc__ permet de travailler en XSLT __1.0__ uniquement : vérifiez ce point si vous cherchez
de la documentation sur internet.

## Consignes

* Vous rendez un travail individuel : deux copies fortement identiques seront considérées comme de la fraude
. Cela n'empêche pas l'entraide, mais vous devez rendre votre travail, pas celui du copain ou de la copine.
* Vous noterez dans un fichier `devoir.txt` (ou un fichier type word ou libre/open-office si vous préférez) :
  * vos expressions XPath avec les numéros des questions ;
  * _des indications sur ce que vous n'avez pas réussi à faire_.


## Préparation

### Répertoire de travail

Dans votre espace de travail, créez un répertoire `devoir_<votre_nom>` (par exemple `devoir_jorda`). Tous les
 fichiers de votre devoir devront se trouver dans ce répertoire.

### Les fichiers à récupérer

Dans la console, placez vous dans ce répertoire, et  lancez la commande pour récupérer les fichiers nécessaires au devoir :

	git clone https://github.com/master-defi-xml/devoir-2018-2019.git .

(le point à la fin de la commande évite qu'un répertoire `devoir-2018-2019` ne soit créé, mais ça ne fonctionne que si votre répertoire de travail est vide).

(Vous pouvez également récupérer [l'ensemble des fichiers](https://github.com/master-defi-xml/devoir-2018-2019/archive/master.zip) dans une archive zip.   

### Désarchivage du dictionnaire
Dans le répertoire de travail, désarchivez le dictionnaire :

```bash
unzip  dela-fr-public-u8-xml.zip
```



## 1. Préparation d'un extrait du dictionnaire

Le dictionnaire est volumineux (167Mo) : il n'est pas recommandé d'essayer de l'éditer. Cela implique également des temps de traitement non négligeable. Notre première étape consiste donc à créer un fichier contenant un extrait du dictionnaire pour pouvoir travailler plus confortablement.

* a. Donnez l'expression XPath permettant de compter le nombre d'élément fils de l'élément racine. L'expression doit être générale : elle doit pouvoir s'appliquer à n'importe quel type de document, indépendamment du nom des éléments.
* b. Donnez l'expression XPath permettant de sélectionner 200 éléments fils de l'élément racine à partir du 2000ième (les éléments 2001 à 2200).
*  c. Mettez au point une feuille de style XSLT (que vous appellerez `extrait.xsl`) permettant de construire un extrait du dictionnaire comportant  l'élément racine et 200 éléments fils de l'élément racine à partir du 2000ième (les éléments 2001 à 2200). Appliquez cette feuille de style au document  `dela-fr-public-u8.dic.xml`. _Vous devez obtenir un document identique à_ `dela-fr-public-u8-petit-extrait.dic.xml`.

## 2. Étude du format

a. Étudiez l'extrait `dela-fr-public-u8-petit-extrait.dic.xml` et proposer une représentation arborescente du format (appelez votre fichier `schema_format.txt`).

Par exemple : 

```
un_element_obligatoire [@un_attribut, @un_autre_attribut] --> un_autre_element_optionnel* --> text()
                                                          --> un_element_vide[@un_attribut]
                                                           .....
```

b. Donnez les expressions XPath absolues permettant d'adresser :

* le nombre d'éléments `<entry>` ;
* tous les éléments `<lemma>` ;
* les élements `<lemma>` décrivant des verbes (c.-à-d. dont l'attribut _name_ de `<pos>` vaut "verb") ;
* les éléments contenant les formes fléchies (c.-à-d. les éléments `<form>` fils d'`<inflected>`) des verbes.

## 3. Extraction des verbes

Vous allez maintenant utiliser l'extrait `dela-fr-public-u8-petit-extrait.dic.xml` pour mettre au point vos expression XPath et vos feuilles de style XSLT.
Vous allez chercher à extraire du document les entrées (`<entry>`) correspondant à des verbes (comme vous avez du le constater, le type du mot est déterminé par la valeur de l'attribut _name_ de l'élément `<pos>`)

* a. L'élément racine du document est `<dico>`. Si ce nœud est le _contexte courant_, donnez l'expression XPath _relative_ permettant d'adresser les entrées de type « verb ».
* b. Mettez au point une feuille de style XSLT (que vous appellerez `verbes.xsl`) permettant d'obtenir un document contenant uniquement les entrées des verbes.  _Vous devez obtenir un document identique à_ `dela-fr-public-u8-verbes.dic.xml`.

## 4. Extraction et reformatage des formes des verbes

Toujours en partant de  `dela-fr-public-u8-petit-extrait.dic.xml` :

* a. Mettez au point une feuille de style (que vous appellerez `formes_verbes.xsl`) permettant d'extraire une liste de formes des verbes (l'élément `<form>` dans `<inflected>`  __ET__ l'élément `<lemma>`).  _Vous devez obtenir un document identique à_ `liste_verbes.txt`.
* b. Mettez au point une feuille de style  (que vous appellerez `formes_verbes_html.xsl`) permettant de générer une représentation HTML des différentes formes des verbes.  _Vous devez obtenir un document identique à_ `liste_verbes.html`.
* c. Mettez au point une feuille de style (que vous appellerez `formes_verbes_json.xsl`) permettant de générer une structure  [JSON](https://fr.wikipedia.org/wiki/JavaScript_Object_Notation) des différentes formes des verbes. _Vous devez obtenir un document identique à_ `liste_verbes.json`... ou quelque chose s'en approchant le plus possible. Notez que les sauts de ligne et que les espaces entre les différents champs n'ont pas d'importance dans le format JSON.

## Rendu du devoir


Vous devez envoyer votre devoir sous la forme d'une archive _mon-nom_.zip ou _mon-nom_.tar.gz. Cette archive devra contenir les fichiers suivant :
```
    devoir.txt (voir les consignes)
    extrait.xsl
    schema_format.txt
    verbes.xsl
    formes_verbes.xsl
    formes_verbes_html.xsl
    formes_verbes_json.xsl
```

L'archive est à envoyer à defi@jpjorda.fr.
