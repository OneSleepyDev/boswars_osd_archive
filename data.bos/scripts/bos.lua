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
--	bos.ccl		-	game specific stuff, and wc2 format compatibility
--
--	(c) Copyright 2001-2003 by Crestez Leonard
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

DefineRaceNames(
	"race", {
		"race", 0,
		"name", "elites",
		"display", "Elites",
		"visible"},
	"race", {
		"race", 1,
		"name", "neutral",
		"display", "Neutral"}
)

DefineTilesetWcNames("tileset-desert", "tileset-winter")

DefineConstructionWcNames(
	"construction-none", "construction-land", "construction-wall",
	"construction-land2", "construction-plate", "construction-msilo",
	"construction-gen", "construction-vault", "construction-camp",
	"construction-rfac", "construction-hosp", "construction-vfac")





DefineUnitTypeWcNames(
	"unit-assault", "unit-dorcoz", "unit-engineer",
	"unit-gen", "unit-camp",  "unit-camp",
	"unit-dead-body", "unit-destroyed-1x1-place", "unit-destroyed-2x2-place",
	"unit-destroyed-3x3-place", "unit-destroyed-4x4-place", "unit-harvester",
	"unit-rfac", "unit-grenadier", "unit-bazoo",
	"unit-medic", "unit-hosp", "unit-vfac",
	"unit-apcs", "unit-msilo", "unit-plate1",
	"unit-crystal-field1", "unit-crystal-field2", "unit-crystal-field3",
	"unit-crystal-field4", "unit-crystal-field5", "unit-crystal-field6",
	"unit-crystal-field7", "unit-crystal-field8", "unit-crystal-field9",
	"unit-crystal-field10", "unit-crystal-field11", "unit-crystal-field12",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-dead-body","unit-dead-body",
	"unit-dead-body","unit-elites-start-location","unit-crystal-field13")

DefineMissileTypeWcNames(
	"missile-nuke", "missile-grenadier", "missile-bazoo", "missile-dorcoz",
	"missile-heal", "missile-64x64-explosion", "missile-160x128-explosion",
	"missile-288x288-explosion", "missile-small-fire", "missile-big-fire",
	"missile-explosion", "missile-green-cross", "missile-none", "missile-hit")

DefineIconWcNames(
	"icon-assault", "icon-apcs", "icon-grenadier", "icon-bazoo",
	"icon-medic", "icon-engineer", "icon-harvester", "icon-gen",
	"icon-gen_b", "icon-camp", "icon-camp_b", "icon-vault", "icon-dev_b",
	"icon-rfac", "icon-rfac_b", "icon-hosp", "icon-hosp_b", "icon-vfac",
	"icon-vfac_b", "icon-msilo", "icon-msilo_b", "icon-plate1", "icon-expl",
	"icon-expl2", "icon-tdril", "icon-ddril", "icon-pdril", "icon-void",
	"icon-heal", "icon-build-lvl1", "icon-build-lvl2", "icon-build-lvl3",
	"icon-dorcoz", "icon-crystal-field", "icon-tita", "icon-cancel",
	"icon-stop", "icon-move", "icon-attack", "icon-patrol", "icon-attack-ground",
	"icon-repair", "icon-harvest", "icon-build-advanced",
	"icon-return-goods-peasant", "icon-return-goods-peon", "icon-stand-ground")

DefineUpgradeWcNames(
	"upgrade-expl", "upgrade-expl2", "upgrade-tdril",
	"upgrade-ddril", "upgrade-pdril", "upgrade-void")

DefineAiWcNames()

SetColorWaterCycleStart(38)
SetColorWaterCycleEnd(47)
SetColorIconCycleStart(240)
SetColorIconCycleEnd(244)
SetColorBuildingCycleStart(205)
SetColorBuildingCycleEnd(207)
