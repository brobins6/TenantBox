require 'rails_helper'

RSpec.describe "requests/edit", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :address => "MyString",
      :name => "MyString",
      :email => "MyString",
      :option => "MyString",
      :body => "MyText",
      :status => "MyString"
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_address[name=?]", "request[address]"

      assert_select "input#request_name[name=?]", "request[name]"

      assert_select "input#request_email[name=?]", "request[email]"

      assert_select "input#request_option[name=?]", "request[option]"

      assert_select "textarea#request_body[name=?]", "request[body]"
    
    end
  end
end
