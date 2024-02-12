# MINILIB ASM

Projet EPITECH de refaire certaines fonctions de la lib standard C en asm x86-64

## Introduction

Ce README va principalement servir pour définir les conventions que j'ai suivi et décrire le fonctionnement des instructions et registres que j'ai utilisé,
autant pour rendre le tout clair, que pour me servir de note à moi même.

## Configuration requise

NASM, GCC

## Liste des commandes ASM

### mov
- **Description** : Permet d'assigner une valeur à un registre ou une variable.
- **Utilisation** : mov [dest], [src]

### cmp
- **Description** : Permet de comparer deux valeurs.
- **Utilisation** : cmp [val1], [val2]

### je
- **Description** : Permet de sauter à une adresse ou balise si ZF est à 1.
- **Utilisation** : je [adresse]

### inc
- **Description** : Permet d'incrémenter une valeur.
- **Utilisation** : inc [val]

## Function List
:clipboard: : Mandatory
- [x] memcpy :clipboard:
- [ ] memmove :clipboard:
- [x] memset :clipboard:
- [ ] strcasecmp :clipboard:
- [x] strchr :clipboard:
- [x] strcmp :clipboard:
- [ ] strcspn :clipboard:
- [x] strlen :clipboard:
- [x] strncmp :clipboard:
- [ ] strpbrk :clipboard:
- [ ] strrchr :clipboard:
- [ ] strstr :clipboard:
