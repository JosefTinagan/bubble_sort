require "spec_helper"
require "bubble_sort"

describe BubbleSort do 

	context "bubble_sort method" do
		it "accepting arrays [5,2,3] to [2,3,5]" do
			bs = BubbleSort.new
			param = bs.bubble_sort([5,2,3])
			expect(param).to eq [2,3,5]
		end

		it "accepting arrays with similar numbers [5,78,2,5,1,8,1]" do
			bs = BubbleSort.new
			param = bs.bubble_sort([5,78,2,5,1,8,1])
			expect(param).to eq [1,1,2,5,5,8,78]
		end
	end

	context "Testing bubble_sort_by method" do
		it "accepting a block" do 
			bs = BubbleSort.new
			param = bs.bubble_sort_by(["hey","hello","hi"]) do |left,right|
					left.length - right.length
				end
			expect(param).to eq ["hi","hey","hello"]
		end

		it "accepting multitple inputs" do
			bs = BubbleSort.new
			param = bs.bubble_sort_by(["begin","bean","lol","ov","b"]) do |left,right|
					left.length - right.length
				end
			expect(param).to eq ["b","ov","lol","bean","begin"]
		end
	end
end