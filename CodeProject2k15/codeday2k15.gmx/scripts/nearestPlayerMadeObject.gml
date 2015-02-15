// for enemy's to detect where to go(specificly the kamakazi enemy)
var object = argument0
var i = 0

with all{
    if(object_index = obj_player){
        playerMadeObjects[i] = distance_to_object(object)
        playerMadeObjectsLegit = self
        i++
    }
}
nearest = playerMadeObject[0]
j = 0
for(a = 1; a < i; a++){
    index = playerMadeObject[a]
    if(index < closest){
        j = a
    }
}
return player