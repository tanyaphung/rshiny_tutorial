# Rshiny tips
1. How to generate a searable table? 
- Use `DT`: 
```
# in the ui side
DTOutput("selected_table")

# in the server side
output$selected_table <- renderDT({})
```
- ![Simple vs. Searchable Tables](images/simple_searchable_tables.png)