---
title: Déclaration XML
taxonomy:
    category: docs
---

### La déclaration XML
Un document XML  __commence par une  déclaration XML__ :
```xml
<?xml version="1.0" ?>
```

Il est possible de déclarer en sus :

* l'encodage du document (__UTF-8__ par défaut)
* le fait que des déclarations externes (dans une DTD) peuvent être nécessaires pour parser le document.

```xml
<?xml version="1.0"  encoding="ISO-8859-1" standalone="no"?>
```

__NOTE :__ La norme XML recommande, mais n'impose pas, la présence de la déclaration.
