var object = argument0;
i = 0
with all {
    if(self.object_index = obj_enemy_grunt){
        nearest_enemy [i] = distance_to_object(object)
        nearest_enemy_object[i] = self
        i++
        }
}
nearest = nearest_enemy[0]
j = 0
for(a = 1; a <= i; a++){
    index = nearest_enemy[a]
    if(index < nearest){ 
        nearest = index
        j = a
    } 
}
return nearest_enemy_object[j]
