---
title: DTD : déclaration d'attributs
taxonomy:
    category: docs
---
### DTD : déclaration d'attributs

#### Contrainte sur la valeur de l'attribut
<table>
<tr><td><strong>CDATA</strong></td><td>chaîne de caractères                                                                                            </td></tr>
<tr><td><strong>NMTOKEN</strong></td><td>Chaîne de caractères restreinte : lettres, chiffres, [.-:_]      </td></tr>
<tr><td><strong>NMTOKENS</strong></td><td>Liste de valeur de type <strong>NMTOKEN</strong> séparées par des blancs                                                     </td></tr>
<tr><td><strong>ID</strong></td><td>  Chaîne de caractères restreinte : lettres, chiffres, [.-:_]     et doit commencer par un lettre ou '_'. <strong>La valeur doit-être unique dans le document</strong>       </td></tr>
<tr><td><strong>IDREF</strong></td><td>Doit contenir une valeur présente dans le document dans un attribut de type <strong>ID</strong>                 </td></tr>
<tr><td><strong>IDREFS</strong></td><td>Liste de valeurs de type <strong>IDREF</strong> séparées par des blancs                                         </td></tr>
<tr><td><strong>ENTITY</strong></td><td>le nom d'une entité déclaré dans la DTD                                                                        </td></tr>
<tr><td><strong>ENTITIES</strong></td><td>  Liste de valeurs de type <strong>ENTITY</strong> séparées par des blancs                                    </td></tr>
<tr><td><strong>NOTATION</strong></td><td>  Le nom d'une NOTATION déclarée dans la DTD                                                                  </td></tr>
<tr><td><i><b>Énumération</b></i>  </td><td> Liste de valeurs possibles                                                                                           </td></tr>
</table>

#### Obligatoire / pas obligatoire / valeur par défaut / fixe
<table>
<tr><td><strong>#REQUIRED</strong> </td><td> l'attribut est obligatoire</td></tr>
<tr><td><strong>#IMPLIED</strong>  </td><td> l'attribut est optionnel     </td></tr>
<tr><td><strong>#FIXED</strong>    </td><td> la valeur de l'attribut est une constante   </td></tr>
</table>

#### exemple
```xml
<!ELEMENT article (front,body?)>
<!ATTLIST article
dtd-version  CDATA #FIXED "3.0"
article-type NMTOKEN "research-article"
xml:lang (fr|en|de|sp) 'en'
xml:id ID   #REQUIRED
linked-article NMTOKEN #IMPLIED
>
<!ELEMENT front ANY>
<!ELEMENT body ANY>
```
