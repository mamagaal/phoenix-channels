ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Channels.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Channels.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Channels.Repo)

