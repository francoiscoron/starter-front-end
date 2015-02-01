# STARTER FRONT END
Dossier de base pour bien commencer mes projets d'intégration front-end. Basé sur le tuto de [grafikart](http://www.grafikart.fr/tutoriels/html-css/sass-libsass-nodejs-553).

## REQUIS

- [NodeJs](http://nodejs.org/)
- [gulp](http://gulpjs.com/)
- ImageMagick - `brew install imagemagick`

## INSTALATION

    $ git clone git@github.com:francoiscoron/starter-front-end.git mon-theme
    $ npm install
    $ gulp

## ORGANISATIONS
### Les icones
Les icones sont à placer dans le dossier `@2x`. Afin de gérer au mieux le *retina*, les icones doivent **être 2x supérieur** à leur taille d'origine (ex: pour une icone de 16px, prévoir une icone de 32px ).
    

    ├── assets/
    │   ├── img/
    │   ├── icons/
    │   │  ├── @2x/
    │   │     └── icone1.png
    └── ...

## LISTE DES TACHES
La liste des taches éxecutable avec la commande suivante :
 ```
 $ gulp task
 ```

- **sass** : compile les .scss dans le fichier `style.css`
- **minifyCss** : minifie le fichier `style.css`
- **sprite** : transforme les .png en sprite et en sprite @2x pour le retina. Optimise le poids des sprites
- **image** : Optimise le poid des images dans le dossier `assets/img` et les déplace dans le dossier `assets`

## TO DO
1. Ajouter une tache pour l'optimisation des images DONE
2. Ajouter une tache pour le minification des js et css
3. Rendre le starter "wordpress ready"
