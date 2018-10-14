---
title: Associer une DTD à un document
taxonomy:
    category: docs
---
### Associer une DTD à un document

La DTD peut être incluse directement dans le fichier XML ou dans un
fichier à part.
{#dtd-incluse-dans-le-fichier-xml}


```xml
<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE test[
<!ELEMENT test (#PCDATA)>
]>
<test>hello</test>
```

#### DTD dans un fichier à part


1.  Fichier `test.dtd` :

    ```dtd
    <!ELEMENT test (#PCDATA)>
    ```

2.  Document XML :

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <!DOCTYPE test SYSTEM "test.dtd">
    <test>hello</test>
    ```
