require 'gosu'

WIDTH = 800
HEIGHT = 600
TITLE = "Open and Close"

class Game < Gosu::Window
  def initialize
    super(WIDTH, HEIGHT)
    self.caption = TITLE
    @background = Gosu::Image.new("images/background.png")
    @bg_color = Gosu::Color.new(255, 0, 0, 0)
    @text = Gosu::Image.from_text("Gosu", 80, font: "fonts/freesansbold.ttf")
  end

  def button_down(id)
    case id
    when Gosu::KB_ESCAPE
      close
    when Gosu::KB_SPACE
      rand_color
    end
  end

  def update
  end

  def draw
    Gosu.draw_rect(0, 0, self.width, self.height, @bg_color)
    @background.draw(0, 0)
    @text.draw(0, 0)
  end
  
  def rand_color
    @bg_color.red = rand(256)
    @bg_color.green = rand(256)
    @bg_color.blue = rand(256)
  end
end

Game.new.show