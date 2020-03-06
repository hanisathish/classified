<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Advt extends Model
{
   
    protected $table = 'advt';
    protected $primaryKey = 'id';
	
	
    protected $fillable = [
        'id', 'advt_name', 'advt_desc', 'advt_image', 'advt_url', 'published', 'createdBy', 
         'created_at', 'updatedBy', 'updated_at', 'deletedBy', 'deleted_at'
    ];

    public static function boot() { 

        parent::boot(); 

        parent::observe(new \App\Observers\ItemObserver); 

    }
}
