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
--	buttons.ccl	-	Define the unit-buttons of the terras race.
--
--	(c) Copyright 2001-2004 by Vladi Belperchinov-Shabanski, Lutz Sammer and
--						Crestez Leonard
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

-- general commands -- almost all units have it -------------------------------

DefineButton({
	Pos = 1, Level = 0, Icon = "icon-move",
	Action = "move",
	Key = "m", Hint = "~!MOVE",
	ForUnit = {"unit-grunt", "unit-peon", "terras-group"}})

DefineButton({
	Pos = 2, Level = 0, Icon = "icon-stop",
	Action = "stop",
	Key = "s", Hint = "~!STOP",
	ForUnit = {"unit-grunt", "unit-peon", "terras-group"}})

DefineButton({
	Pos = 3, Level = 0, Icon = "icon-attack",
	Action = "attack",
	Key = "a", Hint = "~!ATTACK",
	ForUnit = {"unit-grunt", "unit-peon", "terras-group"}})

DefineButton({
	Pos = 4, Level = 0, Icon = "icon-patrol",
	Action = "patrol",
	Key = "p", Hint = "~!PATROL",
	ForUnit = {"unit-grunt", "terras-group"}})

DefineButton({
	Pos = 5, Level = 0, Icon = "icon-stand-ground",
	Action = "stand-ground",
	Key = "t", Hint = "S~!TAND GROUND",
	ForUnit = {"unit-grunt", "terras-group"}})

-- peon specific actions ------------------------------------------------------

DefineButton({
	Pos = 4, Level = 0, Icon = "icon-repair",
	Action = "repair",
	Key = "r", Hint = "~!REPAIR",
	ForUnit = {"unit-peon"}})

DefineButton({
	Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest",
	Key = "h", Hint = "~!HARVEST LUMBER/MINE GOLD",
	ForUnit = {"unit-peon"}})

DefineButton({
	Pos = 6, Level = 0, Icon = "icon-return-goods-peon",
	Action = "return-goods",
	Key = "g", Hint = "RETURN WITH ~!GOODS",
	ForUnit = {"unit-peon"}})

-- build basic/advanced structs -----------------------------------------------

DefineButton({
	Pos = 7, Level = 0, Icon = "icon-build-basic",
	Action = "button", Value = 1,
	Key = "b", Hint = "~!BUILD BASIC STRUCTURE",
	ForUnit = {"unit-peon"}})

-- simple buildings terras ----------------------------------------------------

DefineButton({
	Pos = 1, Level = 1, Icon = "icon-cancel",
	Action = "build", Value = "unit-pig-farm",
	Key = "f", Hint = "BUILD PIG ~!FARM",
	ForUnit = {"unit-peon"}})

DefineButton({
	Pos = 2, Level = 1, Icon = "icon-cancel",
	Action = "build", Value = "unit-terras-barracks",
	Key = "b", Hint = "BUILD ~!BARRACKS",
	ForUnit = {"unit-peon"}})

DefineButton({
	Pos = 3, Level = 1, Icon = "icon-cancel",
	Action = "build", Value = "unit-great-hall",
	Key = "h", Hint = "BUILD GREAT ~!HALL",
	ForUnit = {"unit-peon"}})

DefineButton({
	Pos = 9, Level = 1, Icon = "icon-cancel",
	Action = "button", Value = 0,
	Key = "\033", Hint = "~<ESC~> CANCEL",
	ForUnit = {"unit-peon"}})

-- buildings commands ---------------------------------------------------------

DefineButton({
	Pos = 1, Level = 0, Icon = "icon-cancel",
	Action = "train-unit", Value = "unit-peon",
	Allowed = "check-no-research",
	Key = "p", Hint = "TRAIN ~!PEON",
	ForUnit = {"unit-great-hall"}})

-- great hall upgrades --------------------------------------------------------

DefineButton({
	Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest",
	Key = "h", Hint = "SET ~!HARVEST LUMBER/MINE GOLD",
	ForUnit = {"unit-great-hall"}})

DefineButton({
	Pos = 7, Level = 0, Icon = "icon-move",
	Action = "move",
	Key = "m", Hint = "SET ~!MOVE",
	ForUnit = {"unit-great-hall", "unit-terras-barracks"}})

DefineButton({
	Pos = 8, Level = 0, Icon = "icon-stop",
	Action = "stop",
	Key = "z", Hint = "SET ~!ZTOP",
	ForUnit = {"unit-great-hall", "unit-terras-barracks"}})

DefineButton({
	Pos = 9, Level = 0, Icon = "icon-attack",
	Action = "attack",
	Key = "e", Hint = "S~!ET ATTACK",
	ForUnit = {"unit-great-hall", "unit-terras-barracks", "unit-alchemist"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "icon-dorcoz",
	Action = "train-unit", Value = "unit-grunt",
	Key = "g", Hint = "TRAIN ~!GRUNT",
	ForUnit = {"unit-terras-barracks"}})

