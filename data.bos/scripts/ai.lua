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
--	ai.ccl		-	Define the AI.
--
--	(c) Copyright 2000-2002 by Lutz Sammer
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
--

DefineAiHelper(
  --
  -- Unit can build which buildings.
  --
  {"build", "unit-engineer",
   "unit-msilo", "unit-dev-yard", "unit-gen", "unit-camp",
   "unit-rfac", "unit-hosp", "unit-vfac", "unit-vault", "unit-plate1"},
  --
  -- Building can train which units.
  --
  {"train", "unit-vault", "unit-engineer"},
  {"train", "unit-camp", "unit-assault", "unit-bazoo", "unit-grenadier"},
  {"train", "unit-hosp", "unit-medic", "unit-dorcoz"},
  {"train", "unit-vfac", "unit-apcs", "unit-harvester"},
  --
  -- Building can research which spells or upgrades.
  --
  {"research", "unit-rfac", "upgrade-expl", "upgrade-expl2",
  "upgrade-tdril", "upgrade-pdril", "upgrade-ddril"},
  --
  -- Unit can repair which units.
  --
  {"repair", "unit-engineer",
   "unit-msilo", "unit-dev-yard", "unit-gen", "unit-camp", "unit-apcs",
   "unit-rfac", "unit-hosp", "unit-vfac", "unit-vault", "unit-plate1"},
  --
  -- Reduce unit limits.
  --
  {"unit-limit", "unit-gen", "food"})


Load("scripts/helpers.lua")

function Loop()
  while true do
     print("Looping !");  
     AiForce(1, {"unit-assault", 20}) 
     AiForce(2, {"unit-grenadier", 8}) 
     AiForce(3, {"unit-bazoo", 8}) 
     AiWaitForce(2)
     AiWaitForce(3)  -- wait until attack party is completed
     AiSleep(200)
     AiAttackWithForce(1)
     AiAttackWithForce(2)
     AiAttackWithForce(3)
  end
end


function AiRun(player)
  AiDebug(true)
  AiSleep(AiGetSleepCycles())
  AiNeed("unit-vault") 
  AiSet("unit-engineer", 10)
  AiWait("unit-vault")
  AiNeed("unit-camp")
  AiWait("unit-camp")
  AiForce(0, {"unit-assault", 10})
  AiWaitForce(0) 
  AiNeed("unit-camp")
  AiSleep(500)
  AiNeed("unit-camp")
  
  AiForce(1, {"unit-assault", 10}) 
  AiWaitForce(1) 
  AiSleep(200) 
  AiAttackWithForce(1) 

  AiForce(0, {"unit-assault", 20}) 
  AiNeed("unit-rfac") 
  AiResearch("upgrade-expl") 
  AiForce(1, {"unit-assault", 20, "unit-grenadier", 8})
  AiWaitForce(1)  
  AiAttackWithForce(1)

  AiResearch("upgrade-expl2")
  Loop()
end

co = {}
for i = 1, 16 do
    co[i]=coroutine.create(AiRun)
end

function AiLoop()
    player = AiPlayer() + 1
    coroutine.resume(co[player], player)
    return true
end

function AiRush()
    return AiLoop()
end

DefineAi("ai-rush", "*", "ai-rush", AiRush)

function AiPassive()
end

DefineAi("ai-passive", "*", "ai-passive", AiPassive)

