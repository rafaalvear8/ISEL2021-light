int boton;
int luz;
int deadline;

activate proctype fsm()
{

    int state = 0;
    printf("0\n");
    do
    :: (state ==0) ->
        if 
        :: (boton) ->luz = 1; state = 1; boton = 0; printf("0 ->1\n");
        fi
    :: (state ==1) ->
        if 
        :: (boton) -> boton = 0
        :: (deadline) -> state = 0; deadline = 1;  printf("0 ->1\n");
        fi
    od
}