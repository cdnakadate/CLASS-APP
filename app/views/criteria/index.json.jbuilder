json.array!(@criteria) do |criterium|
  json.extract! criterium, :id, :school_name, :evaluator_name, :evaluated_name, :subject, :sudent_id, :employee_id, :eval_id, :vanguard, :class_period, :grade, :student_employee, :pl1, :pl2, :pl3, :i1, :i2, :i3, :i4, :i5, :i6, :i7, :i8, :i9, :i10
  json.url criterium_url(criterium, format: :json)
end
