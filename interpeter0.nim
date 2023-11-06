import std / strutils

type
  KnitActionKind = enum
    purl = "p", knit = "k"
  KnitAction = object
    kind: KnitActionKind
    times: int

proc parseHook[T: KnitActionKind](s: string, i: var int, v: var T) =
  for kind in KnitActionKind:
    let j = len($kind)
    let target = s[i ..< (i + j)].toLower
    if target == $kind:
      i += j
      v = kind
      return

proc parseHook[T: KnitAction](s: string, i: var int, v: var T) =
  discard

proc fromPattern*[T](s: string, x: typedesc[T]): T =
  ## Takes json and outputs the object it represents.
  ## * Extra json fields are ignored.
  ## * Missing json fields keep their default values.
  ## * `proc newHook(foo: var ...)` Can be used to populate default values.
  var i = 0
  s.parseHook(i, result)
  #eatSpace(s, i)
  #if i != s.len:
    #error("Found non-whitespace character after JSON data.", i)


when isMainModule:
  block:
    var v = "k".fromPattern(KnitActionKind)
    echo v
  block:
    var v = "P".fromPattern(KnitActionKind)
    echo v
