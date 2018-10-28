Ext.onReady(function(){
	
var simple = new Ext.form.FormPanel(
{
 standardSubmit: true,frame:true,title: 'Register',width: 350,defaults: {width: 230},defaultType: 'textfield',
 items: [{fieldLabel: 'Username',name: 'username',id: 'username',allowBlank:false}, 
   {fieldLabel: 'Password',name: 'password',inputType:'password',allowBlank:false},
   {fieldLabel: 'First Name',name: 'firstname',inputType:'text',allowBlank:false},
   {fieldLabel: 'Last Name',name: 'lastname',inputType:'text',allowBlank:false},
   { fieldLabel: 'E-Mail Address',name: 'email',vtype:'email',allowBlank:false},
   {fieldLabel: 'State',name: 'state',allowBlank:false},{fieldLabel: 'City',name: 'city',allowBlank:false},
   { fieldLabel: 'Country', name: 'country',allowBlank:false},
   {inputType: 'hidden',id: 'submitbutton',name: 'myhiddenbutton',value: 'hiddenvalue'}],
   buttons: [{text: 'Submit',handler: function() {simple.getForm().getEl().dom.action = 'register';simple.getForm().getEl().dom.method = 'POST';simple.getForm().submit();}}]});
   simple.render('mydiv');});