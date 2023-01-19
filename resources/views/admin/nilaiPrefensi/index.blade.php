<x-app-layout>

    <x-slot name="page">nilaiPrefensi</x-slot>
    {{-- Modal Tambah nilaiPrefensi --}}
    <!-- Put this part before </body> tag -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('nilaiPrefensi.store') }}" method="POST"
                        class="flex flex-col justify-center items-center">
                        @csrf
                        @method('POST')
                        <div class="form-group">
                            <label class="label">
                                <span class="label-kode">Nilai Prefensi</span>
                            </label>
                            <label class="col-sm-12">
                                <span>Kode</span>
                                <input type="text" placeholder="....." name="kode"
                                    class="form-control border-bottom" />
                            </label>
                        </div>
                        <div class="form-group">
                            <label class="label">
                                <span class="label-keterangan">keterangan Prefensi</span>
                            </label>
                            <label class="col-sm-12">
                                <span>keterangan</span>
                                <input type="text" placeholder="....." name="nama"
                                    class="form-control border-bottom" />
                            </label>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" for="my-modal" class="btn btn-success">Simpan!</button>
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
            <x-th data-priority="1">Nilai</x-th>
            <x-th data-priority="2">keterangan</x-th>
            <x-th data-priority="3">Aksi</x-th>
        </x-slot>
        <x-slot name="body">
            @foreach ($nilaiPrefensi as $item)
                <x-tr>
                    <x-td>{{ $item->kode }}</x-td>
                    <x-td>{{ $item->nama }}</x-td>
                    <x-td>
                        <x-tdaction :edit="true" :delete="true" :routeEdit="route('nilaiPrefensi.edit', ['id' => $item->id])"
                            routeDelete="deletenilaiPrefensi " :idDelete="$item->id" :detail="false" />
                    </x-td>
                </x-tr>
            @endforeach
        </x-slot>
    </x-table>
    <script>
        $(document).ready(function() {
            $(".deletenilaiPrefensi").click(function(e) {
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
                        url: "/nilaiPrefensi/destroy/" + id,
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
