# Terminal

Commandes Git pour évaluer rapidement des travaux.

- [gitconfig](gitconfig) : alias Git.
  - `git graph` : graphe des commits avec la date et l'auteur. Accepte les
    options de `git log` (ex. `git graph --all -20`).
- [git-teamwork](git-teamwork) : répartition du travail entre les membres
  d'une équipe (commits, lignes modifiées, jours actifs, lignes survivantes).

## Installation

Ajouter à `~/.gitconfig` (adapter le chemin du dépôt) :

```ini
[include]
	path = ~/src/Gabarits-M9/terminal/gitconfig
```

Ajouter à `~/.bashrc` :

```bash
export PATH="$PATH:$HOME/src/Gabarits-M9/terminal"
```

## Aide

`git <commande> -h`
