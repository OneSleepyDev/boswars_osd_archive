--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--			  T H E   W A R   B E G I N S
--	   Stratagus - A free fantasy real time strategy game engine
--
--	ui.ccl		-	Define the elites user interface
--
--	(c) Copyright 2001-2004 by Lutz Sammer, Jimmy Salmon, Crestez Leonard and
--					François Beerten.
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
--	$Id$

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

function DefineEliteScreen(screen_width, screen_height)
	info_panel_x = screen_width - 200
	info_panel_y = 160
	icon_size = {46, 38}

	DefineUI("elites", screen_width, screen_height,
		"normal-font-color", "light-green",
		"reverse-font-color", "yellow",
		"filler", {
			"file", "graphics/elites/ui/ui_" .. screen_width .. "_filler.png",
			"pos", {0, 0}},
		"resource-line",
			{"graphics/elites/ui/ui_" .. screen_width .. "_respanel.png", 0, 0},
		"resources", {
			"titanium", {
				"file", "graphics/elites/ui/ui_res_icons.png", "frame", 0,
				"pos", {67 +   0, 0}, "size", {14, 14}, "text-pos", {85 +   0, 1}},
			"crystal", {
				"file", "graphics/elites/ui/ui_res_icons.png", "frame", 1,
				"pos", {67 +  75, 0}, "size", {14, 14}, "text-pos", {85 +  75, 1}},
--			"gas", {
--				"file", "graphics/elites/ui/ui_res_icons.png", "frame", 1,
--				"pos", {67 + 150, 0}, "size", {14, 14}, "text-pos", {85 + 150, 1}},
			"food", {
				"file", "graphics/elites/ui/ui_res_icons.png", "frame", 3,
				"pos", {67 + 150, 0}, "size", {14, 14}, "text-pos", {85 + 150, 1}},
			"score", {
				"file", "graphics/elites/ui/ui_res_icons.png", "frame", 4,
				"pos", {67 + 300, 0}, "size", {14, 14}, "text-pos", {85 + 300, 1}}},
		"info-panel", {
			"panel", {
				"file", "graphics/elites/ui/ui_info.png",
				"pos", {info_panel_x, info_panel_y},
				"size", {200, 176}},
			"selected", {
				"single", {"icon",
					{"pos", {screen_width - 187, 176}, "size", icon_size}
				},
				"multiple", {
					"icons", {
						{"pos", {screen_width - 187, 176}, "size", icon_size},
						{"pos", {screen_width - 172, 176}, "size", icon_size},
						{"pos", {screen_width - 157, 176}, "size", icon_size},
						{"pos", {screen_width - 142, 176}, "size", icon_size},
						{"pos", {screen_width - 112, 176}, "size", icon_size},
						{"pos", {screen_width -  97, 176}, "size", icon_size},
						{"pos", {screen_width -  82, 176}, "size", icon_size},
						{"pos", {screen_width -  67, 176}, "size", icon_size}},
					"max-text", {
						"font", "game",
						"pos", {info_panel_x + 10, info_panel_y + 10}}}},
			"training", {
				"single", {
					"text", {"text", "", "font", "game", "pos", {screen_width - 187, 204}},
					"icon", {"pos", {screen_width - 187, 243}, "size", icon_size}},
				"multiple", {
					"icons", {
						{"pos", {screen_width - 187, 243}, "size", icon_size},
						{"pos", {screen_width - 172, 243}, "size", icon_size},
						{"pos", {screen_width - 157, 243}, "size", icon_size},
						{"pos", {screen_width - 142, 243}, "size", icon_size},
						{"pos", {screen_width - 127, 243}, "size", icon_size},
						{"pos", {screen_width - 112, 243}, "size", icon_size}}}},
			"upgrading", {
				"text", {
					"text", "",
					"font", "game",
					"pos", {info_panel_x + 29, info_panel_y + 8 + 78}},
				"icon", {"pos", {screen_width - 187, 243}, "size", icon_size}},
			"researching", {
				"text", {
					"text", "",
					"font", "game",
					"pos", {info_panel_x + 16, info_panel_y + 8 + 78}},
				"icon", {"pos", {screen_width - 187, 243}, "size", icon_size}},
			"transporting", {"icons", {
					{"pos", {screen_width - 187, 243}, "size", icon_size},
					{"pos", {screen_width - 172, 243}, "size", icon_size},
					{"pos", {screen_width - 157, 243}, "size", icon_size},
					{"pos", {screen_width - 142, 243}, "size", icon_size},
					{"pos", {screen_width - 127, 243}, "size", icon_size},
					{"pos", {screen_width - 112, 243}, "size", icon_size}}},
			"completed-bar", {
				"color", {50, 50, 80},
				"pos", {screen_width - 187, 299},
				"size", {140, 15}}},
		"button-panel", {
			"panel", {
				"file", "graphics/elites/ui/ui_" .. screen_width .. "_bpanel.png",
				"pos", {screen_width - 200, 336}},
			"icons", {
				{"pos", {screen_width - 177, 340}, "size", {46, 38}},
				{"pos", {screen_width - 122, 340}, "size", {46, 38}},
				{"pos", {screen_width - 67, 340}, "size", {46, 38}},
				{"pos", {screen_width - 177, 385}, "size", {46, 38}},
				{"pos", {screen_width - 122, 385}, "size", {46, 38}},
				{"pos", {screen_width - 67, 385}, "size", {46, 38}},
				{"pos", {screen_width - 177, 430}, "size", {46, 38}},
				{"pos", {screen_width - 122, 430}, "size", {46, 38}},
				{"pos", {screen_width - 67, 430}, "size", {46,38}}},
		        "command-key-font", "game"},
		"piemenu", {
			"radius", 70,
			"file", "graphics/ui/rosace1.png",
			"mouse-button", "middle"},
		"map-area", {
			"pos", {24, 16},
			"size", {
				screen_width - 200 - 24,
				screen_height - 32}},
		"menu-panel", {
			"menu-button", {
				"pos", {screen_width - 200, 0},
				"caption", "Menu (~<F10~>)", "style", "main"},
			"network-menu-button", {
				"pos", {screen_width - 200, 2},
				"caption", "Menu", "style", "network"},
			"network-diplomacy-button", {
				"pos", {screen_width - 100, 2},
				"caption", "Diplomacy", "style", "network"}},
		"minimap", {
			"file", "graphics/elites/ui/ui_minimap.png",
			"panel-pos", {screen_width - 200, 24},
			"pos", {screen_width - 200 + 46, 24 + 17},
			"size", {121, 105}},
		"status-line", {
			"file", "graphics/elites/ui/ui_" .. screen_width .. "_stat.png",
			"pos", {0, screen_height - 16},
			"text-pos", {2 + 36, screen_height - 14},
			"font", "game",
			"width", screen_width - 200 - 100},
		"cursors", {
			"point", "cursor-point",
			"glass", "cursor-glass",
			"cross", "cursor-cross",
			"yellow", "cursor-yellow-hair",
			"green", "cursor-green-hair",
			"red", "cursor-red-hair",
			"scroll", "cursor-scroll",
			"arrow-e", "cursor-arrow-e",
			"arrow-ne", "cursor-arrow-ne",
			"arrow-n", "cursor-arrow-n",
			"arrow-nw", "cursor-arrow-nw",
			"arrow-w", "cursor-arrow-w",
			"arrow-sw", "cursor-arrow-sw",
			"arrow-s", "cursor-arrow-s",
			"arrow-se", "cursor-arrow-se"},
		"menu-panels", {
			"panel1", "graphics/general/panel_1.png",
			"panel2", "graphics/general/panel_2.png",
			"panel3", "graphics/general/panel_3.png",
			"panel4", "graphics/general/panel_4.png",
			"panel5", "graphics/general/panel_5.png"},
		"victory-background", "graphics/screens/general.png",
		"defeat-background", "graphics/screens/general.png"
	)
end

DefineEliteScreen(640, 480)
DefineEliteScreen(800, 600)
DefineEliteScreen(1024, 768)
DefineEliteScreen(1280, 960)
DefineEliteScreen(1600, 1200)

