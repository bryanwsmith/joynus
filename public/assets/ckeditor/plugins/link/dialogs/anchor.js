CKEDITOR.dialog.add("anchor",function(e){function t(e,t){return e.createFakeElement(e.document.createElement("a",{attributes:t}),"cke_anchor","anchor")}return{title:e.lang.link.anchor.title,minWidth:300,minHeight:60,onOk:function(){var n=CKEDITOR.tools.trim(this.getValueOf("info","txtName")),a={id:n,name:n,"data-cke-saved-name":n};this._.selectedElement?this._.selectedElement.data("cke-realelement")?(n=t(e,a),n.replace(this._.selectedElement),CKEDITOR.env.ie&&e.getSelection().selectElement(n)):this._.selectedElement.setAttributes(a):(n=(n=e.getSelection())&&n.getRanges()[0],n.collapsed?(a=t(e,a),n.insertNode(a)):(CKEDITOR.env.ie&&9>CKEDITOR.env.version&&(a["class"]="cke_anchor"),a=new CKEDITOR.style({element:"a",attributes:a}),a.type=CKEDITOR.STYLE_INLINE,a.applyToRange(n)))},onHide:function(){delete this._.selectedElement},onShow:function(){var t,n=e.getSelection();t=n.getRanges()[0];var a=n.getSelectedElement();t.shrink(CKEDITOR.SHRINK_ELEMENT),t=(a=t.getEnclosedNode())&&a.type===CKEDITOR.NODE_ELEMENT&&("anchor"===a.data("cke-real-element-type")||a.is("a"))?a:void 0;var l=(a=t&&t.data("cke-realelement"))?CKEDITOR.plugins.link.tryRestoreFakeAnchor(e,t):CKEDITOR.plugins.link.getSelectedLink(e);if(l){this._.selectedElement=l;var i=l.data("cke-saved-name");this.setValueOf("info","txtName",i||""),!a&&n.selectElement(l),t&&(this._.selectedElement=t)}this.getContentElement("info","txtName").focus()},contents:[{id:"info",label:e.lang.link.anchor.title,accessKey:"I",elements:[{type:"text",id:"txtName",label:e.lang.link.anchor.name,required:!0,validate:function(){return this.getValue()?!0:(alert(e.lang.link.anchor.errorName),!1)}}]}]}});