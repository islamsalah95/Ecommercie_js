<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Traits\ApiTraits;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\StoreOrderRequest;
use App\Http\Requests\UpdateOrderRequest;

class OrderController extends Controller
{
   public function displayOrders() {
    $user=Auth::guard('sanctum')->user();
    $displayOrders=Order::where("user_id",$user->id)->get()->Paginate(8);
      return ApiTraits::data(compact('displayOrders'),'displayOrders success');
    
     }
}
