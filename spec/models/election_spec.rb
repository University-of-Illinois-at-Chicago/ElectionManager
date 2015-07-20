require 'rails_helper'

RSpec.describe Election, :type => :model do

  describe "read and write of columns" do
    it "allows reading and writing for :title" do
      subject.title = "Election title"
      expect(subject.title).to eq("Election title")
    end

    it "allows reading and writing for :contact" do
      subject.contact = "america@uic.edu"
      expect(subject.contact).to eq("america@uic.edu")
    end

    it "allows reading and writing for :description" do
      subject.description = "A description for the election."
      expect(subject.description).to eq("A description for the election.")
    end

    it "allows reading and writing for :start" do
      subject.start = "start"
      expect(subject.start).to eq("start")
    end

    it "allows reading and writing for :finish" do
      subject.finish = "finish"
      expect(subject.finish).to eq("finish")
    end
  end
  
  it "ensures :conact is an email address" do
      subject.contact = "uic.edu"
      expect(subject.contact).to eq("uic.edu")
  end

  describe "ensure :start and :finish are set appropriately" do
    pending "ensures :start is in the future"
    pending "ensures :finish is after :start"
  end

end
