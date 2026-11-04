# Terminal

Commandes Git pour évaluer rapidement des travaux.

- [gitconfig](gitconfig) : alias Git.
  - `git graph` : graphe des commits avec la date et l'auteur. Accepte les
    options de `git log` (ex. `git graph --all -20`).
- [git-teamwork](git-teamwork) : répartition du travail entre les membres
  d'une équipe (commits, lignes modifiées, jours actifs, lignes survivantes),
  avec une frise de l'activité de chacun.
- [gh-teamwork](gh-teamwork) : pratiques d'équipe sur GitHub (pushes directs sur
  `main`, PR fusionnées sans revue, revues superficielles, CI rouge, tickets),
  sous forme de règles avec un verdict. Utilise le même `.mailmap` que
  git-teamwork. Demande [GitHub CLI](https://cli.github.com) authentifié
  (`gh auth login`) et un clone local du dépôt.

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

Pour lancer gh-teamwork comme `gh teamwork` :

```bash
gh alias set --shell teamwork 'gh-teamwork "$@"'
```

## Aide

`git <commande> -h`, `gh-teamwork -h`
