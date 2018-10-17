---
title: Gestion des caractères d'espacement en XSLT
taxonomy:
    category: docs
---
### Gestion des caractères d'espacement en XSLT
Un document XML peut contenir des caractères d’espacement (blancs,
tabulations, sauts de ligne) pour des raisons de présentation. Selon les
circonstances, on peut vouloir préserver ou supprimer ces espaces lors
d’une transformation XSLT.

#### Suppression/préservation des nœuds textuels « vide »

Un document XML contient généralement entre les nœuds éléments de
nombreux nœuds textuels ne contenant que des blancs, des tabulations ou
des sauts de ligne. Ces nœuds textuels peuvent être sémantiquement
important, comme dans le cas de *contenu mixte*. Dans d'autre cas, ces
nœuds peuvent être ignorés.
Lors de la lecture du document d’entrée par le moteur XSLT, les nœuds
textuels ne contenant que des espaces (\#x20, \#x9, \#xD ou \#xA)
peuvent être supprimés (ils doivent l‘être d’après la recommandation,
pas toujours en réalité).

Les éléments de haut niveau &lt;xsl:strip-space&gt; et
&lt;xsl:preserve-space&gt; permettent de modifier ce comportement par
défaut.

Voir par exemple [cette feuille de style](/static/exemples/xslt/ex4.xsl)
appliquée à [ce fichier XML](/static/exemples/xslt/ex4.xml).

#### « Normalisation » des espaces dans les noeud textuels : normalize-space()

Dans l’exemple suivant :
```xml
<nom>
        A.
        Halperin
     </nom>
```

la valeur du noeud texte fils de d'élément __nom__ est (\_ correspond à un espace,↲ à un saut de
ligne) :
```text
↲
________A._↲
________Halperin↲
______
```
`<xsl:value-of select="normalize-space(nom)"/>` permet d’obtenir :
A._Halperin
