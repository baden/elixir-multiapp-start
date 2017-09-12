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

# Запуск

    mix run

# Сборка

    mix compile

# Сборка релиза

    MIX_ENV=prod mix do deps.get, release

# Запуск релиза

    _build/prod/rel/multi_app/bin/multi_app console

# Ссылки на будущее

- https://github.com/parroty/excoveralls
- https://github.com/parroty/excoveralls_umbrella
- https://github.com/lpil/dogma
- https://github.com/rrrene/credo
- https://github.com/alco/benchfella
