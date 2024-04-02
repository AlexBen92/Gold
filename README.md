# Token Adossé à l'Or en Temps Réel

Ce projet open source contient un contrat intelligent Solidity pour un token ERC-20 adossé à l'or, où la valeur du token est indexée sur le prix de l'or en temps réel. Le prix de l'or est obtenu en utilisant l'oracle de prix décentralisé Chainlink.

## Utilisation avec Remix

Pour utiliser ce projet avec Remix, vous devez entrer l'adresse du contrat de l'oracle de prix décentralisé Chainlink pour le prix de l'or :

```
0x2feed2052290a9609c18e31c1de4a29b2f39904b
```

Cette adresse correspond au contrat Chainlink Gold Price Feed (USD) qui fournit le prix actuel de l'or en dollars américains.

## Fonctionnalités

- **Token ERC-20** : Le token respecte la norme ERC-20 pour les tokens fungibles sur la blockchain Ethereum.
- **Adossé à l'or** : La valeur du token est indexée sur le prix de l'or en temps réel.
- **Oracle de prix décentralisé** : Le prix de l'or est obtenu de manière fiable via l'oracle de prix décentralisé Chainlink.
- **Émission et rachat dynamiques** : L'émission et le rachat de tokens sont calculés dynamiquement en fonction du prix de l'or actuel.
- **Transfert d'or physique** : Lors du rachat de tokens, l'utilisateur reçoit une quantité équivalente d'or physique basée sur le prix de l'or actuel.

Ce projet démontre comment créer des actifs numériques véritablement adossés à des actifs réels grâce à la technologie blockchain et aux oracles décentralisés.

N'hésitez pas à explorer le code source, à contribuer avec des améliorations, ou à me contacter si vous avez des questions !
