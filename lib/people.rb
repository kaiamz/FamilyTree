class People < ActiveRecord::Base

  # def find_mom_children
  #   children = []
  #   person = People.find(id)
  #   mother_id = person.id
  #   if mother_id
  #     People.all.each do |dude|
  #       if dude.mom_id == mother_id
  #         children << dude.first_name
  #       end
  #     end
  #   end
  #   children.each do |x|
  #     puts x
  #   end
  # end
  #
  # def find_dad_children
  #   children = []
  #   person = People.find(id)
  #   father_id = person.id
  #   if father_id
  #     People.all.each do |dude|
  #       if dude.dad_id == father_id
  #         children << dude.first_name
  #       end
  #     end
  #   end
  #   children.each do |x|
  #     puts x
  #   end
  # end

  def find_children
    children =[]
    person = People.find(id)
    parent_id = person.id
    People.all.each do |dude|
      if dude.dad_id == parent_id || dude.mom_id == parent_id
        children << dude.first_name
      end
    end
    children.each do |x|
      puts x
    end
  end

  def find_g_parent
    g_parents = []
    person = People.find(id)
    person_mother = People.find(person.mom_id)

    if person_mother
      person_g_mother = People.find(person_mother.mom_id)
      person_g_father = People.find(person_mother.dad_id)
    end
    g_parents << person_g_mother.first_name
    g_parents << person_g_father.first_name
    g_parents.each do |x|
      puts x
    end
  end



end
