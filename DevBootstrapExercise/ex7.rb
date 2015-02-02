class Movie
	def initialize
		@movie_store = {}
	end
	
	def add_movie_with_rating(movie, rating = 0)
		@movie_store[movie] = rating
		message =  "Movie add successfully"
			notify(movie,rating, message)		
	end

	def update
			display_all
			puts "What movie do you want to update  ?"
			puts "Please enter the name "
			puts "Old name "
			old = " "
			old_name = gets.chomp.capitalize
			puts "New Rating"
			new_rating = gets.chomp.to_s

			@movie_store.each do |name, rating|
				if name == old_name
					old = name
					@movie_store[name] = rating.gsub(rating, new_rating)
				end 
			end 
			puts @movie_store
			message =  "Movie rating update successfully"
			notify(old, new_rating, message)
			dashboard	
	end
	def delete
		display_all
			puts "What movie do you want to delete  ?"
			puts "Please enter the name you want to delete  "
			old = " "
			delete_name = gets.chomp.capitalize
			old = delete_name
			@movie_store.delete_if { |name, rating|  name == delete_name  }
			if @movie_store.size <= 0
				puts "No movie added"
			end

			message =  "deleted successfully"
			dashboard	
			
	end
	def notify(movie = '', rating= '', message)
		puts message
		puts "#{movie} has beed added with a rating #{rating}"
		dashboard
	end
	def display_all
		@movie_store.each do |name,rating|
			puts "Movie name: #{name } with Rating: #{rating}"
		end
	end

	def dashboard
		puts  "1. Add a movie "
		puts "2. update a movie "
		puts  "3. delete a movie "
		puts "4. display all movie "
		choice = gets.chomp
		case choice
		
		when "1"
		puts "What movie do you want to add ?"
		movie = gets.chomp.capitalize
		puts "What rating please input from 0-4"
		rate = gets.chomp.to_s
		add_movie_with_rating(movie, rate)

		when "2"
			update
		when "3"
			delete
		when "4"
			display_all
		end

	end
end

movie = Movie.new
movie.dashboard
