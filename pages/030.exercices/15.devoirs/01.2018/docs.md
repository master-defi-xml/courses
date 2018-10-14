---
title: DEVOIR 2017-2018
taxonomy:
    category: docs
---

# M2 DEFI XML  - DEVOIR 2017-2018

## Contexte

La région Aquitaine met à disposition des « données ouvertes », dont [certaines dans un format XML](https://www.datalocale.fr/dataset?res_format=XML) .

Vous pouvez remarquer que le format choisi présente les caractéristiques suivantes :

* il est très plat : peu de niveaux hiérarchique ;
* il exploite peu les possibilités d'XML, et en particulier, il ne comporte pas d'attributs ;
* les valeurs textuelles comportent une sorte de balisage  (le caractère '#' est divisiblement un séparateur) ;
* le choix du nom des éléments n'est pas très cohérent, présentant un mélange de majuscules et de minuscules ;
* certaines balises sont présentes, mais sont vides.

Le but de ce devoir est d'améliorer la structuration de ces documents. Pour cela vous allez mettre au point et utiliser une série de transformations __XSLT 1.0__.

## Indications

* Afin que vous ne soyez pas bloqué par une étape, je  vous fournis les documents XML que vous devez obtenir (à part le HTML de la dernière question).
* Les espaces et sauts de ligne dans les documents que vous obtenez n'ont ici pas d'importance. Vous pouvez rendre plus lisible vos document avec la commande `xmllint --format`.
* Pour les transformations XML vers XML, vous avez fortement intérêt à partir de la transformation « identité », vue en cours.
* L'outils __xsltproc__ permet de travailler en XSLT __1.0__ uniquement : vérifiez ce point si vous cherchez de la documentation sur internet.
* Vous rendez un travail individuel : deux copies fortements identiques seront considérées comme de la fraude. Cela n'empêche pas l'entraide, mais vous devez rendre votre travail, pas celui du copain ou de la copine.


## Préparation

### Répertoire de travail

Dans votre espace de travail, créez un répertoire `devoir_<votre_nom>` (par exemple `devoir_jorda`). Tous les fichiers de votre devoir devront se trouver dans ce répertoire.

### Les fichiers à récupérer

Dans ce répertoire, lancez la commande pour récupérer les fichiers nécessaires au devoir :

	git clone https://github.com/master-defi-xml/devoir-2017-2018.git .

(le point à la fin de la commande évite qu'un répertoire `devoir-2017-2018` ne soit créé, mais ça ne fonctionne que si votre répertoire de travail est vide).

#### Les données d'entrées

Les données sont contenues dans les fichiers `liste-xml-*.xml`.
À titre d'exemple, nous utiliserons le fichier `liste-xml-plages-activites-plage-aquitaine.xml`.


#### La feuille de style `itemize.xsl`

Vous allez devoir appliquer cette feuille de style courte mais un peu compliquée : `itemize_xml.xsl`.


## Préparation

__E0.__ Afin de préparer votre travail, faite la liste des noms des éléments fils de l'élément __OFFRE__.

## Étape 1 : ajout d'éléments par structuration du texte

### Documents
* Entrée :  ``liste-xml-sites-produits-IGP-aquitaine.xml
* Feuille de style : `itemize.xsl` (FOURNIE !)
* Sortie :  `etape1.xml`

### À faire

__E1.__ Appliquer la feuille de style `itemize_xml.xsl` au document `liste-xml-sites-produits-IGP-aquitaine.xml`.


## Étape 2 : un peu de nettoyage

### Documents

* Entrée :  `etape1.xml`
* Feuille de style : `nettoie.xsl`
* Sortie :  `etape2.xml`

### À faire

__E2.__ Mettez au point une feuille de style `nettoie.xsl` permettant :

* de supprimer les éléments __br__   ;
* de supprimer l'élement fils de __modeles__ (__modele\_[un\_identifiant\_compliqué]__), en conservant son contenu ;
* de supprimer les éléments dont le contenu  est vide (pas de noeuds fils de type texte et pas d'éléments fils) ;
* de renommer les éléments suivants :

    - __modeles__ en __LISTE_OFFRE__
	- __offre__ en __OFFRE__

Appliquez cette feuille de style  `nettoie.xsl` sur le fichier `etape1.xml`. Vous devez obtenir en sortie un document similaire à `etape2.xml`.

## Étape 3 : un peu plus de structure

### Documents

* Entrée :  `etape2.xml`
* Feuille de style : `ajoute_structure.xsl`
* Sortie :  `etape3.xml`

### À faire

__E3.__ Mettez au point une feuille de style `nettoie.xsl` permettant :

* de placer le contenu des éléments __INFOS\_COMPLEMENTAIRES\___n_ (_n_ = 1, 2 ou 3) dans des éléments __INFO__, contenu dans un élément __LISTE\_INFO__ :

			<INFOS_COMPLEMENTAIRES_1>tata</INFOS_COMPLEMENTAIRES_1>
			<INFOS_COMPLEMENTAIRES_2>toto</INFOS_COMPLEMENTAIRES_2>
			<INFOS_COMPLEMENTAIRES_3>tutu</INFOS_COMPLEMENTAIRES_3>

devient :

	<LISTE_INFOS>
		<INFO>tata</INFO>
		<INFO>toto</INFO>
		<INFO>tutu</INFO>
	</LISTE_INFOS>

* de placer les éléments __LONGITUDE__, __LATITUDE__, __PORTE_ESCALIER__, __BATIMENT_RESIDENCE__, __RUE__, __LIEUDIT_BP__, __CODE_POSTAL__, __COMMUNE__ dans un élément container __LOCALISATION__.


## Étape 4 : un peu d'attributs

### Documents

* Entrée :  `etape3.xml`
* Feuille de style : `ajoute_attributs.xsl`
* Sortie :  `etape4.xml`

### À faire
__E4.__  Mettez au point une feuille de style `ajoute_attributs.xsl` permettant d'ajouter des attributs aux éléments __OFFRE__, avec les correspondances suivantes :

* __ID__ devient un attribut  ___xml:id___;
* __DATE_DERNIERE_MAJ__ devient un attribut  ___date-maj___ ;
* __TYPE__ devient un attribut  ___type___;

Les éléments __ID__,  __DATE_DERNIERE_MAJ__ et __TYPE__ ne doivent plus apparaitre dans le document de sortie.


## Et maintenant, exploitons le document !
Pour les questions suivantes, vous travaillerez en utilisant le fichier `etape4.xml`.

### Requêtes xpath


__E5.__ Donnez des chemins  __XPATH absolus__ permettant d'obtenir les informations suivantes :

1. La liste des sites web ;
1. Le nom des offres (__NOM\_OFFRE__) de type "Producteur" ;
1. La liste des offres (__NOM\_OFFRE__) pour lequelles il n'y a pas de site web (__SITE\_WEB__) ;
1. La liste des  offres (__NOM\_OFFRE__) où l'on peut trouver du fois gras ;
1. La liste des sites web des offres avec le label (__MARQUES_LABELS__) « Bienvenue à la Ferme » (attention aux majuscules !) ;
1. Les identifiants  (attribut _xml::id_) des  offres mise à jour le 28/11/2014.


### Transformation en HTML
* Entrée :  `etape4.xml`
* Feuille de style : `transfo_html.xsl`
* Sortie :  `etape5.html`

__E6.__ Mettez au point une feuille de style XSLT permettant de transformer  en HTML la 10ième offre de la liste. Vous être libre du choix de la présentation.


## Envoyez votre devoir.

Vous devez envoyer votre devoir sous la forme d'une archive __.zip__ ou __.tar.gz__ (vous pouvez utilisez pour cela la fonction « download » de votre espace codeanywhere.com). Cette archive devra contenir les feuilles de style que vous avez conçues et votre fichier texte contenant les expressions xpath :

*  `nettoie.xsl`
* `ajoute_structure.xsl`
* `ajoute_attributs.xsl`
*  `transfo_html.xsl`


L'archive est à envoyer à __defi@jpjorda.fr__.
