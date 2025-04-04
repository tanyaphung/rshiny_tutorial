library(shiny)
library(DT)

# Dummy data
dummy_data = data.frame("Student_IDs" = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                        "Age" = c(5, 4, 7, 7, 6, 5, 5, 7, 7, 4),
                        "Birth_Month" = c("December", "September", "June", "March", "June", "February", "May", "May", "July", "July"),
                        "Favorite_Fruit" = c("Banana", "Apple", "Apple", "Grapes", "Banana", "Mango", "Pear", "Grapes", "Banana", "Grapes")
                        )

# Define UI
ui <- fluidPage(
  titlePanel("Example Rshiny codes"),
    mainPanel(
      h3("This is a simple table:"),
      tableOutput("simple_table"),
      h3("This is a searchable table:"),
      DTOutput("searchable_table")
    )
)

# Define server
server <- function(input, output, session) {
  output$simple_table <- renderTable(
    dummy_data
  )
  
  output$searchable_table <- renderDT(
    dummy_data
  )
  
}

# Run the application 
shinyApp(ui = ui, server = server)