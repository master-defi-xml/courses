---
title: Utiliser XML Copy Editor
taxonomy:
    category: docs
---
## Utiliser XML Copy Editor 
Voici quelques astuces pour utiliser XML Copy Editor.

### Notation de l'encodage

Bien que la norme XML précise que la notation de l'encodage est
insensible à la casse, XML Copy Editor affichera un message d'erreur à
l'enregistrement d'un fichier si l'on a &lt;xml version="1.0"
encoding="utf-8"?&gt; au lieu de &lt;xml version="1.0"
encoding="UTF-8"?&gt; *Cela n'a pas de conséquence* (le fichier est
quand même enregistré).

 {#section}

Le message :

    Cannot save document in utf-8: Error at line 1, column 1: Start tag expected, '<' not found (saved in default encoding UTF-8)
