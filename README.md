# 🔥 Simulation thermique 2D (FEM)

Projet réalisé dans le cadre du cours sur La méthode des éléments finis (FEM) à l'Université de Reims. Ce cours est une composante du Master 1 Mathématiques et Apllications parours Calcul Scientifique.

## 🎯 Objectif

-  Étudier la distribution thermique dans un logement 2D réaliste en résolvant l'équation de la chaleur stationnaire à l'aide de la FEM.
-  Analyser l’impact des matériaux, des sources de chaleur (radiateurs), et des conditions aux limites sur la température intérieure. 

---

## ⚙️ Méthodologie

Modélisation mathématique à partir de la loi de Fourier et de l’équation de la chaleur stationnaire avec conditions de Dirichlet, Neumann et Fourier-Robin.
- Formulation variationnelle et preuve d’existence/unicité de solution via le théorème de Lax-Milgram.
- Maillage complexe du domaine (≈ 45 000 triangles) simulant une habitation réelle (béton, bois, PVC, vitrage, radiateurs...).
- Implémentation d’un solveur numérique en Python avec FreeFem++ pour la génération du maillage et des matrices d’assemblage.
- Étude de cas homogènes et non homogènes en faisant varier l’activation des radiateurs et les flux sur le bord.

---

## 📁 Organisation du dépôt
- `src/` : code en python 
- `results/` : résultats numériques
- `figures/` : images clés du projet (Plan, Maillage)

---

## 📷 Résultats

La simulation a permis de reproduire une distribution thermique réaliste dans le logement. Les résultats ont mis en évidence l’impact des matériaux, de la disposition des sources de chaleur et des conditions aux limites sur le comportement thermique global.

| Cas homogène | Cas non homogène |
|---------------------------|-------------------|
| ![](figures/champ_H.png)  | ![](figures/bond_graph_global.png) |

---

## 🔧 Outils

`Python` `FreeFem++` `Matplotlib`  —— EDP, FEM (FE-P1), Analyse variationnelle

