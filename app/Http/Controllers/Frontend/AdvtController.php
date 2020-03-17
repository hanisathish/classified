<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\AdvtRequest;

use App\Http\Controllers\Controller;
use App\Advt;
use DB;
use File;
use PDO;



/**
 * Class AdvtController
 * @package App\Http\Controllers\Backend
 */
class AdvtController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function index()
    {

        $allAdvt = DB::table('advt')->inRandomOrder()->get();  
        return view('frontend.item', compact('allAdvt'));
		
		
    }

   
}