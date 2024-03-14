import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import shixidanwei from '@/views/modules/shixidanwei/list'
    import shixigonggao from '@/views/modules/shixigonggao/list'
    import yuanxi from '@/views/modules/yuanxi/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import shixizonghechengji from '@/views/modules/shixizonghechengji/list'
    import yuanxifuzeren from '@/views/modules/yuanxifuzeren/list'
    import shixishenqing from '@/views/modules/shixishenqing/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import shixineirong from '@/views/modules/shixineirong/list'
    import shixiliucheng from '@/views/modules/shixiliucheng/list'
    import zhuanye from '@/views/modules/zhuanye/list'
    import shixianpai from '@/views/modules/shixianpai/list'
    import xueshengfankui from '@/views/modules/xueshengfankui/list'
    import chengjipingding from '@/views/modules/chengjipingding/list'
    import shixibaozhang from '@/views/modules/shixibaozhang/list'
    import danweifankui from '@/views/modules/danweifankui/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/shixidanwei',
        name: '实习单位',
        component: shixidanwei
      }
      ,{
	path: '/shixigonggao',
        name: '实习公告',
        component: shixigonggao
      }
      ,{
	path: '/yuanxi',
        name: '院系',
        component: yuanxi
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/shixizonghechengji',
        name: '实习综合成绩',
        component: shixizonghechengji
      }
      ,{
	path: '/yuanxifuzeren',
        name: '院系负责人',
        component: yuanxifuzeren
      }
      ,{
	path: '/shixishenqing',
        name: '实习申请',
        component: shixishenqing
      }
      ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
      ,{
	path: '/shixineirong',
        name: '实习内容',
        component: shixineirong
      }
      ,{
	path: '/shixiliucheng',
        name: '实习流程',
        component: shixiliucheng
      }
      ,{
	path: '/zhuanye',
        name: '专业',
        component: zhuanye
      }
      ,{
	path: '/shixianpai',
        name: '实习安排',
        component: shixianpai
      }
      ,{
	path: '/xueshengfankui',
        name: '学生反馈',
        component: xueshengfankui
      }
      ,{
	path: '/chengjipingding',
        name: '成绩评定',
        component: chengjipingding
      }
      ,{
	path: '/shixibaozhang',
        name: '实习保障',
        component: shixibaozhang
      }
      ,{
	path: '/danweifankui',
        name: '单位反馈',
        component: danweifankui
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
