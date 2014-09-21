void quine1()
{
value q = """void quine1()@{@value q = &%&;@print(q@.replace("\{#0040}", "\n")@.replace("\{#0026}", "\"\"\"")@.replace("\{#0025}", q));@}""";
print(q
.replace("\{#0040}", "\n")
.replace("\{#0026}", "\"\"\"")
.replace("\{#0025}", q));
}
