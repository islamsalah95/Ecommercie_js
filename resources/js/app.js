require('./bootstrap')

import { createApp } from 'vue'
import NavComponent from './components/NavComponent'
import FooterComponent from './components/FooterComponent'
import NotfoundComponent from './components/NotfoundComponent'


import LoginComponent from './components/auth/LoginComponent'
import RegisterComponent from './components/auth/RegisterComponent'


// import AllProductsComponent from './components/web/AllProductsComponent'
// import SkirtsCategoryComponent from './components/web/SkirtsCategoryComponent'
// import DressCategoryComponent from './components/web/DressCategoryComponent'
// import CasualCategoryComponent from './components/web/CasualCategoryComponent'
// import ProductDetailsComponent from './components/web/ProductDetailsComponent'
// import showCartItemsComponent from './components/web/showCartItemsComponent'
// import paymentComponent from './components/web/paymentComponent'
// import displayOrdersComponent from './components/web/displayOrdersComponent'


import { createWebHistory, createRouter } from 'vue-router'
const router = createRouter({
  history: createWebHistory(),
  routes: [
   // { path: '/'   ,redirect:'/login'},

    { path: '/login', component: LoginComponent },
    { path: '/register', component: RegisterComponent },

    // { path: '/AllProducts', component: AllProductsComponent },
    // { path: '/SkirtsCategory', component: SkirtsCategoryComponent },
    // { path: '/DressCategory', component: DressCategoryComponent },
    // { path: '/CasualCategory', component: CasualCategoryComponent },

    // { path: '/ProductDetails/:id', component: ProductDetailsComponent },


    // { path: '/showCartItems', component: showCartItemsComponent },
    // { path: '/payment', component: paymentComponent },
    // { path: '/displayOrders', component: displayOrdersComponent },


    { path: '/:notfound(.*)', component: NotfoundComponent },


  ]
})

const app = createApp({}).use(router)
app.use(store)
app.component('NavComponent', NavComponent)
app.component('FooterComponent', FooterComponent)

window.axios.defaults.headers.common['Authorization'] =localStorage.getItem('token');


app.mount('#app')
