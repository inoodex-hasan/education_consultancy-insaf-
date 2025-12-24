<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DemoController extends Controller
{
    function forAdminRole(Request $request){
        return response ()-> json ([
            'message' => 'This is a protected route for admin role.'
        ]);
    }

       function forEditorRole(Request $request){
        return response ()-> json ([
            'message' => 'This is a protected route for editor role.'
        ]);
    }

       function forUserRole(Request $request){
        return response ()-> json ([
            'message' => 'This is a protected route for user role.'
        ]);
    }

    public function me(Request $request){
        $user = $request->user();
        return view('me', [
            'users => $user'
        ]);
    }
}
