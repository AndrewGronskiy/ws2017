$PBExportHeader$translate_content.sra
$PBExportComments$Generated Application Object
forward
global type translate_content from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type translate_content from application
string appname = "translate_content"
end type
global translate_content translate_content

type variables
Transaction sqlca_ru
end variables

on translate_content.create
appname="translate_content"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on translate_content.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open(w_convert)
end event

