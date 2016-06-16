class WelcomeController < ApplicationController



  def ipsum_samples
  { :cupcake => "Cupcake ipsum dolor. Sit amet jelly-o sweet marzipan apple pie sugar plum muffin cake. Oat cake gummies gummies macaroon cookie macaroon bear claw bonbon.",

     :batman => "This town deserves a better class of criminal and I'm gonna give it to them. Tell your men they work for me now. This is my city.",

     :yolo => "Don’t trust anyone, cause you only live once. Pop a molly, I’m sweatin’, consequat feugiat eros. How you like your eggs, fried or fertilized? I’m ballin’ hard, I need a jersey on.",

     :zombie => "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia?",

     :space => "We have an infinite amount to learn both from nature and from each other. Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals."

    }

  end

  def lorem
    id = params[:id]
    @ipsum_paragraphs = ipsum_samples[id.to_sym]

    render_404 if @ipsum_paragraphs.nil?
  end

  def dev_list
      devs = []
      devs << "Lavoisier"
      devs << "Marcus"
      devs << "Damien"
      devs << "Karega"
      return devs
  end


  def names
    @devs = dev_list

    @dev = @devs.find {|dev| dev == params[:id] }
  end



end
