require 'test_helper'

class CriteriaControllerTest < ActionController::TestCase
  setup do
    @criterium = criteria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:criteria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create criterium" do
    assert_difference('Criterium.count') do
      post :create, criterium: { class_period: @criterium.class_period, employee_id: @criterium.employee_id, eval_id: @criterium.eval_id, evaluated_name: @criterium.evaluated_name, evaluator_name: @criterium.evaluator_name, grade: @criterium.grade, i10: @criterium.i10, i1: @criterium.i1, i2: @criterium.i2, i3: @criterium.i3, i4: @criterium.i4, i5: @criterium.i5, i6: @criterium.i6, i7: @criterium.i7, i8: @criterium.i8, i9: @criterium.i9, pl1: @criterium.pl1, pl2: @criterium.pl2, pl3: @criterium.pl3, school_name: @criterium.school_name, student_employee: @criterium.student_employee, subject: @criterium.subject, sudent_id: @criterium.sudent_id, vanguard: @criterium.vanguard }
    end

    assert_redirected_to criterium_path(assigns(:criterium))
  end

  test "should show criterium" do
    get :show, id: @criterium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @criterium
    assert_response :success
  end

  test "should update criterium" do
    patch :update, id: @criterium, criterium: { class_period: @criterium.class_period, employee_id: @criterium.employee_id, eval_id: @criterium.eval_id, evaluated_name: @criterium.evaluated_name, evaluator_name: @criterium.evaluator_name, grade: @criterium.grade, i10: @criterium.i10, i1: @criterium.i1, i2: @criterium.i2, i3: @criterium.i3, i4: @criterium.i4, i5: @criterium.i5, i6: @criterium.i6, i7: @criterium.i7, i8: @criterium.i8, i9: @criterium.i9, pl1: @criterium.pl1, pl2: @criterium.pl2, pl3: @criterium.pl3, school_name: @criterium.school_name, student_employee: @criterium.student_employee, subject: @criterium.subject, sudent_id: @criterium.sudent_id, vanguard: @criterium.vanguard }
    assert_redirected_to criterium_path(assigns(:criterium))
  end

  test "should destroy criterium" do
    assert_difference('Criterium.count', -1) do
      delete :destroy, id: @criterium
    end

    assert_redirected_to criteria_path
  end
end
