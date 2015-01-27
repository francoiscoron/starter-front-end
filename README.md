# STARTER FRONT END
Dossier de base pour bien commencer mes projets d'intégration front-end. Basé sur le tuto de [grafikart](http://www.grafikart.fr/tutoriels/html-css/sass-libsass-nodejs-553).

# REQUIS

- [NodeJs](http://nodejs.org/)
- [gulp](http://gulpjs.com/)

## INSTALATION
```
$ git clone git@github.com:francoiscoron/starter-front-end.git mon-theme
$ npm install
$ gulp
```
## LISTE DES TACHES
La liste des taches éxecutable avec la commande `gulp`

- **sass** : compile les .scss dans le fichier `style.css`
- **minifyCss** : minifie le fichier `style.css`
- **sprite** : transforme les .png en sprite et en sprite @2x pour le retina. Optimise le poids des sprites
- **image** : Optimise le poid des images dans le dossier `assets/img` et les déplace dans le dossier `assets`

## TO DO
1. Ajouter une tache pour l'optimisation des images
2. Ajouter une tache pour le minification des js et css
3. Rendre le starter "wordpress ready"
