require 'rails_helper'

describe Employee do
  it {  should belong_to(:division)  }
  it {  should validate_presence_of :name  }
  it { should validate_length_of(:name).is_at_most(20)}
  it { should validate_length_of(:name).is_at_least(2)}
  it { should have_many(:projects).through(:employee_projects) }
end


# describe Employee do
#   it("titleizes the name of an employee") do
#     employee = Employee.create({name: "giant steps", position: "jazz"})
#     expect(employee.name()).to(eq("Giant Steps"))
#   end
# end
