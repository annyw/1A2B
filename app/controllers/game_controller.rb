class GameController < ApplicationController
  def index

  	@input = params['fname']
  	if "#{@input}".match(/^\d{4}$/)
  		@how_much_a = 0
	  	@how_much_b = 0
	  	@a = Answer.last.answer

	  	4.times do |i|
	  		if @a[i] == @input[i]
	  			@how_much_a += 1
	  		elsif @a.include? @input[i]
	  			@how_much_b += 1
	    	end
	    end

	    t = Try.new
	    t.try = @input
	    t.how_a = @how_much_a
	    t.how_b = @how_much_b
	    t.save 
	else
	 	@input = nil
  	end


    @tries = Try.all

    if @how_much_a == 4
    	@you_tried = @tries.count
    	Answer.destroy_all
    	Answer.new(answer: @tries.first.try).save
    	Try.destroy_all
    end


  end

  def giveup
  	Try.destroy_all
  	redirect_to root_path
  end
end
