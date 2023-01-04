#include <stdio.h>
#include <string.h>
#include "list.h"


struct mystruct {
    int age;
    char name[10];
    struct list_head myhandle;
};


int main()
{
    /* declare a list of elements */
    LIST_HEAD(mylisthead);

    /* init first element */
    struct mystruct first = { .age = 25, .name = "Marc", .myhandle = LIST_HEAD_INIT(first.myhandle) };
    /* init second element */
    struct mystruct second ;
    second.age = 21 ;
    strcpy(second.name,"Julie");
    INIT_LIST_HEAD(&second.myhandle) ;

    /* add first element to the list (head insert) */
    list_add(&first.myhandle, &mylisthead);
    /* add first element to the list (head insert) */
    list_add(&second.myhandle, &mylisthead);

    /* printing addresses */
    struct list_head* position ; list_for_each (position, &mylisthead)
    { 
        printf("surfing the linked list: element at %p, next->%p, prev->%p\n",
               position, 
               position->next, 
               position->prev);
    }

    /* printing data */
    struct mystruct  *p = NULL ; 
    list_for_each_entry (p, &mylisthead, myhandle) 
    { 
        printf("age = %d name = %s\n" , p->age, p->name); 
    }

    return 0;
}
