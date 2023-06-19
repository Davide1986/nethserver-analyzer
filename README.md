# nethserver-analyzer
NethServer Analyzer Network

Questo plug-in ha lo scopo di recuperare tutte le connessioni atteve con IP Pubblici e di visualizzarli in forma tabbellare. 
Per ogni IP Pubblico estratto, viene inviato una query verso i database : https://www.abuseipdb.com/ e https://www.ipqualityscore.com/. 
Se la risposta della query è positiva significa che l'indirizzo IP Pubblico che si sta comunicato non è un server infetto, 
altrimenti significa che è un server infetto o utilizzato da attacchi e lo script in autmatico chiude la connessione e salva una regola iptables per bloccare la connessione futura.

Il progetto è in fase di sviluppo ed è sperimentale.

Ecco qui la grafica di come appare 

![image](https://github.com/Davide1986/nethserver-analyzer/assets/6768906/cb1a64c1-55bd-4031-836d-d0cb0ee9e481)

Filtro in base llo stato della connessione 

![image](https://github.com/Davide1986/nethserver-analyzer/assets/6768906/923adc13-e96c-4539-a50e-fa142395d82f)

Filtro in base all'indirizzo IP 

![image](https://github.com/Davide1986/nethserver-analyzer/assets/6768906/12935ea9-238a-4324-8f24-1f74ad1fc045)

