require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :address => "Address",
        :name => "Name",
        :email => "Email",
        :option => "Option",
        :body => "MyText",
        :status => "Status"
      ),
      Request.create!(
        :address => "Address",
        :name => "Name",
        :email => "Email",
        :option => "Option",
        :body => "MyText",
        :status => "Status"
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Option".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
