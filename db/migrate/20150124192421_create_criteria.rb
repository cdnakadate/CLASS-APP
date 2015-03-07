class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :school_name
      t.string :evaluator_name
      t.string :evaluated_name
      t.string :subject
      t.string :sudent_id
      t.string :employee_id
      t.string :eval_id
      t.string :vanguard
      t.decimal :class_period
      t.decimal :grade
      t.boolean :student_employee
      t.text :pl1
      t.text :pl2
      t.text :pl3
      t.text :i1
      t.text :i2
      t.text :i3
      t.text :i4
      t.text :i5
      t.text :i6
      t.text :i7
      t.text :i8
      t.text :i9
      t.text :i10

      t.timestamps
    end
  end
end
