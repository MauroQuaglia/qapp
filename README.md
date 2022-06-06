# README
* 
* La minima installazione funzionante è quella che si ottiene con (con il. la fa nella cartella locale):
    * `rails new . --skip-namespace --minimal --skip-active-record --skip-puma --skip-sprockets --skip-listen --skip-bundle --skip-test --skip-keeps --skip-webpack-install`
* Aprire il `Gemfile` e togliere tutte le gemme e lasciare `gem 'rails'`.
* Fare `bundle update` e poi funziona tutto.

* Il Service ritorna sempre un Repository che contiene un array di oggetti. Esempio:
* GoogleBotIpService -> GoogleBotIpRepository -> array(GoogleBotIp)
  




