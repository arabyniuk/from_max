class CreateNewTranslations < ActiveRecord::Migration
  def up
    New.create_translation_table!({
      title: :string,
      content: :text
    }, {
      migrate_data: true
    })
  end

  def down
    New.drop_translation_table! migrate_data: true
  end
end