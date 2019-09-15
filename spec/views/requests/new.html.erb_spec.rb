require 'rails_helper'

RSpec.describe "requests/new", type: :view do
  before(:each) do
    assign(:request, Request.new(
      :address => "MyString",
      :name => "MyString",
      :email => "MyString",
      :option => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_address[name=?]", "request[address]"

      assert_select "input#request_name[name=?]", "request[name]"

      assert_select "input#request_email[name=?]", "request[email]"

      assert_select "input#request_option[name=?]", "request[option]"

      assert_select "textarea#request_body[name=?]", "request[body]"
    end
  end
end
