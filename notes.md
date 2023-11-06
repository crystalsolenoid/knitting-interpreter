initial idea:
- [ ] parse a knitting pattern
- [ ] create a data structure that encodes a knitting pattern
- [ ] parse pattern `(P1, k1)` into a data structure
- https://github.com/treeform/jsony/blob/master/src/jsony.nim
- https://thestrangeloop.com/2021/nim-nuggets-systems-programming-and-metaprogramming-magic.html

example of knitting patterns

- knitting patterns as compression of longer patterns

example A:

```
Section 1
Row 1 (RS): (P1, k1) 3 times, M1L, k to m, slm, M1L, p to last 6 sts, M1R, (p1, k1) 3 times.
Row 2 (WS): (K1, p1) 3 times, M1L, k to m, slm, p to last 6 sts, M1R, (k1, p1) 3 times.
Repeat last 2 rows until work measures 6″ / 15cm from CO at shawl’s center to last row (measured along half of the seed stitch border), ending with a WS row.
```

Abbreviations:

```
Abbreviations
BO: bind off
CO: cast on
cs: center stitch
k: knit
m: marker
p: purl
pm: place marker
RS: right side
slm: slip marker
WS: wrong side
M1L: (make one left) with left needle, lift strand
between sts from the front, knit through the
back loop
M1R: (make one right) with left needle, lift strand
between sts from the back, knit through the front loop
```