--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      ui.lua - Define the elites user interface
--
--      (c) Copyright 2001-2004 by Lutz Sammer, Jimmy Salmon, Crestez Leonard,
--                                 and François Beerten.
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
--      $Id$

DefineCursor({
	Name = "cursor-point",
	Race = "elites",
	File = "elites/ui/elites_claw.png",
	HotSpot = {1, 1}, 
	Size = {28, 32}})

DefineCursor({
	Name = "cursor-green-hair",
	Race = "elites",
	File = "general/green.png",
	HotSpot = {15, 15},
	Size = {32, 32}})

DefineCursor({
	Name = "cursor-yellow-hair",
	Race = "elites",
	File = "general/yellow.png",
	HotSpot = {15, 15},
	Size = {32, 32}})

DefineCursor({
	Name = "cursor-red-hair",
	Race = "elites",
	File = "general/red.png",
	HotSpot = {15, 15},
	Size = {32, 32}})

------------------------------------------------------------------------------;
--	* Race elites.
------------------------------------------------------------------------------;
function AppendElements(t, elements)
	for k,v in pairs(elements) do
		if(type(k)=="number") then 
			table.insert(t, v)
		else
			table.insert(t, k, v)
		end
	end
end

function AddFiller(ui, graphic, position)
        print("filler")
	table.insert(ui, "filler")
	table.insert(ui, {File = graphic, Pos = position})
end

