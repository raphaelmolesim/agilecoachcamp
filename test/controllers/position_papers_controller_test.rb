require 'test_helper'

class PositionPapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_paper = position_papers(:one)
  end

  test "should get index" do
    get position_papers_url
    assert_response :success
  end

  test "should get new" do
    get new_position_paper_url
    assert_response :success
  end

  test "should create position_paper" do
    assert_difference('PositionPaper.count') do
      post position_papers_url, params: { position_paper: { name: @position_paper.name, question_1: @position_paper.question_1, question_2: @position_paper.question_2, question_3: @position_paper.question_3, year: @position_paper.year } }
    end

    assert_redirected_to position_paper_url(PositionPaper.last)
  end

  test "should show position_paper" do
    get position_paper_url(@position_paper)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_paper_url(@position_paper)
    assert_response :success
  end

  test "should update position_paper" do
    patch position_paper_url(@position_paper), params: { position_paper: { name: @position_paper.name, question_1: @position_paper.question_1, question_2: @position_paper.question_2, question_3: @position_paper.question_3, year: @position_paper.year } }
    assert_redirected_to position_paper_url(@position_paper)
  end

  test "should destroy position_paper" do
    assert_difference('PositionPaper.count', -1) do
      delete position_paper_url(@position_paper)
    end

    assert_redirected_to position_papers_url
  end
end
