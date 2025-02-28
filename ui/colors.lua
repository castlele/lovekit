---@class Color
---@field red number: 0..1
---@field green number: 0..1
---@field blue number: 0..1
---@field alpha number: 0..1
local Color = class()

---@param r number
---@param g number
---@param b number
---@param a number
function Color:init(r, g, b, a)
   self.red = r
   self.green = g
   self.blue = b
   self.alpha = a
end

function Color:asVec4()
   return {
      self.red,
      self.green,
      self.blue,
      self.alpha,
   }
end

return {
   color = Color,
   clear = Color(0, 0, 0, 0),
   black = Color(0, 0, 0, 1),
   white = Color(1, 1, 1, 1),
   red = Color(1, 0, 0, 1),
   green = Color(0, 1, 0, 1),
   blue = Color(0, 0, 1, 1),
   yellow = Color(1, 1, 0, 1),
   background = Color(39 / 255, 43 / 255, 52 / 255, 1),
   secondary = Color(20 / 255, 20 / 255, 20 / 255, 1),
   shadow = Color(0, 0, 0, 0.1),
   accent = Color(254 / 255, 255 / 255, 173 / 255, 1),
}
