"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[507],{507:function(e,t,a){a.r(t),a.d(t,{default:function(){return c}});var i=function(){var e=this,t=e._self._c;return t("div",[t("el-card",{staticClass:"box-card"},[t("el-row",[t("el-button",{attrs:{type:"primary",icon:"el-icon-delete"},on:{click:e.multiDel}},[e._v("批量删除")]),t("b",[e._v("奖学金名：")]),t("el-input",{staticStyle:{width:"150px"},attrs:{placeholder:"请输入奖学金名"},model:{value:e.input,callback:function(t){e.input=t},expression:"input"}}),t("el-button",{attrs:{type:"primary",icon:"el-icon-search"},on:{click:e.searchFun}},[e._v("搜索")]),t("el-button",{attrs:{type:"primary",icon:"el-icon-magic-stick"},on:{click:e.reset}},[e._v("重置")])],1),[t("el-table",{staticStyle:{width:"100%"},attrs:{data:e.tableData,border:"","max-height":"500"},on:{"selection-change":e.handleSelectionChange}},[t("el-table-column",{attrs:{type:"selection",width:"55"}}),t("el-table-column",{attrs:{prop:"id",label:"ID",width:"180"}}),t("el-table-column",{attrs:{prop:"name",label:"奖学金名",width:"180"}}),t("el-table-column",{attrs:{prop:"date",label:"取得时间",width:"180"}}),t("el-table-column",{attrs:{prop:"money",label:"奖学金金额"}}),t("el-table-column",{attrs:{label:"操作",fixed:"right"},scopedSlots:e._u([{key:"default",fn:function(a){return[t("el-button",{attrs:{size:"mini",type:"danger"},on:{click:function(t){return e.handleDelete(a.$index,a.row)}}},[e._v("删除")])]}}])})],1),t("div",{staticClass:"block"},[t("el-pagination",{attrs:{"current-page":e.currentPage,"page-sizes":e.pagesizes,"page-size":e.pagesize,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}})],1)]],2)],1)},n=[],s=(a(7658),a(5701)),l={data(){return{name:"奖学金信息",tableData:[],input:"",currentPage:1,total:0,pagesize:5,pagesizes:[3,4,5,6],ids:[],jiang:{id:0,name:"狗蛋",date:"2020-1-1",money:"2000"},multipleSelection:[]}},mounted(){this.$bus.$emit("receiveParams",this.name),this.init(),this.pages(1,this.pagesize)},methods:{handleCurrentChange(e){console.log(e),this.pages(e,this.pagesize)},handleSizeChange(e){this.pagesize=e,this.pages(this.currentPage,this.pagesize)},init(){(0,s.Z)({url:"/jiangController/getJiang",method:"get"}).then((e=>{this.total=e.data.data.length}))},pages(e,t){(0,s.Z)({url:`/jiangController/getJiang/${e}/${t}`,method:"get"}).then((e=>{this.tableData=e.data.data.records}))},handleDelete(e,t){this.$confirm("此操作将永久删除该文件, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((()=>{let e=[];e.push(t.id),this.ids=e,(0,s.Z)({url:"/jiangController/deleteJiang",data:this.ids,method:"delete"}).then((e=>{this.init(),this.handleCurrentChange(this.currentPage),this.ids=[]})),this.$message({type:"success",message:"删除成功!"})})).catch((()=>{this.$message({type:"info",message:"已取消删除"})}))},getId(e){this.jiang.id=e},searchFun(){(0,s.Z)({url:`/jiangController/getJiang/1/${this.total}`,params:{jiangName:this.input},method:"get"}).then((e=>{this.input="",this.tableData=e.data.data.records}))},reset(){this.init(),this.pages(1,this.pagesize)},handleSelectionChange(e){this.multipleSelection=e,this.ids=[],this.multipleSelection.map((e=>{console.log(e.id),this.ids.push(e.id)}))},multiDel(){this.$confirm("此操作将永久删除该文件, 是否继续?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((()=>{(0,s.Z)({url:"/jiangController/deleteJiang",data:this.ids,method:"delete"}).then((e=>{this.init(),this.handleCurrentChange(this.currentPage),this.ids=[]})),this.$message({type:"success",message:"删除成功!"})})).catch((()=>{this.$message({type:"info",message:"已取消删除"})}))}}},r=l,h=a(1001),o=(0,h.Z)(r,i,n,!1,null,"1462fe26",null),c=o.exports}}]);
//# sourceMappingURL=507.65338667.js.map