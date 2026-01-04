#if scheduled but empty, self cancel
$execute if entity @a[team=d_$(dungeon)] run return 0

#Dungeon tick logic here