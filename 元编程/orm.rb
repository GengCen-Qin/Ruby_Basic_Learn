class MyClass
	def my_method
		p "old method"
	end

	def other_method
		my_method
	end
end

module MyClassRefinement
	refine MyClass do
		def my_method
			p "new method"
		end	
	end
end

using MyClassRefinement

obj = MyClass.new 
obj.my_method
obj.other_method