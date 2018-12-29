$PBExportHeader$w_convert.srw
forward
global type w_convert from window
end type
type sle_rtf from singlelineedit within w_convert
end type
type st_2 from statictext within w_convert
end type
type st_1 from statictext within w_convert
end type
type cb_doc from commandbutton within w_convert
end type
type sle_doc from singlelineedit within w_convert
end type
type rte_doc from richtextedit within w_convert
end type
type rte_rtf from richtextedit within w_convert
end type
end forward

global type w_convert from window
integer width = 5568
integer height = 2888
boolean titlebar = true
string title = "Convert"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_rtf sle_rtf
st_2 st_2
st_1 st_1
cb_doc cb_doc
sle_doc sle_doc
rte_doc rte_doc
rte_rtf rte_rtf
end type
global w_convert w_convert

type variables
string is_docpath, is_docname[]
end variables

on w_convert.create
this.sle_rtf=create sle_rtf
this.st_2=create st_2
this.st_1=create st_1
this.cb_doc=create cb_doc
this.sle_doc=create sle_doc
this.rte_doc=create rte_doc
this.rte_rtf=create rte_rtf
this.Control[]={this.sle_rtf,&
this.st_2,&
this.st_1,&
this.cb_doc,&
this.sle_doc,&
this.rte_doc,&
this.rte_rtf}
end on

on w_convert.destroy
destroy(this.sle_rtf)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_doc)
destroy(this.sle_doc)
destroy(this.rte_doc)
destroy(this.rte_rtf)
end on

type sle_rtf from singlelineedit within w_convert
integer x = 3209
integer width = 2286
integer height = 84
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
end type

type st_2 from statictext within w_convert
integer x = 2779
integer y = 16
integer width = 416
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Converted RTF"
boolean focusrectangle = false
end type

type st_1 from statictext within w_convert
integer x = 14
integer y = 8
integer width = 169
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "DOC"
boolean focusrectangle = false
end type

type cb_doc from commandbutton within w_convert
integer x = 2491
integer width = 247
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "File"
end type

event clicked;int li_rtn

li_rtn = GetFileOpenName("Select File",is_docpath, is_docname[], "doc","Doc Files (*.doc),*.*","C:\temp", 18)

If li_rtn < 1 Then Return 
sle_doc.text = is_docpath 
rte_doc.insertdocument(is_docpath,true,FileTypeDoc!)

is_docpath +=  '.rtf' 
rte_doc.savedocument(is_docpath,FileTypeRichText!)
rte_rtf.insertdocument(is_docpath,true,FileTypeRichText!)

sle_rtf.text =  is_docpath
end event

type sle_doc from singlelineedit within w_convert
integer x = 187
integer width = 2290
integer height = 84
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
end type

type rte_doc from richtextedit within w_convert
integer y = 104
integer width = 2734
integer height = 2644
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean init_hscrollbar = true
boolean init_vscrollbar = true
long init_inputfieldbackcolor = 134217741
boolean init_inputfieldsvisible = true
boolean init_inputfieldnamesvisible = true
boolean init_popmenu = true
end type

type rte_rtf from richtextedit within w_convert
integer x = 2775
integer y = 104
integer width = 2734
integer height = 2636
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean init_hscrollbar = true
boolean init_vscrollbar = true
long init_inputfieldbackcolor = 134217741
boolean init_inputfieldsvisible = true
boolean init_inputfieldnamesvisible = true
boolean init_popmenu = true
end type

