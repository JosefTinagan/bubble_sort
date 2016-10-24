require "spec_helper"
require "bubble_sort"

describe BubbleSort do 


	it "has working input method" do
		bs = BubbleSort.new
		param = bs.input([1,2,3])
		expect(param).to eq [1,2,3]
	end
end