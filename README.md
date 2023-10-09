![logo](banner.png)

# Narrator-Playdate
## DISCLAIMER
Please consider this port alpha and not release proof. 

Not all of the features have been tested ***yet***.

I am using this for a project of my own, and once I manage to finish it and fully test this port, I'll update the repo here to reflect the update.

[![Release](https://img.shields.io/github/v/release/zeantwan/narrator-playdate.svg?include_prereleases=&sort=semver&color=blue)](https://github.com/astrochili/narrator/releases)
[![License](https://img.shields.io/badge/License-MIT-blue)](https://github.com/astrochili/narrator/blob/master/LICENSE)
[![Toybox Compatible](https://img.shields.io/badge/toybox.py-compatible-brightgreen)](https://toyboxpy.io)
[![Mastodon](https://img.shields.io/badge/mastodon-gray?&logo=mastodon)](https://peoplemaking.games/@zeantwan)

### Support the original plugin author here:

[![Website](https://img.shields.io/badge/website-gray.svg?&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE4IDE2Ij48Y2lyY2xlIGN4PSIzLjY2IiBjeT0iMTQuNzUiIHI9IjEuMjUiIGZpbGw9InVybCgjYSkiLz48Y2lyY2xlIGN4PSI4LjY2IiBjeT0iMTQuNzUiIHI9IjEuMjUiIGZpbGw9InVybCgjYikiLz48Y2lyY2xlIGN4PSIxMy42NSIgY3k9IjE0Ljc1IiByPSIxLjI1IiBmaWxsPSJ1cmwoI2MpIi8+PHBhdGggZmlsbD0idXJsKCNkKSIgZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNNy42MyAxLjQ4Yy41LS43IDEuNTUtLjcgMi4wNSAwbDYuMjIgOC44MWMuNTguODMtLjAxIDEuOTctMS4wMyAxLjk3SDIuNDRhMS4yNSAxLjI1IDAgMCAxLTEuMDItMS45N2w2LjIxLTguODFaIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz48ZGVmcz48bGluZWFyR3JhZGllbnQgaWQ9ImEiIHgxPSIyLjQxIiB4Mj0iMi40MSIgeTE9IjEzLjUiIHkyPSIxNiIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiPjxzdG9wIHN0b3AtY29sb3I9IiNGRDhENDIiLz48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiNGOTU0MUYiLz48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCBpZD0iYiIgeDE9IjcuNDEiIHgyPSI3LjQxIiB5MT0iMTMuNSIgeTI9IjE2IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+PHN0b3Agc3RvcC1jb2xvcj0iI0ZEOEQ0MiIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1jb2xvcj0iI0Y5NTQxRiIvPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IGlkPSJjIiB4MT0iMTIuNCIgeDI9IjEyLjQiIHkxPSIxMy41IiB5Mj0iMTYiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIj48c3RvcCBzdG9wLWNvbG9yPSIjRkQ4RDQyIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjRjk1NDFGIi8+PC9saW5lYXJHcmFkaWVudD48bGluZWFyR3JhZGllbnQgaWQ9ImQiIHgxPSIuMDMiIHgyPSIuMDMiIHkxPSIuMDMiIHkyPSIxMi4yNiIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiPjxzdG9wIHN0b3AtY29sb3I9IiNGRkU2NUUiLz48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiNGRkM4MzAiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48L3N2Zz4=)](https://astronachos.com/)
[![Mastodon](https://img.shields.io/badge/mastodon-gray?&logo=mastodon)](https://mastodon.gamedev.place/@astronachos)
[![Twitter](https://img.shields.io/badge/twitter-gray?&logo=twitter)](https://twitter.com/astronachos)
[![Telegram](https://img.shields.io/badge/telegram-gray?&logo=telegram)](https://t.me/astronachos)
[![Buy me a coffee](https://img.shields.io/badge/buy_me_a_coffee-gray?&logo=buy%20me%20a%20coffee)](https://buymeacoffee.com/astrochili)

## Overview

The [Ink](https://www.inklestudios.com/ink/) language parser and runtime implementation in Lua. **But adapted to work on Playdate !**

Ink is a powerful narrative scripting language. You can find more information about how to write Ink scripts [here](https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md). There is also [Inky](https://github.com/inkle/inky) editor with useful features to test and debug Ink scripts.

Narrator allows to convert raw Ink scripts to the book (a lua table) and play it as story.

- 📖 A book is a passive model on the shelf like a game level.
- ✨ A story is a runtime state of the book reading like a game process.

## ⚠ Notes on "Parsing"

Due to Playdate Hardware limitation (and also my own technical limitations), the Playdate or Playdate Simulator cannot parse an Ink file using lpeg.

For this library to work, you will need to parse and output the file in another way. 

There is definitly a simple Lua script that you can run on your machin to do that, but because I can't manage to run "normal" lua, this repo contains a basic Defold project that can do that for you, but you can also create a very simple lua script using the original repo using this snippet.

```lua
local narrator = require('narrator.narrator')
-- Parse a Ink file at path 'stories/game.ink'
-- and save the book at path 'stories/game.lua'
local book = narrator.parse_file('stories.game', { save = true })
```

## Quick example
```lua
import "narrator/narrator"

-- Parse a book from the Ink file and save as module 'stories.game.lua'
-- local book = narrator.parse_file('stories.game', { save = true })

-- Imports the pre parsed book and init a story from it
-- Note: the "import" method actually returns the script imported, but has to be at the start of a line. So adding a line break is a workaround
-- See https://devforum.play.date/t/a-list-of-helpful-libraries-and-code/221/43
local book =
import "stories/game"

local story = narrator.init_story(book)

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
```


## Features

### Supported

- [x] Comments: singleline, multiline, todo's
- [x] Tags: global tags, knot tags, stitch tags, paragraph tags
- [x] Paths and sections: inclusions, knots, stitches, labels
- [x] Choices: suppressing and mixing, labels, conditions, sticky and fallback choices, tags
- [x] Branching: diversions, glues, gathers, nesting
- [x] Tunnels
- [x] Alternatives: sequences, cycles, once-only, shuffles, empty steps, nesting
- [x] Multiline alternatives: all the same + shuffle options
- [x] Conditions: logical operations, string queries, if and else statements, nesting
- [x] Multiline conditions: all the same + elseif statements, switches, nesting
- [x] Variables: assignments, constants, global variables, temporary variables, visits, lists
- [x] Lists: logical operations, multivalued lists, multi-list lists, all the queries, work with numbers
- [x] Game queries: all the queries without `TURNS()` and `TURNS_SINCE()`
- [x] State: saving and loading
- [x] Integration: external functions, variables observing, jumping
  - External function are still executed internally
- [x] Migration: the ability to implement the migration of player's saves after the book update
- [x] Internal functions

### Unsupported

- [ ] [Threads](https://github.com/astrochili/narrator/issues/22)
- [ ] [Divert target as variable type](https://github.com/astrochili/narrator/issues/23)
- [ ] [Assigning string evaluations to variables](https://github.com/astrochili/narrator/issues/24)
- [ ] [Multiple parallel flows](https://github.com/astrochili/narrator/issues/25)
- [ ] Line by line evaluation
  - You can output a paragraph line by line, but all of the function it contains will have already been processed

Also there is a list of [known limitations](https://github.com/astrochili/narrator/labels/known%20limitation) on the issues page.

## Alternatives

- [defold-ink](https://github.com/abadonna/defold-ink) — The Ink language runtime implementation in Lua based on parsing compiled JSON files.

## Showcase

- *Soon*

## Installation

### Toybox.py
You can add it to your Playdate project by installing toybox.py, going to your project folder in a Terminal window and typing:

```
toybox add https://github.com/ZeAntwan/narrator-playdate
toybox update
```

Then, if your code is in the source folder, just import the following:
```lua
import '../toyboxes/toyboxes.lua'
```

### Manual

Download this repo and unzip it at the root of your Playdate projet, and (if your main.lua file in in the "source" folder as advised byt Playdated SDK) import is using

```lua
import "../narrator/narrator"
```

## Documentation

### narrator.init_story(book)

Inits a story instance from the book. This is aclual to use in production. For example, just load a book with `import` and pass it to this function.

```lua
-- Require a parsed and saved before book
local book = 
import "stories/game"

-- Init a story instance
local story = narrator.init_story(book)
```

### story:begin()

Begins the story. Generates the first chunk of paragraphs and choices.

### story:can_continue()

Returns a boolean, does the story have paragraphs to output or not.

```lua
while story:can_continue() do
  -- Get paragraphs?
end
```

### story:continue(steps)

Get the next paragraphs. You can specify the number of paragraphs that you want to pull by the `steps` param.
- Pass nothing if you want to get all the currently available paragraphs. `0` also works.
- Pass `1` if you want to get one next paragraph without wrapping to array.

A paragraph is a table like `{ text = 'Hello.', tags = { 'tag1', 'tag2' } }`. Most of the paragraphs do not have tags so `tags` can be `nil`.


```lua
-- Get all the currently available paragraphs
local paragraphs = story:continue()

-- Get one next paragraph
local paragraph = story:continue(1)
```

### story:can_choose()

Returns a boolean, does the story have choices to output or not. Also returns `false` if there are available paragraphs to continue.

```lua
if story:can_choose() do
  -- Get choices?
end
```

### story:get_choices()

Returns an array of available choices. Returns an empty array if there are available paragraphs to continue.

A choice is a table like `{ text = 'Bye.', tags = { 'tag1', 'tag2' } }`. Most of the choices do not have tags so `tags` can be `nil`.

Choice tags are not an official feature of Ink, but it's a Narrator feature. These tags also will appear in the answer paragraph as it works in Ink by default. But if you have a completely eaten choice like `'[Answer] #tag'` you will receive tags only in the choice.

```lua
  -- Get available choices and output them to the player
  local choices = story:get_choices()
  for i, choice in ipairs(choices) do
    print(i .. ') ' .. choice.text)
  end
```

### story:choose(index)

Make a choice to continue the story. Pass the `index` of the choice that you was received with `get_choices()` before. Will do nothing if `can_continue()` returns `false`.

```lua
  -- Get the answer from the player in the terminal
  answer = tonumber(io.read())

  -- Send the answer to the story to generate new paragraphs
  story:choose(answer)

  -- Get the new paragraphs
  local new_paragraphs = story:continue()
```

### story:jump_to(path_string)

Jumps to the path. The `path_string` param is a string like `'knot.stitch.label'`.

```lua
  -- Jump to the maze stitch in the adventure knot
  story:jump_to('adventure.maze')

  -- Get the maze paragraphs
  local maze_paragraphs = story:continue()
```

### story:get_visits(path_string)

Returns the number of visits to the path. The `path_string` param is a string like `'knot.stitch.label'`.

```lua
-- Get the number of visits to the maze's red room
local red_room_visits = story:get_visits('adventure.maze.red_room')

-- Get the number of adventures visited.
local adventure_visits = story:get_visits('adventure')
```

### story:get_tags(path_string)

Returns tags for the path. The `path_string` param is a string like `'knot.stitch'`. This function is useful when you want to get tags before continue the story and pull paragraphs. Read more about it [here](https://github.com/inkle/ink/blob/master/Documentation/RunningYourInk.md#knot-tags).

```lua
-- Get tags for the path 'adventure.maze'
local mazeTags = story:get_tags('adventure.maze')
```

### story:save_state()

Raturns a table with the story state that can be saved and restored later. Use it to save the game.

```lua
-- Get the story's state
local state = story:save_state()

-- Save the state to your local storage
manager.save(state)
```

### story:load_state(state)

Restores a story's state from the saved before state. Use it to load the game.

```lua
-- Load the state from your local storage
local state = manager.load()

-- Restore the story's state
story:load_state(state)

```

### story:observe(variable, observer)

Assigns an observer function to the variable's changes.

```lua
local function x_did_change(x)
  print('The x did change! Now it\'s ' .. x)
end

-- Start observing the variable 'x'
story:observe('x', x_did_change)
```

### story:bind(func_name, handler)

Binds a function to external calling from the Ink. The function can returns the value or not.

```lua
local function beep()
  print('Beep! 😃')
end

local function sum(x, y)
  return x + y
end

-- Bind the function without params and returned value
story:bind('beep', beep)

-- Bind the function with params and returned value
story:bind('sum', sum)
```

### story.global_tags

An array with book's global tags. Tags are strings of course.

```lua
-- Get the global tags
local global_tags = story.global_tags

-- A hacky way to get the same global tags
local global_tags = story:get_tags()
```

### story.constants

A table with book's constants. Just read them, constants changing is not a good idea.

```lua
-- Get the theme value from the Ink constants
local theme = story.constants['theme']
```

### story.variables

A table with story's variables. You can read or change them by this way.

```lua
-- Get the mood variable value
local mood = story.variables['mood']

-- Set the mood variable value
story.variables['mood'] = 'sunny'
```

### story.migrate

A function that you can specify for migration from old to new versions of your books. This is useful, for example, when you don't want to corrupt player's save after the game update.

This is the place where you can rename or change variables, visits, update the current path, etc. The default implementation returns the same state without any migration.

```lua
-- Default implementation
function(state, old_version, new_version) return state end
```

The `old_version` is the version of the saved state, the `new_version` is the version of the book. You can specify the verson of the book with the constant `'version'` in the Ink content, otherwise it's equal to `0`.

```lua
-- A migration function example
local function migrate(state, old_version, new_version)

  -- Check the need for migration
  if new_version == old_version then
    return state
  end

  -- Migration for the second version of the book
  if new_version == 2 then

    -- Get the old value
    local old_mood = state.variables['mood']

    -- If it exists then migrate ...
    if old_mood then
      -- ... migrate the old number value to the new string value
      state.variables['mood'] = old_mood < 50 and 'sadly' or 'sunny'
    end
  end

  return state
end

-- Assign the migration function before loading a saved game
story.migrate = migrate

-- Load the game
story:load_state(saved_state)
```

## Third Party Libraries

- [LPeg](http://www.inf.puc-rio.br/~roberto/lpeg/) by [Roberto Ierusalimschy](http://www.inf.puc-rio.br/~roberto/) (MIT Licence).
- [classic](https://github.com/rxi/classic) by [rxi](https://github.com/rxi) (MIT Licence).
- [lume](https://github.com/rxi/lume) by [rxi](https://github.com/rxi) (MIT Licence).
