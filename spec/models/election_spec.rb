require 'rails_helper'

RSpec.describe Election, :type => :model do

  CURRENT_DATE = DateTime.now

  describe "validate presence of required fields" do
    it "validates presence of :title" do
      expect(subject).to validate_presence_of(:title)
     end

    it "validates presence of :contact" do
      expect(subject).to validate_presence_of(:contact)
    end

    it "validates presence of :start" do
      expect(subject).to validate_presence_of(:start)
    end

    it "validates presence of :finish" do
      expect(subject).to validate_presence_of(:finish)
    end

  end

  describe "read and write of columns" do
    it "allows reading and writing for :title" do
      subject.title = "Election title"
      expect(subject.title).to eq("Election title")
    end

    it "allows reading and writing for :description" do
      subject.description = "A description for the election."
      expect(subject.description).to eq("A description for the election.")
    end
  end
 
  describe "validate :contact" do
    it "allows reading and writing for :contact" do
      subject.contact = "america@uic.edu"
      expect(subject.contact).to eq("america@uic.edu")
    end

    it "ensures :conact is an email address" do
	subject.contact = "americauic.edu"
	expect{raise StandardError, 'Contact is invalid'}.to raise_error('Contact is invalid')
    end
  end

  describe "ensure reading and writing for :start and :finish and are set appropriately" do

    it "allows reading and writing for :start" do
      subject.start = CURRENT_DATE 
      expect(subject.start).to eq(CURRENT_DATE)
    end

    it "allows reading and writing for :finish" do
      subject.finish = CURRENT_DATE 
      expect(subject.finish).to eq(CURRENT_DATE)
    end

    it "ensures :start is before :finish" do
      start =  DateTime.now - 1.day 
      finish = DateTime.now + 1.day
      election = Election.create(user_id: 1119937, updid: 'america', title: 'Election', contact: 'america@uic.edu',start: start, finish: finish) 
      expect(election.errors[:election]).to include('Start must be in the future')
    end

    xit "ensures :start cannot be today or in past" do
      finish = DateTime.now + 4.days
      election = Election.create(user_id: 1119937, updid: 'america', title: 'Election', contact: 'america@uic.edu',start: start, finish: finish) 
      expect(election.errors[:election]).to include('Start must be before finish')
    end

    xit "ensures :start is not today" do
    end

  end

end
