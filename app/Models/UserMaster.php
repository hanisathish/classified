<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use DB;
use Auth;
class UserMaster extends Model  {


    /**
     * The database table used by the model.
     *
     * @var string
     */
    use SoftDeletes;
    protected $table = 'users';
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
         'id', 'name', 'email', 'password', 'phone', 'avatar', 'role', 'remember_token', 'created_at', 'createdBy', 'updated_at', 'updatedBy', 'deletedBy', 'deleted_at'
        ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    /**
     * @Function name : selectFromUserMaster
     * @Purpose : Select from UserMaster data based on where array
     * @Added by : Santhosh
     * @Added Date : Jan 29, 2020
     */
    public static function selectFromUserMaster($whereArray) {
        $query = UserMaster::where($whereArray);
        return $query;
    }

    /**
     * @Function name : updateUserMaster
     * @Purpose : Update UserMaster data based on where array
     * @Added by : Santhosh
     * @Added Date : Jan 29, 2020
     */
    public static function updateUserMaster($update_details, $whereArray) {
        UserMaster::where($whereArray)->update($update_details);
    }

    /**
     * @Function name : deleteUserMaster
     * @Purpose : delete UserMaster data based on  where array
     * @Added by : Santhosh
     * @Added Date : Jan 29, 2020
     */
    public static function deleteUserMaster($whereArray) {
        UserMaster::where($whereArray)->delete();
    }


    /**
    * @Function name : crudUserMaster
    * @Purpose : crud account heads based on  array
     * @Added by : Santhosh
     * @Added Date : Jan 29, 2020
     */

    public static function crudUserMaster($whereArray=null,$whereInArray=null,$whereNotInArray=null,$whereNotNullArray=null,$whereNullArray=null,$update_details=null,$delete=null,$select=null) {
        $query = UserMaster::query();

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

    /**
    * @Function name : crudUserMasterDetail
    * @Purpose : crud account heads based on  array
    * @Added by : Santhosh
    * @Added Date : Jan 29, 2020
    */

    public static function crudUserMasterDetail($whereArray=null,$whereInArray=null,$whereNotInArray=null,$whereNotNullArray=null,$whereNullArray=null) {
        $query = UserMaster::query();
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

        return $query;
    }

}
