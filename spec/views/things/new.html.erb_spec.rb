require 'spec_helper'

describe "things/new" do
  before(:each) do
    assign(:thing, stub_model(Thing,
      :name => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", things_path, "post" do
      assert_select "input#thing_name[name=?]", "thing[name]"
      assert_select "input#thing_age[name=?]", "thing[age]"
    end
  end
end
