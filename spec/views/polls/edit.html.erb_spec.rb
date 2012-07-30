require 'spec_helper'

describe "polls/edit" do
  before(:each) do
    @poll = assign(:poll, stub_model(Poll,
      :name => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit poll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => polls_path(@poll), :method => "post" do
      assert_select "input#poll_name", :name => "poll[name]"
      assert_select "input#poll_slug", :name => "poll[slug]"
    end
  end
end
