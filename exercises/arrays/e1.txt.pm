Unlike ◊c{sizeof(a)/sizeof(a[0])}, ◊c{sizeof(a)/sizeof(t)} use the element type of the array.

If element type of the array is changed, ◊c{sizeof(a)/sizeof(t)} should be updated to change element type.

But the ◊c{a[0]} doesn't need to be changed, because it's value will be converted automatically to updated type.

Thus, ◊c{sizeof(a)/sizeof(a[0])} would be better to use than ◊c{sizeof(a)/sizeof(t)} speaking of maintenance.
