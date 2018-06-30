defmodule Rumbl.Repo do  
  use Ecto.Repo, otp_app: :rumbl
  
  # def all(Rumbl.User) do
  #   [%Rumbl.User{id: "1", name: "Kevin Jones-Evans", username: "ktje", password: "abcd1234"},
  #    %Rumbl.User{id: "2", name: "Dave Best", username: "dbest", password: "abcd1234"},
  #    %Rumbl.User{id: "3", name: "Bennett Chidaro", username: "bennett", password: "abcd1234"},]
  # end
  # 
  # def all(_module), do: []
  # 
  # def get(module, id) do
  #   Enum.find all(module), fn map -> map.id == id end
  # end
  # 
  # def get_by(module, params) do
  #   Enum.find all(module), fn map ->
  #     Enum.all?(params, fn {key, val} -> Map.get(map, key) ==val end)
  #   end
  # end
end
