<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Character;

class CharacterController extends Controller {

    public function getAll() {
        $characters = Character::select('name','image_url','role')
        ->get();
        return response()->json($characters);
    }

    public function getOne($id) {
        $characters = Character::where('characters.id','=',$id)
        ->get();
        return response()->json($characters);
    }
}


