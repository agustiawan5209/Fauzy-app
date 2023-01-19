<x-app-layout>
    <x-slot name="page">{{ $edit ? 'Edit Alternatif ' . $alternatif->name : 'Tambah Alternatif' }}</x-slot>
    <div class="row">
        <div class="col-lg-8 col-xlg-9 col-md-12">
            <div class="card">
                <div class="card-body">

                    <form
                        action="{{ $edit ? route('Alternatif.update', ['id' => $alternatif->id]) : route('Alternatif.store') }}"
                        method="POST" class="form-horizontal form-material" enctype="multipart/form-data">
                        <div class="flex flex-col">
                            <x-validation-errors />
                        </div>
                        @csrf
                        @if ($edit == true)
                            @method('PUT')
                        @else
                            @method('POST')
                        @endif
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class=" border-bottom border-black box-title text-black col-sm-12">Kode Alternatif</label>
                            </div>
                            <div class="col-md-12 border-bottom">
                                <input type="text" placeholder="....." name="kode" readonly
                                    class="form-control border-0"
                                    value="{{ $edit == false ? $kode : $alternatif->kode }}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class=" border-bottom border-black box-title text-black col-sm-12">Nama Alternatif</label>
                            </div>
                            <div class="col-md-12 border-bottom">
                                <input type="text" placeholder="....." name="nama" class="form-control border-0"
                                    value="{{ $edit == false ? '' : $alternatif->nama }}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class=" border-bottom border-black box-title text-black col-sm-12">Gambar</label>
                            </div>
                            <label class=" border-bottom border-black box-title-control border-0 ">
                                <input type="file" placeholder="....." name="gambar"
                                    class="file-input  file-input-bordered w-full"
                                    value="{{ $edit == false ? '' : $alternatif->lokasi->gambar }}" />
                            </label>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class=" border-bottom border-black box-title text-black col-sm-12">Lokasi</label>
                            </div>
                            <div class="col-md-12 border-bottom">
                                <input type="text" placeholder="....." name="lokasi" class="form-control border-0"
                                    value="{{ $edit == false ? '' : $alternatif->lokasi->lokasi }}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class=" border-bottom border-black box-title text-black col-sm-12">Pemilik</label>
                            </div>
                            <div class="col-md-12 border-bottom">
                                <input type="text" placeholder="....." name="pemilik"
                                    class="form-control border-0"value="{{ $edit == false ? '' : $alternatif->lokasi->pemilik }}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class=" border-bottom border-black box-title text-black col-sm-12">Deskripsi</label>
                            </div>
                            <div class="col-md-12 border-bottom">
                                <textarea class="form-control border-0" name="deskripsi" placeholder="Deskripsi Area/Lokasi">{{ $edit == false ? '' : $alternatif->lokasi->deskripsi }}</textarea>
                            </div>
                        </div>
                        {{-- Detail Sub Alternatif --}}
                        <div class="divider w-1/2">Detail Alternatif</div>
                        @foreach ($kriteria as $item)
                            <div class="form-group">
                                <label class=" border-bottom border-black box-title-sm-12">{{ $item->name }}</label>
                                <div class="col-sm-12">
                                    <select name="kodeSub[]" id="" class="form-select form-control-line shadow-none border-none">
                                        @if ($edit)
                                            @foreach ($subalternatif as $suba)
                                                @if ($item->kode == $suba->kriteria_kode)
                                                    <option value="{{ $suba->nama }}" selected>
                                                        {{ $suba->sub_kriteria }}
                                                    </option>
                                                @endif
                                            @endforeach
                                        @endif
                                        <option value="">-----</option>
                                        @foreach ($item->subkriteria as $sub)
                                            <option value="{{ $item->kode }},{{ $sub->nama }}">
                                                {{ $sub->nama }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        @endforeach
                        <button type="submit" for="my-modal" class="btn btn-success">Simpan!</button>
                        <a href="{{ route('Alternatif.index') }}" for="my-modal" class="btn btn-danger">Tutup!</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
