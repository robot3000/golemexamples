#' name_of_module1 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList plotOutput
mod_name_of_module1_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      column(2,
             h3("sidebar"),
             shinydashboard::sidebarMenu(id="sidebar", .list = c("asf", "asdf", "asdf"))
      ),
      column(10, 
             shinydashboard::box( class=".box-header",
                                  title = "INPUTS", status = "warning", solidHeader = TRUE,
                                  h3("Infos"),
                                  shinydashboard::box(width=12, htmlOutput("asdöfkasdfj")),
                                  br(),
                                  h3("Abfragezeitraum"),
                                  shinydashboard::box(width=12, 
                                                      shinyWidgets::pickerInput("INPUT_JAHRE",choices=c(2000,2993,3393)),
                                                      br(),
                                                      h3("Raumebenen"),
                                                      h4("untertiel"),
                                                      shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_x1",choices=c(2000,2993,3393))),
                                                      shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_x2",choices=c(2000,2993,3393))),
                                                      shinydashboard::box(shinyWidgets::pickerInput("INPUT_x3",choices=c(2000,2993,3393))),
                                                      shinydashboard::box(
                                                        title = "smaller box", status = "warning", solidHeader = TRUE,
                                                        "Box content here", br(), "More box content",
                                                        sliderInput("slider", "Slider input:", 1, 100, 50),
                                                        textInput("text", "Text input:")
                                                      )
                                  )
             ) # big box
      )
    )
  )

}
    
#' name_of_module1 Server Function
#'
#' @importFrom shinipsum random_ggplot
#' @importFrom shiny renderPlot
#' @noRd 
mod_name_of_module1_server <- function(input, output, session){
  ns <- session$ns
  output$plot <- renderPlot({
    random_ggplot()
  })
}
    
## To be copied in the UI
# 
    
## To be copied in the server
# 
 
