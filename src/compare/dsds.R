options(box.path = '/home/mt2/github/susie/seed/dev/pt-br-fn/src')
# box::use(br = translate/replace_from)
# box::use(br = translate/`__init__`)
# box::use(translate/`__init__`[...])
box::use(
  # translate/init[...]
  # translate/init[as.from_to]
  # br = translate/init
  # br = translate/init[...]
  br = translate/replace_from[as.from_to, is.from_to]
)

# box::use(translate)
# translate$as.from_to()
# box::use(translate/replace_from)
replace.from_to()
as.from_to()
