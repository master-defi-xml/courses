#! /usr/bin/python
#-*- coding: utf-8 -*-

# Création noeud par noeud du XML suivant :
# <couleurs>
#    <couleur rgb="FF0000">rouge</couleur>
#    <couleur rgb='00FF00">vert</couleur>
# </couleurs>

# Pour en savoir plus : lancez la commande 
# pydoc libxml2 
# dans une console

import libxml2
# Construction du document et de son élément racine
doc = libxml2.newDoc('1.0')
root = doc.newDocNode(None,'couleurs',None)
doc.setRootElement(root)

# Construction des éléments 'couleur'
node1 = doc.newDocNode(None,'couleur','rouge');
node1.newProp('rgb','FF0000')
root.addChild(node1)
node2 = doc.newDocNode(None,'couleur','vert');
node2.newProp('rgb','00FF00')
root.addChild(node2)

# Sauvegarde dans un fichier 'couleurs.xml'
doc.saveFormatFile('couleurs.xml',1)

doc.freeDoc()
