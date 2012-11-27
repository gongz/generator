require 'test_helper'

class RulesControllerTest < ActionController::TestCase
  setup do
    @rule = rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rule" do
    assert_difference('Rule.count') do
      post :create, rule: { buildingDamage: @rule.buildingDamage, chem: @rule.chem, dalayed: @rule.dalayed, dead: @rule.dead, elec: @rule.elec, fire: @rule.fire, gas: @rule.gas, immediate: @rule.immediate, minor: @rule.minor, nFeedback: @rule.nFeedback, nMediaType: @rule.nMediaType, name: @rule.name, pFeedback: @rule.pFeedback, pMediaType: @rule.pMediaType, road: @rule.road, roomNo: @rule.roomNo, trapped: @rule.trapped, water: @rule.water, when: @rule.when }
    end

    assert_redirected_to rule_path(assigns(:rule))
  end

  test "should show rule" do
    get :show, id: @rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rule
    assert_response :success
  end

  test "should update rule" do
    put :update, id: @rule, rule: { buildingDamage: @rule.buildingDamage, chem: @rule.chem, dalayed: @rule.dalayed, dead: @rule.dead, elec: @rule.elec, fire: @rule.fire, gas: @rule.gas, immediate: @rule.immediate, minor: @rule.minor, nFeedback: @rule.nFeedback, nMediaType: @rule.nMediaType, name: @rule.name, pFeedback: @rule.pFeedback, pMediaType: @rule.pMediaType, road: @rule.road, roomNo: @rule.roomNo, trapped: @rule.trapped, water: @rule.water, when: @rule.when }
    assert_redirected_to rule_path(assigns(:rule))
  end

  test "should destroy rule" do
    assert_difference('Rule.count', -1) do
      delete :destroy, id: @rule
    end

    assert_redirected_to rules_path
  end
end
