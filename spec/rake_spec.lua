-- Note expected results are based on the output of the python version 
describe("rake run", function()
    local rake = require 'rake'
    local text = [[Compatibility of systems of linear constraints over the set of natural numbers.
    Criteria of compatibility of a system of linear Diophantine equations, strict inequations, and
    nonstrict inequations are considered. Upper bounds for components of a minimal set of solutions
    and algorithms of construction of minimal generating sets of solutions for all types of systems
    are given. These criteria and the corresponding algorithms for constructing a minimal
    supporting set of solutions can be used in solving all the considered types of systems and
    systems of mixed types.]]
    describe('intermediate results', function()
        local r = rake.new('SmartStoplist.txt') 
        local _, keywords, word_scores, _ = r:run(text, true)
        it('keywords', function()            
            local expected = {
                'compatibility',
                'systems',
                'linear constraints',
                'set',
                'natural numbers',
                'criteria',
                'compatibility',
                'system',
                'linear diophantine equations',
                'strict inequations',
                'nonstrict inequations',
                'considered',
                'upper bounds',
                'components',
                'minimal set',
                'solutions',
                'algorithms',
                'construction',
                'minimal generating sets',
                'solutions',
                'types',
                'systems',
                'criteria',
                'algorithms',
                'constructing',
                'minimal supporting set',
                'solutions',
                'solving',
                'considered types',
                'systems',
                'systems',
                'mixed types'
            }
            assert.same(expected, keywords)
        end)
        it('word scores', function()
            local expected = {
                ['algorithms'] = 1.0,
                ['bounds'] = 2.0,
                ['compatibility'] = 1.0,
                ['components'] = 1.0,
                ['considered'] = 1.5,
                ['constraints'] = 2.0,
                ['constructing'] = 1.0,
                ['construction'] = 1.0,
                ['criteria'] = 1.0,
                ['diophantine'] = 3.0,
                ['equations'] = 3.0,
                ['generating'] = 3.0,
                ['inequations'] = 2.0,
                ['linear'] = 2.5,
                ['minimal'] = 2.6666666666666665,
                ['mixed'] = 2.0,
                ['natural'] = 2.0,
                ['nonstrict'] = 2.0,
                ['numbers'] = 2.0,
                ['set'] = 2.0,
                ['sets'] = 3.0,
                ['solutions'] = 1.0,
                ['solving'] = 1.0,
                ['strict'] = 2.0,
                ['supporting'] = 3.0,
                ['system'] = 1.0,
                ['systems'] = 1.0,
                ['types'] = 1.6666666666666667,
                ['upper'] = 2.0
            }
            assert.same(expected, word_scores)
        end)
    end)
    describe('results', function()
        it('using FoxStoplist', function()
            local r = rake.new('FoxStoplist.txt') 
            local expected = {
                ['algorithms'] = 1.5,
                ['compatibility'] = 1.0,
                ['components'] = 1.0,
                ['considered'] = 1.5,
                ['considered types'] = 3.166666666666667,
                ['constructing'] = 1.0,
                ['construction'] = 1.0,
                ['corresponding algorithms'] = 3.5,
                ['criteria'] = 1.0,
                ['linear constraints'] = 4.5,
                ['linear diophantine equations'] = 8.5,
                ['minimal generating sets'] = 8.666666666666666,
                ['minimal set'] = 4.666666666666666,
                ['minimal supporting set'] = 7.666666666666666,
                ['mixed types'] = 3.666666666666667,
                ['natural'] = 1.0,
                ['nonstrict inequations'] = 4.0,
                ['set'] = 2.0,
                ['solutions'] = 1.0,
                ['solving'] = 1.0,
                ['strict inequations'] = 4.0,
                ['system'] = 1.0,
                ['systems'] = 1.0,
                ['types'] = 1.6666666666666667,
                ['upper bounds'] = 4.0
            }
            assert.same(expected, r:run(text))
        end)
        it('using SmartStopList', function()
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
end)
