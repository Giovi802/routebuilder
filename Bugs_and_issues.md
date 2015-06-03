# Bugs and issues #

The **bugs** of the last **RouteBuilder 1.4.2** release by Uwe Post were caused by treating every route elements as free objects (structure.freeobj(id)) instead of appropriate ones (forms, roofs, walls, dikes etc). This was caused to constant size of all the objects and inability of them to transform, and whole route sloppiness, while manually coded routes were looking neat and beautiful.

Since walls and dikes (TSO in RouteBuilder) have left and right variations, this was also an issue of the RouteBuilder. Since RouteBuilder can differ only "(object name)_l.b3d" or "(object name)_r.b3d" files, this causes problems in using non-standardly named objects or CSV objects as walls and dikes (TSO).

