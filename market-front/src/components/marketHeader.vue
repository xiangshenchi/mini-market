<template>
    <div style="display:flex;line-height:60px;">
        <div style="margin-top:8px;cursor: pointer">
            <i :class="icon" style="font-size:20px;" @click="collapse"></i>
        </div>
        <div style="flex:1;text-align:center;font-size:34px;">
            <h1>欢迎来到小小超市管理系统</h1>
        </div>

        <el-dropdown><span>王小虎</span>
            <i class="el-icon-user" style="margin-left: 15px"></i>
            <el-dropdown-menu slot="dropdown">
                <el-dropdown-item @click.native="toUser">个人中心</el-dropdown-item>
                <el-dropdown-item @click.native="logout">退出登录</el-dropdown-item>
            </el-dropdown-menu>
        </el-dropdown>

    </div>
</template>

<script>


export default {
    name: 'marketHeader',
    methods: {
        collapse() {
            this.$emit('doCollapse');
        },
        toUser() {
            console.log("touser")
        },
        logout() {
            console.log("logout")
        }
    },
    props: {
        icon: String
    }
}
</script>

<style></style>
