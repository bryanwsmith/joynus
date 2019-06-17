"function"!=typeof Object.create&&function(){var t=function(){};Object.create=function(o){if(1<arguments.length)throw Error("Second argument not supported");if(null===o)throw Error("Cannot set a null [[Prototype]]");if("object"!=typeof o)throw TypeError("Argument must be an object");return t.prototype=o,new t}}(),CKEDITOR.plugins.add("toolbarconfiguratorarea",{afterInit:function(t){t.addMode("wysiwyg",function(o){var e=CKEDITOR.dom.element.createFromHtml('<div class="cke_wysiwyg_div cke_reset" hidefocus="true"></div>');t.ui.space("contents").append(e),e=t.editable(e),e.detach=CKEDITOR.tools.override(e.detach,function(t){return function(){t.apply(this,arguments),this.remove()}}),t.setData(t.getData(1),o),t.fire("contentDom")}),t.dataProcessor.toHtml=function(t){return t},t.dataProcessor.toDataFormat=function(t){return t}}}),Object.keys||(Object.keys=function(){var t=Object.prototype.hasOwnProperty,o=!{toString:null}.propertyIsEnumerable("toString"),e="toString toLocaleString valueOf hasOwnProperty isPrototypeOf propertyIsEnumerable constructor".split(" "),n=e.length;return function(i){if("object"!=typeof i&&("function"!=typeof i||null===i))throw new TypeError("Object.keys called on non-object");var r,a=[];for(r in i)t.call(i,r)&&a.push(r);if(o)for(r=0;n>r;r++)t.call(i,e[r])&&a.push(e[r]);return a}}()),function(){function t(t,o){this.cfg=o||{},this.hidden=!1,this.editorId=t,this.fullToolbarEditor=new ToolbarConfigurator.FullToolbarEditor,this.actualConfig=this.originalConfig=this.mainContainer=null,this.isEditableVisible=this.waitForReady=!1,this.toolbarContainer=null,this.toolbarButtons=[]}ToolbarConfigurator.AbstractToolbarModifier=t,t.prototype.setConfig=function(t){this._onInit(void 0,t,!0)},t.prototype.init=function(t){var o=this;if(this.mainContainer=new CKEDITOR.dom.element("div"),null!==this.fullToolbarEditor.editorInstance)throw"Only one instance of ToolbarModifier is allowed";return this.editorInstance||this._createEditor(!1),this.editorInstance.once("loaded",function(){o.fullToolbarEditor.init(function(){o._onInit(t),"function"==typeof o.onRefresh&&o.onRefresh()},o.editorInstance.config)}),this.mainContainer},t.prototype._onInit=function(t,o){if(this.originalConfig=this.editorInstance.config,this.actualConfig=JSON.parse(o?o:JSON.stringify(this.originalConfig)),!this.actualConfig.toolbarGroups&&!this.actualConfig.toolbar){for(var e=this.actualConfig,n=this.editorInstance.toolbar,i=[],r=n.length,a=0;r>a;a++){var s=n[a];i.push("string"==typeof s?s:{name:s.name,groups:s.groups?s.groups.slice():[]})}e.toolbarGroups=i}"function"==typeof t&&t(this.mainContainer)},t.prototype._createModifier=function(){return this.mainContainer.addClass("unselectable"),this.modifyContainer&&this.modifyContainer.remove(),this.modifyContainer=new CKEDITOR.dom.element("div"),this.modifyContainer.addClass("toolbarModifier"),this.mainContainer.append(this.modifyContainer),this.mainContainer},t.prototype.getEditableArea=function(){return this.editorInstance.container.findOne("#"+this.editorInstance.id+"_contents")},t.prototype._hideEditable=function(){var t=this.getEditableArea();this.isEditableVisible=!1,this.lastEditableAreaHeight=t.getStyle("height"),t.setStyle("height","0")},t.prototype._showEditable=function(){this.isEditableVisible=!0,this.getEditableArea().setStyle("height",this.lastEditableAreaHeight||"auto")},t.prototype._toggleEditable=function(){this.isEditableVisible?this._hideEditable():this._showEditable()},t.prototype._refreshEditor=function(){function t(){o.editorInstance.destroy(),o._createEditor(!0,o.getActualConfig()),o.waitForReady=!1}var o=this,e=this.editorInstance.status;this.waitForReady||("unloaded"==e||"loaded"==e?(this.waitForReady=!0,this.editorInstance.once("instanceReady",function(){t()},this)):t())},t.prototype._createEditor=function(o,e){function n(){}var i=this;this.editorInstance=CKEDITOR.replace(this.editorId),this.editorInstance.on("configLoaded",function(){var o=i.editorInstance.config;e&&CKEDITOR.tools.extend(o,e,!0),t.extendPluginsConfig(o)}),this.editorInstance.on("uiSpace",function(t){"top"!=t.data.space&&t.stop()},null,null,-999),this.editorInstance.once("loaded",function(){var t,e=i.editorInstance.ui.instances;for(t in e)e[t]&&(e[t].click=n,e[t].onClick=n);i.isEditableVisible||i._hideEditable(),i.currentActive&&i.currentActive.name&&i._highlightGroup(i.currentActive.name),i.hidden?i.hideUI():i.showUI(),o&&"function"==typeof i.onRefresh&&i.onRefresh()})},t.prototype.getActualConfig=function(){return JSON.parse(JSON.stringify(this.actualConfig))},t.prototype._createToolbar=function(){if(this.toolbarButtons.length){this.toolbarContainer=new CKEDITOR.dom.element("div"),this.toolbarContainer.addClass("toolbar");for(var t=this.toolbarButtons.length,o=0;t>o;o+=1)this._createToolbarBtn(this.toolbarButtons[o])}},t.prototype._createToolbarBtn=function(t){var o=ToolbarConfigurator.FullToolbarEditor.createButton("string"==typeof t.text?t.text:t.text.inactive,t.cssClass);return this.toolbarContainer.append(o),o.data("group",t.group),o.addClass(t.position),o.on("click",function(){t.clickCallback.call(this,o,t)},this),o},t.prototype._fixGroups=function(t){t=t.toolbarGroups||[];for(var o=t.length,e=0;o>e;e+=1){var n=t[e];"/"==n?(n=t[e]={},n.type="separator",n.name="separator"+CKEDITOR.tools.getNextNumber()):(n.groups=n.groups||[],-1==CKEDITOR.tools.indexOf(n.groups,n.name)&&(this.editorInstance.ui.addToolbarGroup(n.name,n.groups[n.groups.length-1],n.name),n.groups.push(n.name)),this._fixSubgroups(n))}},t.prototype._fixSubgroups=function(t){t=t.groups;for(var o=t.length,e=0;o>e;e+=1){var n=t[e];t[e]={name:n,totalBtns:ToolbarConfigurator.ToolbarModifier.getTotalSubGroupButtonsNumber(n,this.fullToolbarEditor)}}},t.stringifyJSONintoOneLine=function(t,o){o=o||{};var e=JSON.stringify(t,null,""),e=e.replace(/\n/g,"");return o.addSpaces&&(e=e.replace(/(\{|:|,|\[|\])/g,function(t){return t+" "}),e=e.replace(/(\])/g,function(t){return" "+t})),o.noQuotesOnKey&&(e=e.replace(/"(\w*)":/g,function(t,o){return o+":"})),o.singleQuotes&&(e=e.replace(/\"/g,"'")),e},t.prototype.hideUI=function(){this.hidden=!0,this.mainContainer.hide(),this.editorInstance.container&&this.editorInstance.container.hide()},t.prototype.showUI=function(){this.hidden=!1,this.mainContainer.show(),this.editorInstance.container&&this.editorInstance.container.show()},t.extendPluginsConfig=function(t){var o=t.extraPlugins;t.extraPlugins=(o?o+",":"")+"toolbarconfiguratorarea"}}();