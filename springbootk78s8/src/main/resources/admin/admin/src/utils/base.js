const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootk78s8/",
            name: "springbootk78s8",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "高校专业实习管理系统"
        } 
    }
}
export default base
