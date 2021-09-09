<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Profile;
use Illuminate\Support\Facades\Hash;
class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        $id = Auth::id();
        if ($user->profile == null) {
           $profile = Profile::create([
            'province' => 'Kirkuk',
            'user_id'	 => $id,
            'gender' => 'Male',
            'bio'	 => 'Hello world',
            'facebook' => 'https://www.facebook.com',
           ]);
        }
        return view('users.profile')->with('user',$user);
    }

   


    public function update(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'province'	 => 'required',
            'gender' => 'required',
            'bio'	 => 'required',
        ]);
        $user = Auth::user();
        $user->name = $request->name ; 
        $user->profile->facebook = $request->facebook ; 
        $user->profile->province = $request->province ; 
        $user->profile->gender = $request->gender ; 
        $user->profile->bio = $request->bio ; 
        $user->save();
        $user->profile->save();

        
        if($request->has('password')) {
            $user->password = Hash::make($request->password);
            $user->save();
        }
        return redirect()->back();

    }


    public function destroy($id)
    {
        //
    }
}
