#!/bin/bash

# Déclaration du tableau
declare -a softwares=(
    "vim:false"
    "sl:false"
    "neofetch:false"
    "sublime-text:false"
)

# Initialisation de l'index
i=0
checked_for_download=false
download_number=0



download () {
    # definir le nombre de logiciel à dl
    
    for e in "$@"; do
        IFS=':' read -r name status <<< "${softwares[$download_number]}"
        sudo apt update
        sudo apt install $name
        ((download_number++))
    done
}


# Boucle principale
while [ "$checked_for_download" = false ]; do
    for element in "${softwares[@]}"; do
        ((i++))  # Incrémentation de i
        IFS=':' read -r name status <<< "$element"  # Lecture du nom et du statut
        echo "[$i] $name, Statut: $status"  # Affichage de l'index, du nom et du statut
    done 
    i=0
    echo "Sélectionnez dans ce format (1 2 3) :"
    read softwares_list 
    if [[ -z "$softwares_list" ]]; then
        echo "Aucune sélection effectuée. Veuillez réessayer."
        continue
    fi
    echo "Validez en écrivant 'start' :"
    read value

    # Vérification de la valeur entrée
    if [ "$value" = "start" ]; then
        checked_for_download=true  # Mettre à jour la condition pour sortir de la boucle
        echo "Téléchargement démarré..."
        download $softwares_list
    else
        echo "Vous avez entré : $value. Veuillez réessayer."
    fi
done

#l'utilisateur les quels il veut

#Installé via une boucle

#Confirmer le status de l'install

