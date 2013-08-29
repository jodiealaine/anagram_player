require_relative '../anagram'

describe Anagram do 
	let(:anagram){Anagram.new}
	describe '#get_anagrams' do 
		context 'given a set of words' do 
			let(:list){%w(rats tars tars)}
			it 'returns a hash of anagrams of words' do 
				anagram.anagrams(list).should == {'arst' => ['rats', 'tars']}
			end
		end
		  context 'given a hash of anagrams of words' do 
        let(:multiple){%w(tars star stars rats rat mary army)}
        it 'prints the anagrams of the words' do 
        	anagram.anagrams_values(multiple).should == [["tars", "star", "rats"], ["mary", "army"]] 
        end
		  end
  end
end
		
