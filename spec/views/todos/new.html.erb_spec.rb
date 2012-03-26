require 'spec_helper'

describe "todos/new.htm.erb" do
  it "does not display errors unless they exist" do
    @todo = Todo.new
    render template: "todos/new"

    rendered.should_not have_css("ul.errors")
  end
end

