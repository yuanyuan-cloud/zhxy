"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[13],{13:function(e,t,a){a.r(t),a.d(t,{default:function(){return h}});var i=function(){var e=this,t=e._self._c;return t("div",[t("el-card",{staticClass:"box-card"},[t("el-row",[t("b",[e._v("学科：")]),t("el-input",{staticStyle:{width:"150px"},attrs:{placeholder:"请输入学科"},model:{value:e.input,callback:function(t){e.input=t},expression:"input"}}),t("el-button",{attrs:{type:"primary",icon:"el-icon-search"},on:{click:e.searchFun}},[e._v("搜索")]),t("el-button",{attrs:{type:"primary",icon:"el-icon-magic-stick"},on:{click:e.reset}},[e._v("重置")])],1),[t("el-table",{staticStyle:{width:"100%"},attrs:{data:e.tableData,border:"","max-height":"500"},on:{"selection-change":e.handleSelectionChange}},[t("el-table-column",{attrs:{type:"selection",width:"55"}}),t("el-table-column",{attrs:{prop:"id",label:"ID"}}),t("el-table-column",{attrs:{prop:"name",label:"学科"}}),t("el-table-column",{attrs:{prop:"score",label:"分数"}})],1),t("div",{staticClass:"block"},[t("el-pagination",{attrs:{"current-page":e.currentPage,"page-sizes":e.pagesizes,"page-size":e.pagesize,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}})],1)]],2)],1)},s=[],l=(a(7658),a(5701)),n={data(){return{name:"我的成绩",tableData:[],input:"",currentPage:1,total:0,pagesize:5,pagesizes:[3,4,5,6],ids:[],score:{id:0,name:"心理学",score:"90"},multipleSelection:[]}},mounted(){this.$bus.$emit("receiveParams",this.name),this.init(),this.pages(1,this.pagesize)},methods:{handleCurrentChange(e){console.log(e),this.pages(e,this.pagesize)},handleSizeChange(e){this.pagesize=e,this.pages(this.currentPage,this.pagesize)},init(){(0,l.Z)({url:"/scoreController/getScore",method:"get"}).then((e=>{this.total=e.data.data.length}))},pages(e,t){(0,l.Z)({url:`/scoreController/getScore/${e}/${t}`,method:"get"}).then((e=>{this.tableData=e.data.data.records}))},searchFun(){(0,l.Z)({url:`/scoreController/getScore/1/${this.total}`,params:{scoreName:this.input},method:"get"}).then((e=>{this.input="",this.tableData=e.data.data.records}))},reset(){this.init(),this.pages(1,this.pagesize)},handleSelectionChange(e){this.multipleSelection=e,this.ids=[],this.multipleSelection.map((e=>{console.log(e.id),this.ids.push(e.id)}))}}},r=n,o=a(1001),c=(0,o.Z)(r,i,s,!1,null,"0faf55aa",null),h=c.exports}}]);
//# sourceMappingURL=13.c83f234c.js.map