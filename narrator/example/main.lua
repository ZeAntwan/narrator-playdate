--
--  Narrator Playdate - The language parser and runtime implementation in Lua for Playdate.
--

-- Dependencies
import "../narrator"

-- Parse a book from the Ink file and save as module 'stories.game.lua'
-- local book = narrator.parse_file('stories.game', { save = true })

-- Imports the book.
-- Note: the "import" method actually returns the script imported, but has to be at the start of a line.
-- So adding a line break is a workaround
-- See https://devforum.play.date/t/a-list-of-helpful-libraries-and-code/221/43
local book =
import "stories/game"

-- Init a story from the book
local story = narrator.init_story(book)

-- Start observing the Ink variable 'x'
story:observe('x', function(x) print('The x did change! Now it\'s ' .. x) end)

-- Bind local functions to call from ink as external functions
story:bind('beep', function() print('Beep! 😃') end)
story:bind('sum', function(x, y) return x + y end)

-- Begin the story
story:begin()

print('--- Game started ---\n')

local wait_for_input = false

function playdate.update()
  
  if story:can_continue() then
    -- Get current paragraphs to output
    local paragraphs = story:continue()
  
    for _, paragraph in ipairs(paragraphs) do
      local text = paragraph.text
  
      -- You can handle tags as you like, but we attach them to text here.
      if paragraph.tags then
        text = text .. ' #' .. table.concat(paragraph.tags, ' #')
      end
  
      -- Output text to the player
      print(text)
    end
  end

  -- If there is no choice it seems like the game is over
  if story:can_choose() and not wait_for_input then
    -- Get available choices and output them to the player
    local choices = story:get_choices()
    for i, choice in ipairs(choices) do
      print(i .. ') ' .. choice.text)
    end
    wait_for_input = true
  end


  if not story:can_continue() and not story:can_choose() and not wait_for_input then
    print('\n--- Game over ---')
    wait_for_input = true
  end

end

function playdate.keyPressed(key)
  -- Read the choice from the player input
  choice = tostring(key)
  print(choice)
  if choice:find('[%d]') then
    -- Send answer to the story to generate new paragraphs
    story:choose(tonumber(key))
    wait_for_input = false
  end

end