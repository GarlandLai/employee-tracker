class AddEmployeeAndHasManyThroughTable < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.column(:name, :string)
      t.column(:description, :string)
      t.timestamps
    end
    create_table :employee_projects do |t|
      t.belongs_to :project, index: true
      t.belongs_to :employee, index: true
    end
  end
end
