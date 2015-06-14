describe("rake run", function()
	local rake = require 'rake'
	local text = [[Compatibility of systems of linear constraints over the set of natural numbers.
	Criteria of compatibility of a system of linear Diophantine equations, strict inequations, and
	nonstrict inequations are considered. Upper bounds for components of a minimal set of solutions
	and algorithms of construction of minimal generating sets of solutions for all types of systems
	are given. These criteria and the corresponding algorithms for constructing a minimal
	supporting set of solutions can be used in solving all the considered types of systems and
	systems of mixed types.]]
	it('keywords using SmartStopList', function()
		local r = rake.new('SmartStoplist.txt') 
		local expected = {
			['minimal generating sets'] = 8.666666666666666,
			['linear diophantine equations'] = 8.5,
			['minimal supporting set'] = 7.666666666666666,
			['minimal set'] = 4.666666666666666,
			['linear constraints'] = 4.5,
			['upper bounds'] = 4.0,
			['natural numbers'] = 4.0,
			['nonstrict inequations'] = 4.0,
			['strict inequations'] = 4.0,
			['mixed types'] = 3.666666666666667,
			['considered types'] = 3.166666666666667,
			['set'] = 2.0,
			['types'] = 1.6666666666666667,
			['considered'] = 1.5,
			['constructing'] = 1.0,
			['solutions'] = 1.0,
			['solving'] = 1.0,
			['system'] = 1.0,
			['compatibility'] = 1.0,
			['systems'] = 1.0,
			['criteria'] = 1.0,
			['construction'] = 1.0,
			['algorithms'] = 1.0,
			['components'] = 1.0
		}
		assert.same(expected, r:run(text))
	end)
end)