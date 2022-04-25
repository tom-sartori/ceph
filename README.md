# ceph

<details>
  <summary>
    What is it ? 
  </summary>
  
  Ceph for cephalopod.
  
  Disque distribué auto-réparant. 
  
  C'est un algo de stockage, comparable en certains points avec les RAID. Cependant, c'est concu pour des quantités de données énormes (plus dificile en RAID). Aussi
  
  Ceph is a fully open source distributed object store, network block device, and file system designed for reliability, performance, and scalability from terabytes to exabytes.
  
  Les deux grands principes : 
  - Reliable -> fiable et résiliant. Pas de SPOF, zéro-downtime. Stockage TOUJOURS dispo pour le client. 
  - Scalabilité. Très facilement extensible, même pour les quantités énormes. 
  
  En cas de panne, c'est auto réparant. Ca copie automatique les données au "bon" endroit quand un disque lache. Recommandé de changer le disque sous 48h, alors qu'en RAID, faut courir le changer. 
</details>

<details>
  <summary>
    Glossary
  </summary>
  
  **OSD**     
    Object Storage Deamon.     
    Dans l'idée, c'est comme un disque dur.   
    En réalité, c'est un disque, avec une partie de CPU, RAM et réseau. Une machine qui a cinq disques, a donc cinq OSD, gérés séparément, mais avec un CPU.     
  
  
  **MON**    
    Démon Monitor.    
 
 
  **MGR**   
    Démon Manager.        
  
  
  **RGW**    
    Démon pour HTTPS REST.      
  
  
  **Daemon**    
    Un daemon désigne un programme informatique ou un processus qui n'est pas contrôlé par l'utilisateur et qui s'exécute en arrière-plan. Le rôle principal du daemon consiste à apporter une réponse à une ou plusieurs requêtes d'un réseau, d'un matériel ou d'un programme.     
  
  
  **PG**   
    Placement Group.     
    De 128 à 1024 PG par pool. Redondandce des données conseillée de 3. Donc PG réparti sur 3 OSD. 
    Possibilité de mettre des contraintes. Ex : pas deux PG sur même machine. 
  
  
  **Pools**   
    Contient des PG   
    Plusiuers pools par cluster.    
    1 pool par utilisation différente.    
  
  **RADOS**    
    Ensemble des librairies disponibles pour accéder aux données. 
  
</details>

<details>
  <summary>
    Infos
  </summary>
  
  **Modes de réplication**     
    - Réplication : redondance des données.     
    - Erasure Coding : Objets découpés en N + K parité.    
  
  
  **Accès aux données**   
    - Bloc : RBD.    
    - Filesystem : CephFS.    
    - Object : HTTP REST (Compatible S3).    
</details>    



[Ceph, le stockage du futur — Grégory Colpart](https://www.youtube.com/watch?v=9VzZKGFfjGw)
[Intro de Ceph et aperçu architectural](https://www.youtube.com/watch?v=7I9uxoEhUdY)

[Running Ceph inside Docker](https://opensource.com/business/15/7/running-ceph-inside-docker)

[Docker ceph/ceph](https://hub.docker.com/r/ceph/ceph)
`docker pull ceph/ceph:v16`


[Doc ceph quick start](https://docs.ceph.com/en/latest/start/intro/)




## Containerize Ceph 

### Monitors

```sh
sudo docker run -d --net=host \
-v /etc/ceph:/etc/ceph \
-v /var/lib/ceph/:/var/lib/ceph \
-e MON_IP=192.168.0.20 \
-e CEPH_PUBLIC_NETWORK=192.168.0.0/24 \
ceph/daemon mon
```
`MON_IP` is the IP address of your host running Docker.
`MON_NAME` is the name of your monitor (DEFAULT: $(hostname)).
`CEPH_PUBLIC_NETWORK` is the CIDR of the host running Docker. It should be in the same network as the MON_IP.
`CEPH_CLUSTER_NETWORK` is the CIDR of a secondary interface of the host running Docker. Used for the OSD replication traffic.

```sh
sudo docker run -d --net=host \
-v /etc/ceph:/etc/ceph \
-v /var/lib/ceph/:/var/lib/ceph \
-e MON_IP=192.168.0.20 \
-e CEPH_PUBLIC_NETWORK=192.168.0.0/24 \
ceph/daemon mon
```

### Object Storage Daemon

The current implementation allows you to run a single OSD process per container. Following the microservice mindset, we should not run more than one service inside our container. In our case, running multiple OSD processes into a single container breaks this rule and will likely introduce undesirable behaviors. This will also increase the setup and maintenance complexity of the solution.

In this configuration, the usage of --privileged=true is strictly required because we need full access to /dev/ and other kernel functions. 








<details>
  <summary>
    Accordéon
  </summary>
  
  Corps de texte. 
</details>

