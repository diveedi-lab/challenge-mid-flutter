# CachedNetworkImage

Questa challenge è volta ad un App Developer specializzato in Flutter.

## Obiettivo
La richiesta da parte nostra è sviluppare un pacchetto che fornisce il Widget `CachedNetworkImage`, simile al conosciuto [cached_network_image](https://github.com/Baseflow/flutter_cached_network_image/tree/develop).  
Essendo una challenge della durata di circa un ora non chiediamo di considerare troppi aspetti tecnici, il pacchetto che produrrai dovrà infatti seguire questi punti principali:

 - Dovrai creare un sistema per la gestione della cache.
 - Il widget è strettamente dipendente dal sistema di cache.
 - Il widget riceve due proprietà di stile (width, height) che dovrà applicare all'immagine finale, oltre ad un parametro `url` che indica l'URL dal quale scaricare l'immagine.
 - Dopo aver scaricato l'immagine, ti dovrai occupare di memorizzare l'immagine nel dispositivo locale.
 - Globalmente l'utente può configurare il pacchetto in modo da impostare un TTL, che di default deve essere di 12 secondi (per semplificare l'utilizzo live). Starà a te decidere dove memorizzare metadati quali l'ultima data di download, ecc..
 - Se l'immagine non è scaduta, dovrai leggere l'immagine dal dispositivo, evitando quindi una ulteriore richiesta HTTP.
 - Mostrando l'immagine, se possibile vorremmo avere una animazione di qualche tipo (es. fade-in).

E' permesso utilizzare internet ed utilizzare pacchetti third-party, tranne quelli che provvedono cache manager di qualche tipo.

## Struttura del repository

```
.
├── example - Esempio per test funzionali
│   ├── README.md
│   ├── analysis_options.yaml
│   ├── android
│   ├── build
│   ├── example.iml
│   ├── ios
│   ├── lib
│   ├── linux
│   ├── macos
│   ├── pubspec.lock
│   ├── pubspec.yaml
│   ├── test
│   ├── web
│   └── windows
├── lib - Directory pacchetto
│   ├── cached_network_image.dart
│   └── src
├── pubspec.lock
├── pubspec.yaml
└── test - Unit test
    └── cached_network_image_test.dart
```

## Valutazione

Saranno valutate principalmente la capacità del candidato di organizzare il codice in modo flessibile e la qualità del codice prodotto.
