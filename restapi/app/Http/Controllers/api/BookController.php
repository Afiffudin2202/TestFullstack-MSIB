<?php

namespace App\Http\Controllers\api;

use App\Models\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class BookController extends Controller
{
    public function index(){
        $book = Book::all();

        return response()->json([
            'msg' => 'data found',
            'data' => $book
        ], 200);
    }

    public function show($id){
        $book = Book::findOrFail($id);

        if (!$book) {
            return response()->json([
                'message' => 'data not found'
            ], 404);
        }else {
            return response()->json([
                'message' => 'data found',
                'books' => $book
            ], 200);
        }
    }

    public function store(Request $request){
        $validated = $request->validate([
            'isbn' => 'required|numeric',
            'title' => 'required',
            'subtitle' => 'required',
            'author' => 'required',
            'published' => 'required|date',
            'publisher' => 'required',
            'description' => 'required',
            'website' => 'required'
        ]);

        $request['user_id'] = Auth::user()->id;

        $book = Book::create($request->all());

        return response()->json([
            'message' => 'Book Created',
            'book' => $book
        ], 200);
    }

    public function update(Request $request, $id){
        $book = Book::find($id);

        $validated = $request->validate([
            'isbn' => 'required|numeric',
            'title' => 'required',
            'subtitle' => 'required',
            'author' => 'required',
            'published' => 'required|date',
            'publisher' => 'required',
            'description' => 'required',
            'website' => 'required'
        ]);

        $book->update($request->all());

        return response()->json([
            'message' => 'book updated',
            'book' => $book
        ], 200);

    }

    public function destroy($id){
        $book = Book::find($id);

        $book->delete();

        return response()->json([
            'message' => 'book deleted',
            'book' => $book 
        ], 200);
    }
}
