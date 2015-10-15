require './spec/spec_helper'

def welcome
  puts "Welcome. Do you want to enter your family tree? Enter 'y' for yes, 'q' for quit."
  welcome2
end

def welcome2
  choice = nil
  until choice == 'q'
    # puts "Do you want to enter your family tree? Enter 'y' for yes, 'q' for quit."
    choice = gets.chomp
    case choice
      when 'y'
        get_name
        get_mother
      when 'q'
        puts 'GOODBYE!'
      else
        puts 'That was not a valid response.'
      end
    end
  end

def get_name
  people_first = first_name
  people_last = last_name
  people = People.new(:first_name => people_first, :last_name => people_last)
  people.save
  puts "'#{people_first}" + " #{people_last}' has been added to the database."
  puts "id is #{people.id}"
end

def first_name
  puts "What is the first name?"
  get_first_name = gets.chomp
end

def last_name
  puts "What is the last name?"
  get_last_name = gets.chomp
end

def get_mother
  puts "What is your mother's name? If you do not know, enter 'n'."
  mother_name = get_name
end


# This function returns an array of children for a given ID



welcome
