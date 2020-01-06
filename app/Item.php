<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
   

    protected $fillable = [
         'category_id', 'id', 'title', 'alias', 'description', 'country_id', 'region_id', 
         'ispricable', 'price', 'address1', 'address2', 'address3', 'zipcode', 'phone', 'tags', 
         'views', 'published', 'user_id', 'lat', 'lng', 'image', 's3key', 'created_at', 'updated_at'
    ];

    public static function boot() { 

        parent::boot(); 

        parent::observe(new \App\Observers\ItemObserver); 

    }


    public function category(){
    	
    	return $this->belongsTo('App\Category');

    }

    public function country(){
    	
    	return $this->belongsTo('App\Country');

    }

     public function user(){
        
        return $this->belongsTo('App\User');

    }

}
