require_relative 'spec_helper'

describe People do
  # before(:all) do
  #
  # end

  it "should find the person's id" do
    person = People.find(1)
    expect(person.first_name).to eq "John"
  end

  # it "should return the person's children in an array(mom)" do
  #   person = People.find(2)
  #   expect(person.find_mom_children).to eq ["John", "Lisa"]
  # end
  #
  # it "should return the person's children in an array(dad)" do
  #   person = People.find(5)
  #   expect(person.find_dad_children).to eq ["John", "Lisa"]
  # end

  it "should be persons children" do
    person = People.find(2)
    expect(person.find_children).to eq ["John", "Lisa"]
  end

  # it "should return parents" do
  #   person =  People.find(2)
  #   expect(person.find_parent).to eq ["Mary", "Howard"]
  # end]

  it "should return an array of grandparents" do
    person =  People.find(8)
    expect(person.find_g_parent).to eq ["Jane", "Harvey"]
  end

end
