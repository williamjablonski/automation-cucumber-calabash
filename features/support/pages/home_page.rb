require 'calabash-android/abase'

class HomePage < Calabash::ABase

	def trait
    	"android.widget.TextView id:'txtResultado'"
  	end

	def setTriangleSide(text_1, text_2, text_3)
		enter_text(text_side_1, text_1)
		enter_text(text_side_2, text_2)
		enter_text(text_side_3, text_3)
	end

	def clickCalculate
		tap_when_element_exists("* id:'btnCalcular'")
	end

	def assertMessage (mensagem)
		expect(label_message).to include(mensagem.to_s)
	end

	def text_side_1
		field('txtLado1')
	end

	def text_side_2
		field('txtLado2')
	end

	def text_side_3
		field('txtLado3')
	end

	def label_message
		query("android.widget.TextView id:'txtResultado'", :text).to_s
  	end

  	def field(field_id)
    	"android.widget.TextView id:'#{field_id}'"
  end

end