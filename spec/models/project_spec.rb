require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "Creation" do
      before do
       @project = Project.create(title: "first", description: "first")
    end
    it "can be created" do
      expect(@project).to be_valid
    end
    
    it "cannot be created without a title and description" do
      @project.title = nil
      @project.description = nil
      expect(@project).to_not be_valid
    end
  end
end
