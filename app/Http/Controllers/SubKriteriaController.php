<?php

namespace App\Http\Controllers;

use App\Models\SubKriteria;
use App\Http\Requests\StoreSubKriteriaRequest;
use App\Http\Requests\UpdateSubKriteriaRequest;

class SubKriteriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSubKriteriaRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store($subKriteria, $kriteria_id)
    {
        $kri = Subkriteria::where('kriteria_id', $kriteria_id)->get();
        if($kri->count() > 0){
            Subkriteria::where('kriteria_id', $kriteria_id)->delete();
        }
        for ($i = 0; $i < count($subKriteria); $i++) {
            $sub = SubKriteria::where('nama', $subKriteria[$i])->first();
            SubKriteria::create([
                'kriteria_id' => $kriteria_id,
                'nama' => $subKriteria[$i],
            ]);
        }
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSubKriteriaRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function update($subKriteria, $kriteria_id)
    {
        $kri = Subkriteria::where('kriteria_id', $kriteria_id)->get();
        for ($i = 0; $i < count($subKriteria); $i++) {
            $sub = SubKriteria::where('nama', $subKriteria[$i])->first();
            SubKriteria::where()->update([
                'kriteria_id' => $kriteria_id,
                'nama' => $subKriteria[$i],
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SubKriteria  $subKriteria
     * @return \Illuminate\Http\Response
     */
    public function destroy(SubKriteria $subKriteria, $id)
    {
        $subKriteria->find($id)->delete();
        return redirect()->back();
    }
}
