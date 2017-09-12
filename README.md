# MultiApp

Проект был создан следующей последовательностью:

```
mix new multi_app --umbrella
cd multi_app/apps/
mix new main_app --module MainApp --sup
mix new app2 --module App2 --sup
cd ..
```

Инструкция по созданию релизов: https://hexdocs.pm/exrm/getting-started.html

Упс. Наверное exrm уже не актуален.
Смотрим на https://github.com/bitwalker/distillery


# Установка зависимостей

    mix deps.get

# Тестирование

    mix test --trace --cover
    mix coveralls --umbrella
    mix credo --strict
    mix dogma
    mix dialyzer
    
Warn! Последнее - очень надолго.

# Запуск

    mix run
    
# Запуск в консоли

    iex -S mix
    
После изменения исходников, можно в консоли выполнить команду:

    recompile

# Сборка

    mix compile

# Сборка релиза

    MIX_ENV=prod mix do deps.get, release

# Запуск релиза

    _build/prod/rel/multi_app/bin/multi_app start
    
Проверяем:

    curl -v http://localhost:8071/info?foo=bar
    
    curl -v http://localhost:8071/info -H "Content-Type: application/json" -X POST -d '{"foo": "bar"}'


# Остановка релиза

    _build/prod/rel/multi_app/bin/multi_app stop

# Запуск релиза в консоли

    _build/prod/rel/multi_app/bin/multi_app console



# Ссылки на будущее

- https://github.com/18Months/distillery_packager
- https://github.com/parroty/excoveralls
- https://github.com/parroty/excoveralls_umbrella
- https://github.com/lpil/dogma
- https://github.com/rrrene/credo
- https://github.com/alco/benchfella
- https://github.com/lpil/exfmt#atom и https://atom.io/packages/exfmt-atom
- https://github.com/surik/mix_debeam
- http://trivelop.de/2015/05/19/elixir-inchci-add/ и https://github.com/rrrene/inch_ex
- https://goodcode.in/elixir/6/a-simple-way-to-automatically-set-the-semantic-version-of-your-elixir-app
- https://github.com/jeremyjh/dialyxir
- https://github.com/ankhers/mongodb
- https://github.com/mpugach/elixir_cowboy_mongo_benchmark_app
- https://github.com/VoiceLayer/plug_cowboy2
- https://github.com/VoiceLayer/plug_cowboy2_example

# Travis

- https://github.com/Dzol/lyra/blob/93359a1019eaea208b927589ce70486e95fb44cb/.travis.yml
