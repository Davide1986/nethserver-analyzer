#!/usr/bin/perl

use strict;
use warnings;
use JSON;

sub get_ip_score {
    my $ip_address = shift;

    # Path completo dello script bash
    my $script_path = '/usr/libexec/nethserver/api/nethserver-analyzer/connections/abuseDB_score.sh';

    # Comando per eseguire lo script bash con l'indirizzo IP come argomento
    my $command = "$script_path $ip_address";

    # Esegui il comando e cattura l'output
    my $output = qx($command);

    # Stampa l'output
    #print $output;

    # Decodifica l'output come JSON
    my $json = decode_json($output);

    # Recupera i valori desiderati
    my $abuseConfidenceScore = $json->{data};
#    my $countryCode = $json->{data}->{countryCode};
#    my $isWhitelisted = $json->{data}->{isWhitelisted};

    # Stampa i valori
    print "abuseConfidenceScore: $abuseConfidenceScore\n";
#    print "countryCode: $countryCode\n";
#    print "isWhitelisted: $isWhitelisted\n";

}

# Chiamata alla funzione con l'indirizzo IP desiderato
my $ip_address = '8.8.4.4';
get_ip_score($ip_address);
