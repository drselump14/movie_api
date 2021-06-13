Hanami::Model.migration do
  change do
    create_table :favorites do
      primary_key :id

      foreign_key :user_id, :users, on_delete: :cascade
      foreign_key :movie_id, :movies, on_delete: :cascade

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end

    add_index :favorites, [:user_id, :movie_id], unique: true
  end
end
