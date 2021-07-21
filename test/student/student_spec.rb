require_relative 'student'
RSpec.describe Student do

	describe "instance methods" do 
		subject { Student.new("John","Doe")}

		it {respond_to(:first_name)}

		it {respond_to(:last_name)}

		it {respond_to(:student_fullname)}
	end 

	describe "total number of students created " do 
		it "should have student in total" do 
			Student.new("john","doe")
			Student.new("Jone","doe")
			expect(Student.total_count).to eq(2)
		end 
	end 
end 


	# before do
	#   @student = Student.new("John","Doe") 
	# end 

	# it "should respond to #first_name " do 
	# 	#student = Student.new("John","Doe")
	# 	expect(@student).to respond_to(:first_name)
	# end 

	# it "should respond to #last_name" do 
	# 	#student = Student.new("John","Doe")
	# 	expect(@student).to respond_to(:last_name)
	# end 

	# it "should respond to #student_fullname" do 
	# 	#student = Student.new("John","Doe")
	# 	expect(@student).to respond_to(:student_fullname)
	# end 

