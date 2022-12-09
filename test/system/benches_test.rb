require "application_system_test_case"

class BenchesTest < ApplicationSystemTestCase
  setup do
    @bench = benches(:one)
  end

  test "visiting the index" do
    visit benches_url
    assert_selector "h1", text: "Benches"
  end

  test "should create bench" do
    visit benches_url
    click_on "New bench"

    fill_in "Description", with: @bench.description
    click_on "Create Bench"

    assert_text "Bench was successfully created"
    click_on "Back"
  end

  test "should update Bench" do
    visit bench_url(@bench)
    click_on "Edit this bench", match: :first

    fill_in "Description", with: @bench.description
    click_on "Update Bench"

    assert_text "Bench was successfully updated"
    click_on "Back"
  end

  test "should destroy Bench" do
    visit bench_url(@bench)
    click_on "Destroy this bench", match: :first

    assert_text "Bench was successfully destroyed"
  end
end
