"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[571],{7319:function(e,t,a){a.r(t),a.d(t,{default:function(){return c}});var r=function(){var e=this,t=e._self._c;return t("div",[t("el-card",{staticClass:"box-card"},[t("el-row",[t("b",[e._v("姓名：")]),t("el-input",{staticStyle:{width:"150px"},attrs:{placeholder:"请输入姓名"},model:{value:e.queryParam.name,callback:function(t){e.$set(e.queryParam,"name",t)},expression:"queryParam.name"}}),t("b",[e._v("类型：")]),t("el-select",{staticStyle:{width:"150px"},attrs:{placeholder:"请选择类型"},model:{value:e.queryParam.type,callback:function(t){e.$set(e.queryParam,"type",t)},expression:"queryParam.type"}},e._l(Object.keys(e.typeOptions),(function(a){return t("el-option",{key:a,attrs:{label:e.typeOptions[a],value:a}})})),1),t("el-button",{attrs:{type:"primary",icon:"el-icon-search"},on:{click:function(t){e.pageNo=1,e.pages()}}},[e._v("搜索")]),t("el-button",{attrs:{type:"primary",icon:"el-icon-magic-stick"},on:{click:e.reset}},[e._v("重置")])],1),[t("el-table",{staticStyle:{width:"100%"},attrs:{data:e.tableData,border:"","max-height":"500"}},[t("el-table-column",{attrs:{type:"index",width:"55"}}),t("el-table-column",{attrs:{prop:"name",label:"姓名"}}),t("el-table-column",{attrs:{prop:"type",label:"类型",formatter:t=>e.typeOptions[t.type]}}),t("el-table-column",{attrs:{prop:"telephone",label:"电话"}})],1),t("div",{staticClass:"block"},[t("el-pagination",{attrs:{"current-page":e.currentPage,"page-sizes":e.pagesizes,"page-size":e.pagesize,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}})],1)]],2)],1)},s=[],i=a(5701),l={data(){return{name:"通讯录",tableData:[],queryParam:{name:void 0,type:void 0},typeOptions:{TEACHER:"教师",ADMIN:"管理员"},currentPage:1,total:0,pagesize:5,pagesizes:[3,4,5,6]}},mounted(){this.$bus.$emit("receiveParams",this.name),this.pages(1,this.pagesize)},methods:{handleCurrentChange(e){this.currentPage=e,this.pages(e,this.pagesize)},handleSizeChange(e){this.pagesize=e,this.pages(this.currentPage,this.pagesize)},pages(){(0,i.Z)({url:"/teacherController/mail/list",params:{pageNo:this.currentPage,pageSize:this.pagesize,...this.queryParam},method:"get"}).then((e=>{this.queryParam.name="",this.total=e.data.data.total,this.tableData=e.data.data.records}))},reset(){this.queryParam={},this.pageNo=1,this.pages()}}},n=l,p=a(1001),o=(0,p.Z)(n,r,s,!1,null,"0ba67a8a",null),c=o.exports}}]);
//# sourceMappingURL=571.67962763.js.map