class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :agency				#소속사
	  t.string :nationality			#국적
	  t.string :activity_name		#활동명
	  t.string :real_name			#본명
	  t.string :sex					#성별
	  
	  t.text :genre					#장르
	  t.text :nickname				#별명
	  t.text :intro					#소개
	  t.text :award_history			#수상이력
	  t.text :link					#프로필링크
	  t.text :activity_type			#활동유형
	  
	  t.datetime :debut_day			#데뷔일
      t.datetime :birth_day			#생일
	  
      t.timestamps
    end
  end
end
