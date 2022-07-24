<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function login(Request $request) {
        $validated = $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        if (Auth::attempt($validated)) {
            $token = auth()->user()->createToken('accessToken')->accessToken;
            return response()->json([
                'user' => new UserResource(auth()->user()),
                'access_token' => $token,
            ]);
        }
        return response()->json([
            'data' => 'Nepareizs E-pasts vai parole'
        ], 400);
    }

    public function logout() {
        auth()->user()->token()->revoke();
        return response()->json([
            'message' => 'Logged out',
        ]);
    }

    public function user() {
        return response()->json(new UserResource(auth()->user()));
    }
}
