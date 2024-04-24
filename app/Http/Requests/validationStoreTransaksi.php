<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class validationStoreTransaksi extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        $commonRules = [
            'id' => 'required',
            'id_customer' => 'required',
            'jumlah_transaksi' => 'required',
            'tanggal_transaksi' => 'required',
        ] ;

        return $commonRules;
    }
}
