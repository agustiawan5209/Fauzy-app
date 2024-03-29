<x-app-layout>
    <x-slot name="page">Edit {{ $kriteria->nama }}</x-slot>
    <div class=" sm:px-4 py-2 flex justify-center">
        <div class="w-full flex justify-center items-end shadow-lg shadow-gray-600 max-w-md py-5 rounded-lg">

            <form action="{{ route('Kriteria.update', ['id' => $kriteria->id]) }}" method="POST"
                class="flex flex-col justify-center items-center">
                <div class="flex flex-col">
                    <x-validation-errors />
                </div>
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label class="col-sm-12">
                        <span class="label-kode">Kode Kriteria</span>
                    </label>
                    <label class="col-sm-12">

                        <input type="text" placeholder="....." name="kode" value="{{ $kriteria->kode }}"
                            class="form-control border-none border-bottom" />
                    </label>
                </div>
                <div class="form-group">
                    <label class="col-sm-12">
                        <span class="label-nama">Nama Kriteria</span>
                    </label>
                    <label class="col-sm-12">
                        <input type="text" placeholder="....." name="name" value="{{ $kriteria->name }}"
                            class="form-control border-none border-bottom" />
                    </label>
                </div>
                <div class="divider">Sub Kriteria</div>
                <div class="form-group w-full flex flex-nowrap justify-center contentSubKriteria" id="">
                    @foreach ($kriteria->subKriteria as $item)
                        <div class="col-sm-12 modal-action flex justify-between" style="display: flex">
                            <input type="text" placeholder="Type here" name="subkriteria[]"
                                class="form-control border-none border-bottom w-full max-w-xs"
                                value="{{ $item->nama }}" />
                            <a href="{{ route('SubKriteria.destroy', ['id' => $item->id]) }}"
                                class="bg-danger text-white btn">
                                <svg class="w-6 h-6 " fill="none" stroke="currentColor" viewBox="0 0 24 24"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16">
                                    </path>
                                </svg>
                            </a>
                        </div>
                    @endforeach
                </div>
                <kbd class="btn btn-info plusSubKriteria">Tambah Sub Kriteria</kbd>
                <div class="modal-action flex justify-between">
                    <button type="submit" for="my-modal" class="btn btn-success">Simpan!</button>
                    <a href="{{ route('Kriteria.index') }}" for="my-modal" class="btn btn-danger">Tutup!</a>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>
