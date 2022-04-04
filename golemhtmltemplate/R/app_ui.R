#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  
  # tags$style(
  #   ".box-header {
  #     background-color: #f48107
  #   }")
    
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    #List the first level UI elements here
    #shinythemes::themeSelector(),
    navbarPage(
      theme = shinytheme("united"),
      "DOSTAT_intern",
      tabPanel("APP",
               
               sidebarPanel(width = 1,
                 
                 tags$img(height=80, width=80, src="www/golem-hex_250.png")
               ),
               mainPanel(
                     fluidRow(
                        
                              h3("Infos"),
                              shinydashboard::box(width=12, htmlOutput("asdöfkasdfj")),
                              br(),
                              h3("Abfragezeitraum"),
                              shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_JAHRE",choices=c(2000,2993,3393)),
                                                  br(),
                                                  h3("Raumebenen"),
                                                  h4("untertiel"),
                                                  shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_x1",choices=c(2000,2993,3393))),
                                                  shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_x2",choices=c(2000,2993,3393))),
                                                  shinydashboard::box(shinyWidgets::pickerInput("INPUT_x3",choices=c(2000,2993,3393))),
                                                  shinydashboard::box(
                                                    title = "Inputs", status = "warning", solidHeader = TRUE,
                                                    "Box content here", br(), "More box content",
                                                    sliderInput("slider", "Slider input:", 1, 100, 50),
                                                    textInput("text", "Text input:")
                                                  )
                              )
                       
                     )
                   ) # END FLUID PAGE
                   
                 ),
      
                  tabPanel("Benutzungshinweise", "This panel is intentionally left blank"),
                  tabPanel("Kontakt", "This panel is intentionally left blank")
               )
      )
    

               
    # htmlTemplate(
    #   #app_sys("app/www/template.html"),
    #   app_sys("app/www/templatebootstrap.html"),
    #   #app_sys("app/www/imgrow.html"),
    #   
    # 
    #      first = mod_name_of_module1_ui("name_of_module1_ui_1"),
    #      second = mod_name_of_module2_ui("name_of_module2_ui_1"),
    #      third = mod_name_of_module3_ui("name_of_module3_ui_1"),
    #      fourth = mod_name_of_module4_ui("name_of_module4_ui_1"),
    #      fifth = mod_name_of_module5_ui("name_of_module5_ui_1"),
    #      sixth = mod_name_of_module5_ui("name_of_module5_ui_2")
    #   )
  
  
 
    #   
    # fluidPage(
    #   fluidRow(
    #     column(2,
    #            "sidebar"
    #     ),
    #     column(10, 
    #            h3("Infos"),
    #            shinydashboard::box(width=12, htmlOutput("asdöfkasdfj")),
    #            br(),
    #            h3("Abfragezeitraum"),
    #            shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_JAHRE",choices=c(2000,2993,3393)),
    #                                br(),
    #                                h3("Raumebenen"),
    #                                h4("untertiel"),
    #                                shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_x1",choices=c(2000,2993,3393))),
    #                                shinydashboard::box(width=12, shinyWidgets::pickerInput("INPUT_x2",choices=c(2000,2993,3393))),
    #                                shinydashboard::box(shinyWidgets::pickerInput("INPUT_x3",choices=c(2000,2993,3393))),
    #                                shinydashboard::box(
    #                                  title = "Inputs", status = "warning", solidHeader = TRUE,
    #                                  "Box content here", br(), "More box content",
    #                                  sliderInput("slider", "Slider input:", 1, 100, 50),
    #                                  textInput("text", "Text input:")
    #                                )
    #            )
    #     )
    #   )
    # ) # END FLUID PAGE  
    
  # fluidPage(
  #   mainPanel(
  #     
  #     fluidRow(
  #       column(10,h3("Infos"),
  #              shinydashboard::box(width=12, htmlOutput("asdöfkasdfj"))
  #              )
  #     ),
  #     
  #     fluidRow(
  #       column(10, h3("Abfragezeitraum"),
  #              shinydashboard::box(widht=12, shinyWidgets::pickerInput("INPUT_JAHRE",choices=c(2000,2993,3393))
  #             )
  #           )
  #     ),
  #     
  #     fluidRow(
  #       column(10, 
  #              h3("Raumebenen"),
  #              h4("untertiel"),
  #              shinydashboard::box(widht=12, shinyWidgets::pickerInput("INPUT_x1",choices=c(2000,2993,3393))),
  #              shinydashboard::box(widht=12, shinyWidgets::pickerInput("INPUT_x2",choices=c(2000,2993,3393)))
  #              )
  #       )
  #     )
  #     
  #   ) # end fluidpage
  
   # end taglist
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'golemhtmltemplate'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

