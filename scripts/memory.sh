#!/bin/sh

free --mebi | sed -n '2{p;q}' | awk '{printf ("%.0f%\n", ($3/$2*100))}'
