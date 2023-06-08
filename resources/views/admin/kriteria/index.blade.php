<x-app-layout>

    <x-slot name="page">Kriteria</x-slot>
    @include('sweetalert::alert')
    {{-- Modal Tambah Kriteria --}}
    <!-- Put this part before </body> tag -->

    <!-- Modal -->

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <form action="{{ route('Kriteria.store') }}" method="post"
                        class="flex flex-col justify-center items-center">

                </div>
                <div class="modal-body">
                    <div class="flex flex-col justify-center items-center">
                        @csrf
                        <div class="form-group ">
                            <label class="col-sm-12">
                                <span class="label-kode">Kode Kriteria</span>
                            </label>
                            <label class="col-md-12">
                                <input type="text" placeholder="....." name="kode"
                                    class="form-control border-none" value={{ $kode }} />
                                @error('kode')
                                    <p class="text-red-400">{{ $message }}</p>
                                @enderror
                            </label>
                        </div>
                        <div class="form-group ">
                            <div class="col-sm-12">
                                <span class="label-nama">Nama Kriteria</span>
                            </div>
                            <div class="col-md-12">
                                <input type="text" placeholder="....." name="name"
                                    class="form-control border-none" />
                                @error('name')
                                    <p class="text-red-400">{{ $message }}</p>
                                @enderror
                            </div>
                        </div>
                        <div class="divider">Sub Kriteria</div>
                        <div class="form-group  w-full flex flex-nowrap justify-center contentSubKriteria"
                            id="">
                            <input type="text" placeholder="Type here" name="subkriteria[]"
                                class="form-control border-none w-full max-w-xs" />
                        </div>
                        <kbd class="kbd cursor-pointer plusSubKriteria">+</kbd>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" for="my-modal" class="btn btn-success">Simpan!</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    {{-- Table --}}
    <x-table>
        <x-slot name="input">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Tambah
            </button>


        </x-slot>
        <x-slot name="head">
            <x-th data-priority="1">No.</x-th>
            <x-th data-priority="1">Name</x-th>
            <x-th data-priority="2">Kriteria</x-th>
            <x-th data-priority="3">Aksi</x-th>
        </x-slot>
        <x-slot name="body">
            @foreach ($kriteria as $item)
                <x-tr>
                    <x-td>{{ $loop->iteration }}</x-td>
                    <x-td>{{ $item->kode }}</x-td>
                    <x-td>{{ $item->name }}</x-td>
                    <x-td>
                        <x-tdaction :edit="true" :delete="true" :routeEdit="route('Kriteria.edit', ['id' => $item->id])" routeDelete="deleteKriteria "
                            :idDelete="$item->id" :detail="false" />
                    </x-td>
                </x-tr>
            @endforeach
        </x-slot>
    </x-table>
    <script>
        $(document).ready(function() {
            $(".deleteKriteria").click(function(e) {
                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: 'btn btn-success',
                        cancelButton: 'btn btn-danger'
                    },
                    buttonsStyling: false
                })

                swalWithBootstrapButtons.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Ya, Hapus!',
                    cancelButtonText: 'Tidal, Batal!',
                    reverseButtons: true
                }).then((result) => {
                    e.preventDefault();
                    var id = $(this).attr('aria-id')
                    console.log(id)
                    $.ajax({
                        type: "GET",
                        url: "/Kriteria/destroy/" + id,
                        success: function(response, status, data) {
                            if (status == "success") {
                                if (result.isConfirmed) {
                                    swalWithBootstrapButtons.fire(
                                        'Berhasi;!',
                                        'Berhasil Di Hapus'
                                    )
                                    setTimeout(function() {
                                        window.location.reload();
                                    }, 1000);
                                }
                            } else if (
                                /* Read more about handling dismissals below */
                                result.dismiss === Swal.DismissReason.cancel
                            ) {
                                swalWithBootstrapButtons.fire(
                                    'Cancelled',
                                    'Your imaginary file is safe :)',
                                    'error'
                                )
                            }
                        }
                    });

                })
            });
        });
    </script>
</x-app-layout>
