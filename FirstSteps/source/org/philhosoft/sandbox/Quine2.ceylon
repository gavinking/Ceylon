void quine2()
{
value q = """void quine2()
             {
             value q = &%&;
             print(q
             .replace("\{#0026}", "\"\"\"")
             .replace("\{#0025}", q.replace("\n", "\n             ")));
             }""";
print(q
.replace("\{#0026}", "\"\"\"")
.replace("\{#0025}", q.replace("\n", "\n             ")));
}
