---
title: Mettre au point un feuille de style
taxonomy:
    category: docs
---
### Mettre au point un feuille de style
Voici quelques conseils pour mettre au point une feuille de style bien
écrite (c-à-d facilement lisible, facilement modifiable, etc) :

-   Le plus souvent, vous aurez besoin d’une *template* pour l‘élément
    racine.
-   Ensuite essayer d‘établir une correspondance entre les éléments du
    document d’entrée et les fragments du document de sortie.
-   Codez l‘écriture de ces fragments dans des templates séparées.
-   Évitez les &lt;xsl:for-each&gt; : préférez les
    &lt;xsl:apply-templates&gt;
-   Lors de l‘écriture d’une *template* réfléchissez toujours au
    *contexte local* (Où est-on, dans quel noeud dans l’arbre d’entrée
    ?)
-   Pour comprendre ce qui se passe, utilisez des &lt;xsl:message&gt; et
    regardez les sorties sur la console.
-   Construisez votre feuille de style pas-à-pas, en l'essayant à chaque
    étape : les erreurs seront plus faciles à trouver.
