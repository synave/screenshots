# screenshots
Script bash permettant de réaliser des captures d'écran d'une zone de l'écran à intervalle régulier.

## Fonctionnalités

- Captures automatiques à intervalle personnalisable
- Nombre d'itérations personnalisable
- Sélection d'une zone précise de l’écran
- Nommage automatique des fichiers avec la date et l'heure - format americain pour un tri plus simple.

---

## Dépendances

Le script utilise l'outil scrot.

### Installation sous Debian

```bash
sudo apt install scrot

## Usage

./screenshots.sh <intervalle> <iterations> <x> <y> <largeur> <hauteur> [dossier]

| Paramètre    | Description                                        |
| ------------ | -------------------------------------------------- |
|  intervalle  | Temps d’attente entre chaque capture (en secondes) |
|  iterations  | Nombre total de captures à effectuer               |
|  x           | Position X du coin supérieur gauche                |
|  y           | Position Y du coin supérieur gauche                |
|  largeur     | Largeur de la zone à capturer                      |
|  hauteur     | Hauteur de la zone à capturer                      |
|  dossier     | *(Optionnel)* Dossier de sortie des captures       |


Exemple :

./screenshots.sh 5 10 100 200 800 600
