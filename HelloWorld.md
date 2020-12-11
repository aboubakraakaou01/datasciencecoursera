
## This is Markdown file

# Introduction:

   L’épidémie du coronavirus (COVID-19) a bouleversé la vie des gens dans le monde entier. Le COVID-19 est causé par le coronavirus 2 du syndrome respiratoire aigu sévère (SRAS-COV-2), un nouvel agent pathogène humain qui, selon les virologues a émergé des chauves-souris et finalement sauté aux humains via un hôte intermédiaire. Les manifestations cliniques vont de symptômes légers ou inexistants à une maladie plus grave pouvant entraîner une insuffisance pulmonaire et même la mort.
En ce moment les plateformes du  sociaux médias comme: Twitter, Facebook, Instagram, Snaptube.. etc. sont une grande source des formations connue comme les données sociaux. Les peuples sont partagés  les points de vue dans les sociaux médias et faire les discussions entre leurs amis, parents et les gens sur leur virtua-connexion avec leur comptes et express leur opinions sur ces événements avec les réactions positive, négative, et neutre sur ce poste. Dans  le monde les gouvernements ont été pris pour  renforcer les bureaux de santé pour prendre les précautions de s’arrêter l’épidémie de COVID-19. Un de les principaux moyens pour arrêter ça pandémie à se propager avec un tel rythme alarmant. Les  sociaux médias sont tournants avec les gens populaires  pour impliquent un mark courant  de la tendance aperçus des concepts en seconde. Dans les années récentes, les gens sont exposés les problèmes sociaux liés à travers plusieurs sociaux médias par les commentaires, hashtags…etc, qui a été suivi par de nombreux gens et ceux les tweets deviennent bientôt populaire. Les contenus qui sont posté et discuté sur les réseaux sociaux est remarqué et peut être utilisé à des fins d’analyse. L’analyse des sentiments (SA) est utilisé avec trois aspects positifs, négatifs, et  neutres.

Ce recherche a été fait pour identifier les sentiment des citoyens de monde concernant l’épidémie du COVID-19. Dans ces papiers, tweets ont été pris de Twitter en utilisant Twitter data au site du Kaggle, Sevent…..etc. En revanche que la langage  de programmation python avec les méthodes de machine  Learning (ML) a été choisi car il fournit beaucoup facile à l’utilisation des  bibliothèques collectés,prétraitement, et  visualisation des données. 

# Base de données
Plusieurs de données cartographiques. La réaction publiques à la pandémie ont été mis à disposition. Par exemple, les tweets relatifs au coronavirus ont été collectés depuis 11 mars 2020, soit environ 4,4 millions  de tweets par jour (Banda et al 2020). Tweets ont été  collecté via l’API du flux Twitter, en utilisant des mots clès tels que ‘coronavirus’ et ‘COVID-19’. D’autres ensemble des données tweets sur le coronavirus a été collecté depuis 22 janvier 2020 avec plusieurs langues, y compris l’anglais, espagnol t indonésien (Chen et al 2020). D’autres  efforts comprennent le projet sur l’épidémie de coronavirus,les gens écrivent tout le temps la vie quotidienne à côté  d’épidémie.

# Les données:
Nous avons collecté les données de n=2546890 participants avec leurs textes, ces données sont tranchés à des groupes des participants (200 participants, 4000 participants, 2000000 participants). Chaque participant a fourni des sentiments de différant polarités, l’échantillon exigences étaient résidant à plusieurs pays de monde qui sont utilisés les tweets.  Tous les participants ont été invités à indiquer les intensités  sur COVID-19.
Tout les participants ont ensuite été invités à écrire des textes sous forme des commentaires comme suivant:
 «d’écrire en quelques phrases que vous pensez sur l’épidémie de COVID-19 à condition, chaque texte doit exprimer vos sentiments en ce moment»
d’autre part les sentiment exprimer sera sous la forme de tweet (240 caractères au maximum), sinon les instructions sont identiques. En fond de traitement des données l’activation de prétraitement des données est suffisamment obligatoire pour obtenir les meilleurs précision, comme la suppression des espaces, tokenisation, normalisation des données ….etc.

