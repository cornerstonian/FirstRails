class WelcomeController < ApplicationController



  def ipsum_paragraphs

      { 'star_wars' => "Lucas ipsum dolor sit amet mon cathar farlander gunray x'ting xizor sidious maul danni ebe. Rom caedus skywalker iridonian naberrie skywalker paploo. Gamorr luke windu solo. Paploo dooku warrick gilad veila thakwaash habassa. Priapulin rieekan rhen kit nas. Bel grodin jawa cody tusken raider aramandi fel. Breha voxyn stereb teneniel noghri phlog nikto lepi garm. Chirrpa kathol saesee seerdon gricho chistori vaathkree. Rune kit lah thisspias felth mas porkins ooryl zabrak. Gran kalarba nosaurian moff.",

      'batman' => "This is what happens when an unstoppable force meets an immovable object. The first time I stole so that I wouldn't starve, yes. I lost many assumptions about the simple nature of right and wrong. And when I traveled I learned the fear before a crime and the thrill of success. But I never became one of them. I just the took to calling it the Bat. And yes Mr. Wayne, it does come in black."

    }

  end

  # @product_name = valid_product_names.find {|p| p == id}
  #     if @product_name.present?


  def lorem
    # because @ipsum_paragraphs is an instance variable, it's available in your views
      # check the id
      id = params[:id]
      @ipsum_paragraphs = ipsum_paragraphs.each do |k,v| v if k == id 
      end
  end




end