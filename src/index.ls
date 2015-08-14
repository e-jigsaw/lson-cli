require! {
  fs
  path
  \@jigsaw/lson
  minimist
  glob
  \../package.json : p
}

module.exports = ->
  argv = minimist do
    process.argv.slice 2
    boolean: <[p m]>

  if argv.v? or argv.version?
    console.log p.version
    process.exit!

  if argv._.length is 0
    console.error '[ERROR] Need lson source'
    process.exit 1

  files = glob.sync do
    argv._.0
    realpath: true

  filepath <- files.forEach
  res = lson.parseFile filepath

  if argv.p
    if argv.m
      JSON.stringify res |> console.log
    else
      console.log res

  if argv.o?
    filename = path.basename filepath
    candidate = path.resolve process.cwd!, argv.o

    try
      flg = fs.statSync candidate .isDirectory!
    catch error
      flg = false

    outputpath = if flg
      path.resolve candidate, "./#{filename}" .replace /lson$/, \json
    else
      candidate

    fs.writeFileSync outputpath, JSON.stringify res
