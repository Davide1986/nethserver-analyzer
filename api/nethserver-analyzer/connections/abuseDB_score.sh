#!/bin/bash

API_KEY="	8c7058ef268f956f632fcdec29d45f567a28b48966e1abfa96ed5d0d5172eb0dee41f69a31769cf3"

get_ip_score() {
    local ip=$1
    
    # Effettua la richiesta API per ottenere lo score dell'IP
    local response=$(curl -s "https://api.abuseipdb.com/api/v2/check?ipAddress=$ip" \
                    -H "Key: $API_KEY" \
                    -H "Accept: application/json")
    
    # Estrae lo score dal risultato della risposta
    local score=$(echo "$response" | jq ".data.abuseConfidenceScore")
    
    # Crea il JSON di output
    local json="{\"ipPublic\":\"$ip\",\"abuseConfidenceScore\":$score}"
    
    echo "$json"
}

# Verifica che sia stato fornito un indirizzo IP come argomento
if [ -z "$1" ]; then
    echo "Usage: $0 <indirizzo_IP>"
    exit 1
fi


# Utilizzo della funzione con l'indirizzo IP fornito come parametro
ip_address="$1"
get_ip_score "$ip_address"
