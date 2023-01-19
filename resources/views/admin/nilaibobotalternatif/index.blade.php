<x-app-layout>

    <x-slot name="page">Table Perbandingan alternatif</x-slot>
    <div class="card w-full bg-info text-gray-800">
        <div class="card-body">
            <x-validation-errors />
            <form action="{{ route('NilaiBobotAlternatif.edit') }}" method="POST" class="grid grid-cols-1">
                @csrf
                @method('PUT')
                <div class="form-group w-full max-w-xs col-span-1">
                    <label class="col-sm-12">
                        <span class="label-text text-white">Pilih Kriteria</span>
                    </label>
                    <select class="form-select select-bordered kriteria_id" name="kriteria_id" id="kriteria_id">
                        <option value="">---</option>
                        @for ($z = 0; $z < count($kriteria); $z++)
                            <option class="text-gray-800" value="{{ $kriteria[$z]['kode'] }}"
                                {{ $kode_kriteria == $kriteria[$z]['kode'] ? 'selected' : '' }}>
                                {{ $kriteria[$z]['kode'] }} - {{ $kriteria[$z]['name'] }}</option>
                        @endfor
                    </select>
                </div>
                <div class=" col-span-3 flex  justify-around">
                    <div class="form-group w-full max-w-xs">
                        <label class="col-sm-12">
                            <span class="label-text text-white">alternatif 1</span>
                        </label>
                        <select class="form-select select-bordered" name="alternatif1">
                            @for ($z = 0; $z < count($alternatif); $z++)
                                <option class="text-gray-800" value="{{ $alternatif[$z]['kode'] }}">
                                    {{ $alternatif[$z]['kode'] }}</option>
                            @endfor
                        </select>
                    </div>
                    <div class="form-group w-full max-w-xs">
                        <label class="col-sm-12">
                            <span class="label-text text-white">Nilai Perbandingan</span>
                        </label>
                        <select class="form-select select-bordered" name="nilai_banding">
                            @foreach ($prefensi as $item)
                                <option class="text-gray-800" value="{{ $item->id }}">{{ $item->kode }} -
                                    {{ $item->nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group w-full max-w-xs">
                        <label class="col-sm-12">
                            <span class="label-text text-white">alternatif 2</span>
                        </label>
                        <select class="form-select select-bordered" name="alternatif2">
                            @for ($l = 0; $l < count($alternatif); $l++)
                                <option class="text-gray-800" value="{{ $alternatif[$l]['kode'] }}">
                                    {{ $alternatif[$l]['kode'] }}</option>
                            @endfor
                        </select>
                    </div>
                    <div class="form-group w-full max-w-xs">
                        <label class="col-sm-12">
                            <span class="label-text text-white">-</span>
                        </label>
                        <button type="submit" class="btn btn-primary">Ganti</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    {{-- Table --}}
    <div class="px-4 py-5">
        <div class="overflow-auto box-border">
            @php
                $batas = count($alternatif);
                $hasil = [];
                $var = 0;
                $alternatif_arr = [];
            @endphp
            <table class="table w-full">
                <tr>
                    <x-th class="bg-info text-info-content">Kode</x-th>
                    @for ($i = 0; $i < $batas; $i++)
                        <x-th class="bg-info text-info-content">{{ $alternatif[$i]['kode'] }}</x-th>
                    @endfor
                </tr>

                <tbody id="table_banding_alternatif">

                </tbody>
            </table>
        </div>
    </div>
    <script>

    </script>
</x-app-layout>
