defmodule Aux do
    alias Rumbl.User
    alias Rumbl.Repo

    defp user_template(name, username, password) do
        %User{name: name, username: username, password_hash: password}
    end

    def insert_user(name, username, password_hash) do
        Repo.insert(user_template(name, username, password_hash))
    end
end