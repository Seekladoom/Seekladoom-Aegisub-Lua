﻿-- Automation 4 demo script
-- Macro that adds \be1 tags in front of every selected line

local tr = aegisub.gettext

script_name = tr"Add blur3+fad(200,200) - 添加 高斯模糊和淡入淡出"
script_description = tr"A demo macro showing how to do simple line modification in Automation 4"
script_author = "Niels Martin Hansen"
script_version = "1"


function add_edgeblur(subtitles, selected_lines, active_line)
	for z, i in ipairs(selected_lines) do
		local l = subtitles[i]
		l.text = "{\\blur3\\fad(200,200)}" .. l.text
		subtitles[i] = l
	end
	aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, tr"Adds \\blur3\\fad(200,200) tags to all selected lines", add_edgeblur)
