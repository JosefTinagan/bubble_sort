class BubbleSort

	def bubble_sort(arr)

		arr.length.times do
			x = 0
			while x < arr.length - 1
				if arr[x] > arr[x+1]
					temp = arr[x]
					arr[x] = arr[x+1]
					arr[x+1] = temp
				end
			x += 1
			end
		end
		return arr
	end

	def bubble_sort_by(arr)
		yield(arr[0],arr[1])
	end

end

