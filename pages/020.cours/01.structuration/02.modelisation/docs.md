---
title: Modéliser un document
taxonomy:
    category: docs
---

### Modéliser un document

La modélisation d&#8217;un document consiste à le découper en éléments abstraits constituant autant de &#8220;noeuds&#8221; (dans une représentation arborescente) et à définir les relations structurelles entre ces éléments (par exemple un élément est inclus dans un autre, un élément est avant un autre, etc).

Il y a en général plusieurs façons de modéliser un document en fonction de ce qu'on souhaite en faire. Par exemple, un document de type &#8220;livre&#8221; ne sera pas modélisé de la même façon si l&#8217;on cherche à conserver les informations nécessaires à sa localisation dans une bibliothèque ou si l&#8217;on cherche à en avoir une visualisation du contenu sur le web. De nombreux critères doivent être pris en compte, par exemple :


* la définition claire du type de document à modéliser ;
* l'existence de schémas standards pour le type de document à modéliser ;
* les usages prévisibles ;
* le temps et le budget disponibles ;
* les processus de production ;
* ...

Les __éléments__ peuvent être des _containers_, c-à-d. des éléments contenant uniquement d&#8217;autres éléments, ou des éléments terminaux

À chaque élément est associé :

* un nom ;
* une _cardinalité_ (le nombre d&#8217;occurrence minimal et maximale) ;
* éventuellement, des _attributs_, permettant de noter des propriétés de l&#8216;élément (par ex: la langue).

Pour les éléments terminaux, il faut associer le _type de données_ qu&#8217;il contient. Cela peut être du texte, un mélange de texte et d&#8216;éléments (_contenu mixte_), des chiffres, une année, une date, etc.
