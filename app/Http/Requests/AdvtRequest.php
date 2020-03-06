<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;
use Validator;

class AdvtRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'advt_name' => 'required',
            'advt_desc' => 'required',
        ];
    }

    public function messages(){

        return [
            'advt_name.required' => 'The :attribute field is required.',
            'advt_desc.requred' => 'The :attribute field is required.',        
        ];
    }

}
