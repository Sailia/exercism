class Prime	
	def self.prime?(num)
		if num == 1
			return false 
		end

		(4..((num/2) + 1)).step(2) do |n|
			if num % (n - 1) == 0
				return false 
			end
		end
		true
	end

	def self.nth(num)
		raise ArgumentError if num == 0
		return 2 if num == 1
		prime_count = 1
		potential_prime = 1
		until prime_count == num
			potential_prime += 2
			if prime?(potential_prime)
				prime_count += 1
			end
		end
		potential_prime
	end
end

