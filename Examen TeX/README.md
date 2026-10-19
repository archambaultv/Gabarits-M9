# Gabarit d'examen LaTeX

Un seul fichier source produit trois PDF dans `build/` :

- `questionnaire.pdf` : les consignes et les énoncés ;
- `cahier_reponses.pdf` : la grille des QCM et les espaces de réponse ;
- `corrige.pdf` : le cahier de réponses, page pour page, avec les solutions.

Le barème de la couverture et les totaux sont calculés automatiquement.

## Compiler

Il faut TeX Live (LuaLaTeX et `latexmk`). Les polices utilisées sont
incluses dans TeX Live.

```sh
latexmk                              # les trois documents
latexmk cibles/questionnaire.tex     # un seul document
latexmk -c                           # efface les fichiers temporaires
```

## Préparer un examen

1. Dans `main.tex`, remplissez `\ExamSetup` (cours, session, date,
   enseignant, etc.) et `\Instructions` (consignes générales). Ajoutez
   ensuite un `\input` par partie.
2. Dans `questions/`, créez un fichier par partie. Le plus simple est de
   copier une partie existante : le modèle des commandes est en commentaire
   au début de chaque fichier.
   - `partie-a-qcm.tex` : questions à choix multiples ;
   - `partie-b-courtes.tex` : questions à développement (lignes ou cadre
     de réponse) ;
   - `partie-c-maths.tex` : exemples de formules mathématiques.
3. Compilez, puis vérifiez les trois PDF.

## Bon à savoir

- Chaque partie commence sur une nouvelle page.
- `\OnlyQuestionnaire{...}`, `\OnlyAnswerSheet{...}` et
  `\OnlyAnswerKey{...}` n'impriment leur contenu que dans le questionnaire,
  le cahier ou le corrigé.
- Dans le questionnaire, une question longue, mais plus courte qu'une page,
  n'est jamais coupée entre deux pages. Si elle ne tient pas en bas de page,
  elle passe à la page suivante. Toutefois, si une question est plus haute
  qu'une page, elle se coupe normalement. L'option `[breakable]`
  (`\begin{question}[points=3, breakable]`) permet de couper une question
  longue plutôt que de laisser un grand blanc.
- Pour forcer un saut de page dans le questionnaire seulement, ajoutez
  `\OnlyQuestionnaire{\clearpage}` avant la question. Un simple
  `\clearpage` changerait aussi la pagination du cahier et du corrigé.
- Pour une question en plusieurs parties a), b), c)…, utilisez un
  environnement `subquestion` par partie, chacun avec son espace
  (`lines=` ou `box=`) et sa `solution`. Le cahier imprime alors un espace
  par partie, précédé de sa lettre : on peut mélanger lignes et cadres de
  code. Les options `lines=` et `box=` de la question sont ignorées. Voir
  le modèle au début de `partie-b-courtes.tex`.
- Le corrigé reprend exactement la mise en page du cahier. Prévoyez donc
  assez de lignes (`lines=`) ou un cadre assez grand (`box=`) pour que la
  solution y tienne.
- Le gabarit lui-même est dans `preamble/`. Il n'est pas nécessaire de le
  modifier pour préparer un examen.
