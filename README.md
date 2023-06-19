# nethserver-analyzer
NethServer Analyzer Network

Questo plug-in ha lo scopo di recuperare tutte le connessioni atteve con IP Pubblici e di visualizzarli in forma tabbellare. 
Per ogni IP Pubblico estratto, viene inviato una query verso i database : https://www.abuseipdb.com/ e https://www.ipqualityscore.com/. 
Se la risposta della query è positiva significa che l'indirizzo IP Pubblico che si sta comunicato non è un server infetto, 
altrimenti significa che è un server infetto o utilizzato da attacchi e lo script in autmatico chiude la connessione e salva una regola iptables per bloccare la connessione futura.

Il progetto è in fase di sviluppo ed è sperimentale.