# Machine Learning


 L'analyse des sentiments, également appelée extraction d'opinion est un  domaine d'étude qui analyse les opinions, les sentiments, les évaluations, les attitudes et les émotions des gens envers les entités et leurs attributs exprimés dans un texte écrit. Les entités peuvent être des produits, des services, organisations, individus, événements, des  problèmes ou des sujets. Le champ représente un grand espace de problème. De nombreux noms associés et des tâches légèrement différentes, par exemple, l’analyse des sentiments, extraction d'opinion, l’analyse d'opinion, extraction d'opinion, exploitation des sentiments  minières, l’analyse du subjectivité, l’ analyse des effets, l’analyse des émotions sont désormais tous sous l'égide de l'analyse des sentiments. es opinions sont très importantes pour les entreprises, les organisations, et les gouvernements 
car elles veulent trouver les opinions produits et les services de notre étude au  temps d’épidémie du coronavirus (COVID-19). De tels avis permettront une décision gouvernementale pertinente pour réagir rapidement à l’évolution rapide des enjeux sociaux, économiques, et politiques climats.

#  La domaine du problème:
  L’analyse des sentiments dans  le domaine de le micro-blogging  est une recherche relativement nouvelle et décente du quantité  lié à  l’antérieur  du travail qui a été fait sur l’analyse des sentiments d’utilisateurs, comme des commentaires, des documents, blogs web, au niveau d’analyse des entités sur  différent de  données de tweets principalement à cause du limite des caractères par tweet qui oblige l’utilisateur à exprimer opinion compressée dans  un texte très court. Cette recherche vise pour recueillir, traiter et analyser des sentiments des gens sur les tweets publics par Twitter pendant un certain temps, aussi la recherche concentrera sur les questions suivantes:
    • Récupération des données du tweets.
    • Prétraitement les données du  tweets (suppression les espaces, ponctuations, tokenisation, normalisation…..).    • méthodes de machine Learning.
    • Modélisation, et analyser les données à l’aide des méthodes du  ML.
    • Résultats.
    • Prédictions et perspectives.
    • Préparation le modèle et de jeux de données à l’aide des
 
 # Machine Learning with R:   
 
    Ce recherche  se concentre exclusivement  sur l’analyse des sentiments  des données avec les méthodes de la ML  Il existe deux principes d’implémentations des méthodes modérées:
    
 
II.1 Régression:

  Les modèles  de régression linéaires sont utilisés pour montrer ou prédire la relation entre deux variables ou facteurs. Le facteur prévu  est appelé la variable dépendance, et les facteurs utilisés pour prédire la valeur des variables dépendantes sont appelés les variables indépendantes.


a.  La régression linéaire simple.
b.  l'arbre de décision.
c.  la  méthode stochastique.

II.2 Classification:

   Spam ou pas spam ? C’est l’une des utilisations  et des exemples les plus populaires de classification. Tout comme la régression, et la classification est également sou surveillance d’apprentissage. Notre modèle apprend à partir de données supervisés. 
   
   
   a. la régression logistique.
   b.  K-NN.
   c.  Random Forest .
   d. Neural Network.
   e. SVM
  
 # Discusions:

    Les algorithmes d’explorations des données qui comprennent MNB, CNB, LR, LSVC, SGDC, DTC, RFC  ont été appliqués directement sur l’ensemble de données en utilisant langage de programmation python. Cependant, le modèle développé avec l’algorithme DTC c’est révéler le plus précis avec une précision 97,5%, ce qui semble être plus précis.

A partir du résultat de l’évaluation des performances des modèles, le modèle développé avec l’algorithme d’exploration des données DTC est efficacement capable de prédire la possibilité de récupération de patients infectés de la pandémie COVID-19 avec l’ensemble de précision de 97.5%  par  rapport aux MNB, CNB, LR, SGDC, LSVC, RFC  avec une précision globale de     73,1%, 79%, 70,20%, 77,56%, 84%,91,4% respectivement.



# Conclusions:
  L’étude d’analyse des  sentiments sur les données  twitter avec les modèles d’exploration de données ont été développés pour la prédiction du rétablissement d’infectés par COVID-19 à l’aide de l’ensemble de données épidémiologiques des patients atteints du COVID-19 au monde. Les algorithmes MNB, CNB, LB, LSVC, SGDC, DFC, RFC ont été appliquées pour affectés la prédiction d’ensemble des données. Le modèle développé avec DTC a été trouvé plus efficace avec la précision de 97,5%. d’autres modèles peuvent être  plus efficace comme neural network, et K-NN  ont utiles pour soins de santé pour lutter  contre le COVID-19.


    
