require 'rails_helper'

RSpec.describe "widgets/edit", type: :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit widget form" do
    render

    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do

      assert_select "input#widget_name[name=?]", "widget[name]"

      assert_select "input#widget_description[name=?]", "widget[description]"
    end
  end
end
