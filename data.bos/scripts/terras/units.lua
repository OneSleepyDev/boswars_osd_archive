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
--	units.ccl	-	Define the used terras unit-types.
--
--	(c) Copyright 2001 - 2004 by Lutz Sammer and Crestez Leonard
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

---------------------------------------------------------------
--	Define unit-types.
--
DefineUnitType("unit-grunt", {
	Name = "Dorcoz",
	Files = {"tileset-desert", "terras/units/unit_dorcoz.png"}, Size = {64, 64},
	Animations = "animations-dorcoz", Icon = "icon-dorcoz",
	Costs = {"time", 60, "titanium", 600}, Speed = 10,
	HitPoints = 100, DrawLevel = 40, TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 7, ComputerReactionRange = 7, PersonReactionRange = 7,
	Armor = 2, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-dorcoz",
	MaxAttackRange = 7, Priority = 60, Points = 50, Demand = 1,
	Corpse = {"unit-dead-body", 0}, Type = "land", RightMouseAction = "attack",
	CanAttack = true, CanTargetLand = true, LandUnit = true, organic = true,
	SelectableByRectangle = true,
	Sounds = {
		"selected", "grunt-selected",
		"acknowledge", "grunt-acknowledge",
		"ready", "grunt-ready",
		"help", "basic terras voices help 1",
		"dead", "basic terras voices dead",
		"attack", "grunt-attack"}
	})

DefineUnitType("unit-peon", {
	Name = "Faun",
	Files = {"tileset-desert", "terras/units/faun.png"}, Size = {72, 72},
	Animations = "animations-dorcoz", Icon = "icon-cancel",
	Costs = {"time", 45, "titanium", 400},
	Speed = 10, HitPoints = 30, DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	BasicDamage = 3, PiercingDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1, Priority = 50, Points = 30, Demand = 1,
	Corpse = {"unit-dead-body", 0}, Type = "land", RightMouseAction = "harvest",
	CanAttack = true, RepairRange = 1, CanTargetLand = true, LandUnit = true, Coward = true,
	CanGatherResources = {{
		"file-when-loaded", "terras/units/faun_with_gold.png",
		"resource-id", "titanium",
		"resource-capacity", 100,
		"wait-at-resource", 150,
		"wait-at-depot", 150}, {
		"file-when-loaded", "terras/units/faun_with_wood.png",
		"resource-id", "crystal",
		"resource-capacity", 100,
		"resource-step", 2,
		"wait-at-resource", 24,
		"wait-at-depot", 150,
		"lose-resources",
		"terrain-harvester"}},
	organic = true, SelectableByRectangle = true,
	Sounds  = {
		"selected", "peon-selected",
		"acknowledge", "peon-acknowledge",
		"ready", "peon-ready",
		"harvest", "crystal", "peon-attack",
		"help", "basic terras voices help 1",
		"dead", "basic terras voices dead",
		"attack", "peon-attack"}
	})

DefineUnitType("unit-pig-farm", {
	Name = "Pig Farm",
	Files = {"tileset-desert", "tilesets/desert/terras/buildings/farm.png",
			 "tileset-winter", "tilesets/winter/terras/buildings/farm.png"},
	Size = {64, 64}, Animations = "animations-building", Icon = "icon-cancel",
	Costs = {"time", 100, "titanium", 500, "crystal", 250},
	RepairHp = 4, RepairCosts = {"titanium", 1, "crystal", 1},
	Construction = "construction-land", Speed = 0, HitPoints = 400,
	DrawLevel = 20, TileSize = {2, 2}, BoxSize = {63, 63}, SightRange = 2,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 45, Points = 100, Supply = 4,
	Corpse = {"unit-destroyed-2x2-place", 0}, ExplodeWhenKilled = "missile-explosion",
	Type = "land", Building = true,
	Sounds = {
		"selected", "pig-farm-selected",
		"acknowledge", "pig-farm-acknowledge",
		"ready", "pig-farm-ready",
		"help", "basic terras voices help 2",
		"dead", "building destroyed",
		"attack", "pig-farm-attack"}
	})

DefineUnitType("unit-terras-barracks", {
	Name = "Barracks",
	Files = {"tileset-desert", "tilesets/desert/terras/buildings/barracks.png",
			"tileset-winter", "tilesets/winter/terras/buildings/barracks.png"},
	Size = {96, 96}, Animations = "animations-building", Icon = "icon-cancel",
	Costs = {"time", 200, "titanium", 700, "crystal", 450},
	RepairHp = 4, RepairCosts = {"titanium", 1, "crystal", 1},
	Construction = "construction-land", Speed = 0, HitPoints = 800,
	DrawLevel = 20, TileSize = {3, 3}, BoxSize = {95, 95}, SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35, Points = 160,
	Corpse = {"unit-destroyed-3x3-place", 0}, ExplodeWhenKilled = "missile-explosion",
	Type = "land", Building = true,
	Sounds = {
		"selected", "terras-barracks-selected",
		"acknowledge", "terras-barracks-acknowledge",
		"ready", "terras-barracks-ready",
		"help", "basic terras voices help 2",
		"dead", "building destroyed",
		"attack", "terras-barracks-attack"}
	})

DefineUnitType("unit-great-hall", {
	Name = "Great Hall",
	Files = {"tileset-desert", "tilesets/desert/terras/buildings/great_hall.png",
			"tileset-winter", "tilesets/winter/terras/buildings/great_hall.png"},
	Size = {128, 128}, Animations = "animations-building", Icon = "icon-cancel",
	Costs = {"time", 255, "titanium", 1200, "crystal", 800},
	RepairHp = 4, RepairCosts = {"titanium", 1, "crystal", 1},
	Construction = "construction-land", Speed = 0, HitPoints = 1200,
	DrawLevel = 20, TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 1, Armor = 20, BasicDamage = 0, PiercingDamage = 0,
	Missile = "missile-none", Priority = 35, AnnoyComputerFactor = 45,
	Points = 200, Supply = 1, Corpse = {"unit-destroyed-4x4-place", 0},
	ExplodeWhenKilled = "missile-explosion", Type = "land", Building = true,
	CanStore = {"titanium", "crystal"},
	Sounds = {
		"selected", "great-hall-selected",
		"acknowledge", "great-hall-acknowledge",
		"ready", "great-hall-ready",
		"help", "basic terras voices help 2",
		"dead", "building destroyed",
		"attack", "great-hall-attack"}
	})

DefineUnitType("unit-terras-start-location", {
	Name = "Start Location",
	Files = {"tileset-desert", "terras/o_startpoint.png"}, Size = {32, 32},
	Animations = "animations-building", Icon = "icon-cancel",
	Speed = 0, HitPoints = 0, DrawLevel = 0, TileSize = {1, 1},
	BoxSize = {31, 31}, SightRange = 0, BasicDamage = 0, PiercingDamage = 0,
	Missile = "missile-none", Priority = 0, Demand = 0, Type = "land",
	Sounds = {
		"selected", "terras-start-location-selected",
		"acknowledge", "terras-start-location-acknowledge",
		"ready", "terras-start-location-ready",
		"help", "basic terras voices help 2",
		"dead", "building destroyed",
		"attack", "terras-start-location-attack"}
	})

