defmodule Rumbl.Repo.Migrations.AddCategoryIdToVideo do
  use Ecto.Migration

  def change do
    alter table(:videos) do
      add :category_id, references(:categories)
      # add :category_id, references(:categories, on_delete: :nilify)
    end
  end
end
