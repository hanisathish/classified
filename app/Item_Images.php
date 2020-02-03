<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item_Images extends Model
{
    protected $table = 'item_images';
	
	protected $fillable = [
         'id', 'image', 'item_id', 'published', 'created_at', 'updated_at'
    ];
	
	
	/**
     * @Function name : selectFromItem_Images
     * @Purpose : Select from Item_Images data based on where array
     * @Added by : Santhosh
     * @Added Date : Feb 03, 2020
     */
    public static function selectFromItem_Images($whereArray) {
        $query = Item_Images::where($whereArray);
        return $query;
    }

    /**
     * @Function name : updateItem_Images
     * @Purpose : Update Item_Images data based on where array
     * @Added by : Santhosh
     * @Added Date : Feb 03, 2020
     */
    public static function updateItem_Images($update_details, $whereArray) {
        Item_Images::where($whereArray)->update($update_details);
    }

    /**
     * @Function name : deleteItem_Images
     * @Purpose : delete Item_Images data based on  where array
     * @Added by : Santhosh
     * @Added Date : Feb 03, 2020
     */
    public static function deleteItem_Images($whereArray) {
        Item_Images::where($whereArray)->delete();
    }


    /**
    * @Function name : crudItem_Images
    * @Purpose : crud account heads based on  array
    * @Added by : Santhosh
    * @Added Date : Feb 03, 2020
    */

    public static function crudItem_Images($whereArray=null,$whereInArray=null,$whereNotInArray=null,$whereNotNullArray=null,$whereNullArray=null,$update_details=null,$delete=null,$select=null) {
        $query = Item_Images::query();

        if($whereArray){
            $query->where($whereArray);
        }
        if($whereInArray){
            foreach($whereInArray as $key=>$value){
                $whereInFiltered = array_filter($value);
                $query->whereIn($key,$whereInFiltered);
            }
        }
        if($whereNotInArray){
            foreach($whereNotInArray as $key=>$value){
                $whereNotInFiltered = array_filter($value);
                $query->whereNotIn($key,$whereNotInFiltered);
            }
        }
        if($whereNotNullArray){
            foreach($whereNotNullArray as $value){
                $query->whereNotNull($value);
            }
        }
        if($whereNullArray){
            foreach($whereNullArray as $value){
                $query->whereNull($value);
            }
        }

        if($update_details){
            $query->update($update_details);
        }elseif($delete){
            $query->delete();
        }elseif($select){
            return $query;
        }
    }
	
	
	
}
