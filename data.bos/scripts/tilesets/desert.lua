--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--  T H E   W A R   B E G I N S
--   Stratagus - A free fantasy real time strategy game engine
--
--tile_desert.ccl-Define the desert tileset.
--
--(c) Copyright 2000-2004 by Lutz Sammer and Crestez Leonard.
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
--$Id$

DefineTileset("tileset-desert","class", "desert", "name", "Desert",
  "image", "tiles/desert.png",
  -- Slots descriptions
  "slots", { "special", {-- Can't be in pud
    "top-one-tree", 121, "mid-one-tree", 122, "bot-one-tree", 123,
    "removed-tree", 126,
    "growing-tree", { -1, -1 },
    "top-one-rock", 161, "mid-one-rock", 162, "bot-one-rock", 163,
    "removed-rock", 166 },
  "solid", { "unused",
    {}},
  "solid", { "light-water", "water",
    { 328, 329, 329, 330}},
  "solid", { "dark-water", "water",
    { 331, 332, 332, 333}},
  "solid", { "light-grass", "land",
    { 334, 335, 336,   0, 337, 338, 339, 340, 341, 342, 343, 344}},
  "solid", { "dark-grass", "land",
    { 345, 346, 347,   0, 348, 349, 350, 351, 352, 353, 354, 355}},
  "solid", { "light-desert", "land",
    { 356, 357, 356,   0, 358, 359, 360, 361, 362, 363, 358, 359, 358, 359, 358, 359}},
  "solid", { "dark_desert", "land",
    { 364, 365, 364,   0, 366, 367, 368, 369, 370, 371, 366, 367, 366, 367, 366, 367}},
  "solid", { "forest", "land", "forest", "unpassable",
    { 125, 127, 128}},
  "solid", { "rocks", "land", "rock", "unpassable",
    { 165, 177, 178, 179}},
  "solid", { "human-closed-wall", "land", "human", "wall", "unpassable",
    {  16,   0,  52,   0,  88}},
  "solid", { "orc-closed-wall", "land", "wall", "unpassable",
    {  34,   0,  70,   0,  88}},
  "solid", { "human-open-wall", "land", "human", "wall", "unpassable",
    {  33,   0,  69,   0, 101}},
  "solid", { "orc-open-wall", "land", "wall", "unpassable",
    {  51,   0,  87,   0, 101}},
  "solid", { "unused",
    {}},
  "solid", { "unused",
    {}},
  "solid", { "unused",
    {}},
  "mixed", { "dark-water", "light-water", "water",
    { 300, 301},
    { 302, 303},
    { 304, 305, 306},
    { 307, 308},
    { 309, 310, 311},
    { 312, 313},
    { 314, 314},
    { 315, 316},
    { 317, 318},
    { 319, 320, 321},
    { 322, 322},
    { 323, 324, 325},
    { 326, 326},
    { 327, 327},
    {},
    {}},
  "mixed", { "light-water", "light-grass", "coast",
    { 206, 207},
    { 208, 209},
    { 210, 211, 212},
    { 213, 214},
    { 215, 216, 217},
    { 218, 218},
    { 219, 220},
    { 221, 222},
    { 223, 223},
    { 224, 225, 226},
    { 227, 228},
    { 229, 230, 231},
    { 232, 233},
    { 234, 235},
    {},
    {}},
  "mixed", { "dark-grass", "light-grass", "land",
    { 180, 180},
    { 181, 182},
    { 183, 184, 185},
    { 186, 186,   0,   0,   0,   0,   0,   0, 187},
    { 188, 189, 190},
    { 191, 192},
    { 193, 193},
    { 194, 194},
    { 195, 196},
    { 197, 198, 199},
    { 200, 200},
    { 201, 202, 203},
    { 204, 204},
    { 205, 205},
    {},
    {}},
  "mixed", { "rocks", "light-grass", "land", "rock", "unpassable",
    { 150, 173},
    { 142, 167},
    { 164, 176},
    { 147, 171},
    { 149, 172,   0,   0,   0,   0,   0,   0,   0,   0,   0, 187},
    { 154, 175},
    { 151},
    { 144, 169},
    { 153, 174},
    { 143, 168},
    { 152},
    { 146, 170},
    { 148},
    { 145},
    {},
    {}},
  "mixed", { "light-grass", "light-desert", "land",
    { 270, 271},
    { 272, 273},
    { 274, 275, 276},
    { 277, 278},
    { 279, 280, 281},
    { 282, 283},
    { 284, 284},
    { 285, 286},
    { 287, 288},
    { 289, 290, 291},
    { 292, 292},
    { 293, 294, 295},
    { 296, 297},
    { 298, 299},
    {},
    {}},
  "mixed", { "dark_desert", "light-desert", "land",
    { 238, 239},
    { 240, 241},
    { 242, 243, 244},
    { 245, 246},
    { 247, 248, 249},
    { 250, 251},
    { 252, 253},
    { 254, 255},
    { 256, 257},
    { 258, 259, 260},
    { 261, 262},
    { 263, 264, 265},
    { 266, 267},
    { 268, 269},
    {},
    {}},
  "mixed", { "forest", "light-desert", "land", "forest", "unpassable",
    { 129, 110},
    { 102, 130},
    { 124, 131},
    { 107, 132},
    { 133, 109},
    { 139, 138},
    { 111, 111},
    { 104, 136},
    { 140, 141},
    { 103, 135},
    { 112, 112},
    { 106, 134},
    { 137, 137},
    { 105, 105},
    {},
    {}},
  "mixed", { "human-wall", "dark_desert", "land", "human", "wall", "unpassable",
    {  17,   0,  53,   0,  89},
    {  18,   0,  54,   0,  90},
    {  19,   0,  55,   0,  91},
    {  20,   0,  56,   0,  92},
    {  21,  22,   0,  57,  58,   0,  93,  95},
    {  23,   0,  59,   0,  94},
    {  24,   0,  60,   0,  93},
    {  25,   0,  61,   0,  96},
    {  26,   0,  62,   0,  97},
    {  27,  28,   0,  63,  64,   0,  98,  99},
    {  29,   0,  65,   0,  98},
    {  30,   0,  66,   0, 100},
    {  31,   0,  67,   0,  95},
    {  32,   0,  68,   0,  99},
    {},
    {}},
  "mixed", { "orc-wall", "dark_desert", "land", "wall", "unpassable",
    {  35,   0,  71,   0,  89},
    {  36,   0,  72,   0,  90},
    {  37,   0,  73,   0,  91},
    {  38,   0,  74,   0,  92},
    {  39,  40,   0,  75,  76,   0,  93,  95},
    {  41,   0,  77,   0,  94},
    {  42,   0,  78,   0,  93},
    {  43,   0,  79,   0,  96},
    {  44,   0,  80,   0,  97},
    {  45,  46,   0,  81,  82,   0,  98,  99},
    {  47,   0,  83,   0,  98},
    {  48,   0,  84,   0, 100},
    {  49,   0,  85,   0,  95},
    {  50,   0,  86,   0,  99}}
  },
  -- Animated tiles
  "animations", {{}},
  -- Object tiles
  "objects", {{}})