function DefineEliteScreen(screen_width, screen_height)
	info_panel_x = screen_width - 200
	info_panel_y = 160

	ui = {"elites", screen_width, screen_height,
		"normal-font-color", "light-green",
		"reverse-font-color", "yellow"}
	AddFiller(ui, "graphics/elites/ui/ui_" .. screen_width .. "_filler.png", {0, 0})
	-- resource line
	AddFiller(ui, "graphics/elites/ui/ui_" .. screen_width .. "_respanel.png", {0, 0})
	-- no menu panel ?
	-- minimap
	AddFiller(ui, "graphics/elites/ui/ui_minimap.png", 
			{screen_width - 200, 24})
	-- status line
	AddFiller(ui, "graphics/elites/ui/ui_" .. screen_width .. "_stat.png",
			{0, screen_height - 16})

	ui2 = {
		"resources", {
			"titanium", {
				File = "graphics/elites/ui/ui_res_icons.png", Frame = 0,
				Pos = {67 +   0, 0}, 
				Size = {14, 14}, 
				TextPos = {85 +   0, 1}},
			"crystal", {
				File = "graphics/elites/ui/ui_res_icons.png", Frame = 1,
				Pos = {67 +  75, 0},
				Size = {14, 14},
				TextPos =  {85 +  75, 1}},
--			"gas", {
--				File = "graphics/elites/ui/ui_res_icons.png", Frame = 1,
--				Pos = {67 + 150, 0}, "size", {14, 14}, "text-pos", {85 + 150, 1}},
			"food", {
				File = "graphics/elites/ui/ui_res_icons.png", Frame = 3,
				Pos =  {67 + 150, 0}, 
				Size = {14, 14}, 
				TextPos = {85 + 150, 1}},
			"score", {
				File = "graphics/elites/ui/ui_res_icons.png", Frame = 4,
				Pos = {67 + 300, 0}, 
				Size = {14, 14}, 
				TextPos = {85 + 300, 1}}},
		"info-panel", {
			"panel", {
				"file", "graphics/elites/ui/ui_info.png",
				"pos", {info_panel_x, info_panel_y},
				"size", {200, 176}},
			"selected", {
				"single", {
					"icon", {
						"pos", {screen_width - 187, 176}, "style", "icon"}
				},
				"multiple", {
					"icons", {
						{"pos", {screen_width - 187, 176}, "style", "icon"},
						{"pos", {screen_width - 172, 176}, "style", "icon"},
						{"pos", {screen_width - 157, 176}, "style", "icon"},
						{"pos", {screen_width - 142, 176}, "style", "icon"},
						{"pos", {screen_width - 112, 176}, "style", "icon"},
						{"pos", {screen_width -  97, 176}, "style", "icon"},
						{"pos", {screen_width -  82, 176}, "style", "icon"},
						{"pos", {screen_width -  67, 176}, "style", "icon"}},
					"max-text", {
						"font", "game",
						"pos", {info_panel_x + 10, info_panel_y + 10}}}},
			"training", {
				"single", {
					"text", {"text", "", "font", "game", "pos", {screen_width - 187, 204}},
					"icon", {"pos", {screen_width - 187, 243}, "style", "icon"}},
				"multiple", {
					"icons", {
						{"pos", {screen_width - 187, 243}, "style", "icon"},
						{"pos", {screen_width - 172, 243}, "style", "icon"},
						{"pos", {screen_width - 157, 243}, "style", "icon"},
						{"pos", {screen_width - 142, 243}, "style", "icon"},
						{"pos", {screen_width - 127, 243}, "style", "icon"},
						{"pos", {screen_width - 112, 243}, "style", "icon"}}}},
			"upgrading", {
				"text", {
					"text", "",
					"font", "game",
					"pos", {info_panel_x + 29, info_panel_y + 8 + 78}},
				"icon", {"pos", {screen_width - 187, 243}, "style", "icon"}},
			"researching", {
				"text", {
					"text", "",
					"font", "game",
					"pos", {info_panel_x + 16, info_panel_y + 8 + 78}},
				"icon", {"pos", {screen_width - 187, 243}, "style", "icon"}},
			"transporting", {"icons", {
					{"pos", {screen_width - 187, 243}, "style", "icon"},
					{"pos", {screen_width - 172, 243}, "style", "icon"},
					{"pos", {screen_width - 157, 243}, "style", "icon"},
					{"pos", {screen_width - 142, 243}, "style", "icon"},
					{"pos", {screen_width - 127, 243}, "style", "icon"},
					{"pos", {screen_width - 112, 243}, "style", "icon"}}},
			"completed-bar", {
				"color", {50, 50, 80},
				"pos", {screen_width - 187, 299},
				"size", {140, 15}}},
		"button-panel", {
			"panel", {
				"file", "graphics/elites/ui/ui_" .. screen_width .. "_bpanel.png",
				"pos", {screen_width - 200, 336}},
			"icons", {
				{"pos", {screen_width - 177+4, 340+4}, "style", "icon"},
				{"pos", {screen_width - 122+4, 340+4}, "style", "icon"},
				{"pos", {screen_width - 67+4, 340+4},  "style", "icon"},
				{"pos", {screen_width - 177+4, 385+4}, "style", "icon"},
				{"pos", {screen_width - 122+4, 385+4}, "style", "icon"},
				{"pos", {screen_width - 67+4, 385+4},  "style", "icon"},
				{"pos", {screen_width - 177+4, 430+4}, "style", "icon"},
				{"pos", {screen_width - 122+4, 430+4}, "style", "icon"},
				{"pos", {screen_width - 67+4, 430+4},  "style", "icon"}},
		        "auto-cast-border-color", {0, 0, 252}},
		"piemenu", {
			"radius", 70,
			"file", "graphics/ui/rosace1.png",
			"mouse-button", "middle"},
		"map-area", {
			Pos = {24, 16},
			Size = {
				screen_width - 200 - 24,
				screen_height - 32}},
		"menu-panel", {
			"menu-button", {
				Pos = {screen_width - 200, 0},
				Caption = "Menu (~<F10~>)",
				Style = "main"},
			"network-menu-button", {
				Pos = {screen_width - 200, 2},
				Caption = "Menu", 
				Style = "network"},
			"network-diplomacy-button", {
				Pos = {screen_width - 100, 2},
				Caption = "Diplomacy",
				Style = "network"}},
		"minimap", {
			Pos = {screen_width - 200 + 46, 24 + 17},
			Size = {121, 105}},
		"status-line", {
			TextPos = {2 + 36, screen_height - 14},
			Font = "game",
			Width = screen_width - 200 - 100 },
		"cursors", {
  			 Point = "cursor-point",
     			 Glass = "cursor-glass",
      			 Cross = "cursor-cross",
		         Yellow = "cursor-yellow-hair",
		         Green = "cursor-green-hair",
     			 Red = "cursor-red-hair",
		         Scroll = "cursor-scroll",
		         ArrowE = "cursor-arrow-e",
                         ArrowNE = "cursor-arrow-ne",
                         ArrowN = "cursor-arrow-n",
                         ArrowNW = "cursor-arrow-nw",
                         ArrowW = "cursor-arrow-w",
                         ArrowSW = "cursor-arrow-sw",
                         ArrowS = "cursor-arrow-s",
                         ArrowSE = "cursor-arrow-se"},
		"menu-panels", {
			"panel1", "graphics/general/panel_1.png",
			"panel2", "graphics/general/panel_2.png",
			"panel3", "graphics/general/panel_3.png",
			"panel4", "graphics/general/panel_4.png",
			"panel5", "graphics/general/panel_5.png"},
		"victory-background", "graphics/screens/general.png",
		"defeat-background", "graphics/screens/general.png"
	}
	AppendElements(ui,ui2)
	print(unpack(ui))
	DefineUI(unpack(ui))
end

DefineEliteScreen(640, 480)
DefineEliteScreen(800, 600)
DefineEliteScreen(1024, 768)
DefineEliteScreen(1280, 960)
DefineEliteScreen(1600, 1200)

