"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[166],{4166:function(e,t,a){a.r(t),a.d(t,{default:function(){return p}});var s=function(){var e=this,t=e._self._c;return t("div",[t("el-card",{staticClass:"box-card"},[t("el-row",[t("b",[e._v("星期：")]),t("el-input",{staticStyle:{width:"150px"},attrs:{placeholder:"请输入星期几"},model:{value:e.input,callback:function(t){e.input=t},expression:"input"}}),t("el-button",{attrs:{type:"primary",icon:"el-icon-search"},on:{click:e.searchFun}},[e._v("搜索")]),t("el-button",{attrs:{type:"primary",icon:"el-icon-magic-stick"},on:{click:e.reset}},[e._v("重置")])],1),[t("el-table",{staticStyle:{width:"100%"},attrs:{data:e.tableData,border:"","max-height":"500"}},[t("el-table-column",{attrs:{prop:"id",label:"ID"}}),t("el-table-column",{attrs:{prop:"cname",label:"课程"}}),t("el-table-column",{attrs:{prop:"cno",label:"课程编号"}}),t("el-table-column",{attrs:{prop:"className",label:"班级"}}),t("el-table-column",{attrs:{prop:"cdate",label:"星期"}})],1),t("div",{staticClass:"block"},[t("el-pagination",{attrs:{"current-page":e.currentPage,"page-sizes":e.pagesizes,"page-size":e.pagesize,layout:"total, sizes, prev, pager, next, jumper",total:e.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}})],1)]],2)],1)},l=[],r=a(5701),n={data(){return{name:"课程表",tableData:[],input:"",currentPage:1,total:0,pagesize:5,pagesizes:[3,4,5,6],hashmap:{1:"星期一",2:"星期二",3:"星期三",4:"星期四",5:"星期五",6:"星期六",7:"星期天"}}},mounted(){this.$bus.$emit("receiveParams",this.name),this.init(),this.pages(1,this.pagesize)},methods:{init(){(0,r.Z)({url:"/courseController/getCourse",method:"get"}).then((e=>{this.total=e.data.data.length}))},pages(e,t){(0,r.Z)({url:`/courseController/getCourse/${e}/${t}`,method:"get"}).then((e=>{let t=e.data.data.records,a=new Map([[1,"星期一"],[2,"星期二"],[3,"星期三"],[4,"星期四"],[5,"星期五"],[6,"星期六"],[7,"星期天"]]);t=t.map((e=>(e.cdate=a.get(e.cdate),e))),this.tableData=t}))},handleCurrentChange(e){console.log(e),this.pages(e,this.pagesize)},handleSizeChange(e){this.pagesize=e,this.pages(this.currentPage,this.pagesize)},searchFun(){let e=new Map([["一",1],["二",2],["三",3],["四",4],["五",5],["六",6],["天",7]]),t=e.get(this.input);(0,r.Z)({url:`/courseController/getCourse/1/${this.total}`,params:{cDate:t},method:"get"}).then((e=>{let t=e.data.data.records,a=new Map([[1,"星期一"],[2,"星期二"],[3,"星期三"],[4,"星期四"],[5,"星期五"],[6,"星期六"],[7,"星期天"]]);t=t.map((e=>(e.cdate=a.get(e.cdate),e))),this.tableData=t}))},reset(){this.init(),this.pages(1,this.pagesize)}}},i=n,o=a(1001),c=(0,o.Z)(i,s,l,!1,null,"b250c7c0",null),p=c.exports}}]);
//# sourceMappingURL=166.782274c9.js.map