with(obj_player)
{
    var dx = x - other.x;
    if (dx > 150)
        other.image_index = 4;
    else if (dx > 100)
        other.image_index = 3;
    else if (dx > -100)
        other.image_index = 2;
    else if (dx > -150)
        other.image_index = 1;
    else
        other.image_index = 0;
}
