defmodule Voting.Repo.Migrations.AdminsAddNotNull do
  use Ecto.Migration

  def change do
    alter table(:administrators) do
      modify(:name, :string, null: false)
      modify(:email, :string, null: false)
      modify(:password_hash, :string, null: false)
    end
  end
end
