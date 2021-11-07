class PacMan
  attr_gtk

  def defaults
    @maze ||= [ # this is a 28 x 31 grid
    [ 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 14, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 15 ],
    [ 16,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 24 ],
    [ 16,  0, 26, 28, 28, 19,  0, 26, 28, 28, 28, 19,  0, 21, 23,  0, 26, 28, 28, 28, 19,  0, 26, 28, 28, 19,  0, 24 ],
    [ 16,  0, 21, 10, 10, 23,  0, 21, 10, 10, 10, 23,  0, 21, 23,  0, 21, 10, 10, 10, 23,  0, 21, 10, 10, 23,  0, 24 ],
    [ 16,  0, 22, 30, 30, 20,  0, 22, 30, 30, 30, 20,  0, 22, 20,  0, 22, 30, 30, 30, 20,  0, 22, 30, 30, 20,  0, 24 ],
    [ 16,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 24 ],
    [ 16,  0, 26, 28, 28, 19,  0, 26, 19,  0, 26, 28, 28, 28, 28, 28, 28, 19,  0, 26, 19,  0, 26, 28, 28, 19,  0, 24 ],
    [ 16,  0, 22, 30, 30, 20,  0, 21, 23,  0, 22, 30, 30, 29, 34, 30, 30, 20,  0, 21, 23,  0, 22, 30, 30, 20,  0, 24 ],
    [ 16,  0,  0,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0,  0,  0, 24 ],
    [ 17, 18, 18, 18, 18, 19,  0, 21, 35, 28, 28, 19,  0, 21, 23,  0, 26, 28, 28, 36, 23,  0, 26, 18, 18, 18, 18, 25 ],
    [ 10, 10, 10, 10, 10, 16,  0, 21, 34, 30, 30, 20,  0, 22, 20,  0, 22, 30, 30, 29, 23,  0, 24, 10, 10, 10, 10, 10 ],
    [ 10, 10, 10, 10, 10, 16,  0, 21, 23,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 21, 23,  0, 24, 10, 10, 10, 10, 10 ],
    [ 10, 10, 10, 10, 10, 16,  0, 21, 23,  0, 37, 18, 40, 43, 43, 41, 18, 39,  0, 21, 23,  0, 24, 10, 10, 10, 10, 10 ],
    [ 12, 12, 12, 12, 12, 20,  0, 22, 20,  0, 24, 10, 10, 10, 10, 10, 10, 16,  0, 22, 20,  0, 22, 12, 12, 12, 12, 12 ],
    [ 10,  0,  0,  0,  0,  0,  0,  0,  0,  0, 24, 10, 10, 10, 10, 10, 10, 16,  0,  0,  0,  0,  0,  0,  0,  0,  0, 10 ],
    [ 18, 18, 18, 18, 18, 19,  0, 26, 19,  0, 24, 10, 10, 10, 10, 10, 10, 16,  0, 26, 19,  0, 26, 18, 18, 18, 18, 18 ],
    [ 10, 10, 10, 10, 10, 16,  0, 21, 23,  0, 38, 12, 12, 12, 12, 12, 12, 42,  0, 21, 23,  0, 24, 10, 10, 10, 10, 10 ],
    [ 10, 10, 10, 10, 10, 16,  0, 21, 23,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 21, 23,  0, 24, 10, 10, 10, 10, 10 ],
    [ 10, 10, 10, 10, 10, 16,  0, 21, 23,  0, 26, 28, 28, 28, 28, 28, 28, 19,  0, 21, 23,  0, 24, 10, 10, 10, 10, 10 ],
    [ 11, 12, 12, 12, 12, 20,  0, 22, 20,  0, 22, 30, 30, 29, 34, 30, 30, 20,  0, 22, 20,  0, 22, 12, 12, 12, 12, 15 ],
    [ 16,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 24 ],
    [ 16,  0, 26, 28, 28, 19,  0, 26, 28, 28, 28, 19,  0, 21, 23,  0, 26, 28, 28, 28, 19,  0, 26, 28, 28, 19,  0, 24 ],
    [ 16,  0, 22, 30, 29, 23,  0, 22, 30, 30, 30, 20,  0, 22, 20,  0, 22, 30, 30, 30, 20,  0, 21, 34, 30, 20,  0, 24 ],
    [ 16,  0,  0,  0, 21, 23,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 21, 23,  0,  0,  0, 24 ],
    [ 27, 28, 19,  0, 21, 23,  0, 26, 19,  0, 26, 28, 28, 28, 28, 28, 28, 19,  0, 26, 19,  0, 21, 23,  0, 26, 28, 33 ],
    [ 31, 30, 20,  0, 22, 20,  0, 21, 23,  0, 22, 30, 30, 29, 34, 30, 30, 20,  0, 21, 23,  0, 22, 20,  0, 22, 30, 32 ],
    [ 16,  0,  0,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0, 21, 23,  0,  0,  0,  0,  0,  0, 24 ],
    [ 16,  0, 26, 28, 28, 28, 28, 36, 35, 28, 28, 19,  0, 21, 23,  0, 26, 28, 28, 36, 35, 28, 28, 28, 28, 19,  0, 24 ],
    [ 16,  0, 22, 30, 30, 30, 30, 30, 30, 30, 30, 20,  0, 22, 20,  0, 22, 30, 30, 30, 30, 30, 30, 30, 30, 20,  0, 24 ],
    [ 16,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 24 ],
    [ 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 25 ],        
  ].reverse
    @pacman ||= {
      lives: 3,
      score: 0,
      x: 13,
      y: 7,
      dx: 8,
      dy: 0,
      dir: 0, # 1 up, 2 right, 3 down, 4 left (0 for stationary until a key is pressed)
      speed: 2
    }
    maze_rt if @args.tick_count.zero? or inputs.keyboard.key_down.r # redraw if targets get messed up
    $gtk.reset if inputs.keyboard.key_down.space # for quick testing
  end

  def draw_background
    outputs.background_color = [ 9, 9, 9 ]
  end

  def maze_rt
    size = 16
    maze = []
    31.times do |y|
      28.times do |x|
        maze << { x: (x + 26) * size, y: (y + 6) * size, w: size, h: size, path: "sprites/maze-parts/#{@maze[y][x]}.png" }
      end
    end
    @args.render_target(:maze).sprites << maze
  end

  def draw_maze
    outputs.primitives << { x: 0, y: 0, w: 1280, h: 720, path: :maze }.sprite!
  end

  def draw_pacman
      outputs.primitives << {
        x: ((@pacman[:x] + 26)* 16) - 8 + @pacman[:dx],
        y: ((@pacman[:y] + 6 )* 16) - 8 + @pacman[:dy],
        w: 32,
        h: 32,
        path: "sprites/circle/yellow.png",
        angle: 180 - (@pacman.dir * 90)
  }.sprite!
  end

  def update_pacman_dir x, y, dir
    @pacman[:dir] = dir
    dx = @pacman[:dx]
    dy = @pacman[:dy]
    nextmove = @maze[@pacman[:y] + y][@pacman[:x] + x]
    case dir
      when 1
        if dy == 0 && nextmove != 0
          @pacman[:dx] = dx
          @pacman[:dy] = dy
          return
        end
        dy += @pacman[:speed] if dy < 16
        dy = 0 if dy > 15
        dy = 0 if dy > 0 && nextmove != 0
        if dy > 6 && nextmove == 0
          @pacman[:y] += y
          dy = -6
        end
      when 2
        if dx == 0 && nextmove != 0
          @pacman[:dx] = dx
          @pacman[:dy] = dy
          return
        end
        dx += @pacman[:speed] if dx < 16
        dx = 0 if dx > 15
        dx = 0 if dx > 0 && nextmove != 0
        if dx > 6 && nextmove == 0
          @pacman[:x] += x
          dx = -6
        end
      when 3
        if dy == 0 && nextmove != 0
          @pacman[:dx] = dx
          @pacman[:dy] = dy
          return
        end
        dy -= @pacman[:speed] if dy > -16
        dy = 0 if dy < -15
        dy = 0 if dy < 0 && nextmove != 0
        if dy < -6 && nextmove == 0
          @pacman[:y] += y
          dy = 6
        end
      when 4
        if dx == 0 && nextmove != 0
          @pacman[:dx] = dx
          @pacman[:dy] = dy
          return
        end
        dx -= @pacman[:speed] if dx > -16
        dx = 0 if dx < -15
        dx = 0 if dx < 0 && nextmove != 0
        if dx < -6 && nextmove == 0
          @pacman[:x] += x
          dx = 6
        end
    end
    @pacman[:dx] = dx
    @pacman[:dy] = dy
  end

  def draw_hitbox
    outputs.primitives << [ ((@pacman[:x] + 26)* 16), ((@pacman[:y] + 6 )* 16), 16, 16, 255, 255, 255 ].border
  end

  def check_movement # 1 up, 2 right, 3 down, 4 left
    if @pacman[:dx] == 0 && @maze[@pacman[:y] + 1][@pacman[:x]] == 0 && inputs.up
      update_pacman_dir 0, 1, 1
      return
    elsif @pacman[:dy] == 0 && @maze[@pacman[:y]][@pacman[:x] + 1] == 0 && inputs.right
      update_pacman_dir 1, 0, 2
      return
    elsif @pacman[:dx] == 0 && @maze[@pacman[:y] - 1][@pacman[:x]] == 0 && inputs.down
      update_pacman_dir 0, -1, 3
      return
    elsif @pacman[:dy] == 0 && @maze[@pacman[:y]][@pacman[:x] - 1] == 0 && inputs.left
      update_pacman_dir -1, 0, 4
      return
    end

    case @pacman[:dir]
      when 1
        update_pacman_dir 0, 1, 1
      when 2
        update_pacman_dir 1, 0, 2
      when 3
        update_pacman_dir 0, -1, 3
      when 4
        update_pacman_dir -1, 0, 4
    end
  end

  def tick
    defaults
    draw_background
    draw_maze
    draw_pacman
    draw_hitbox
    check_movement
  end
end

def tick args
  if args.tick_count.zero?
    $game = nil
  end
  $game ||= PacMan.new
  $game.args = args
  $game.tick
end

$gtk.reset
