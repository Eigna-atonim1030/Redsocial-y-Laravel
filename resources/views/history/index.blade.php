<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Historial') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100 flex justify-center">
                    <form action="{{ route('history.search') }}" method="POST">
                        @csrf

                        <div date-rangepicker class="flex items-center">
                            @foreach(['from', 'to'] as $field)
                                <div class="relative">
                                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                        <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400"
                                            fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd"
                                                d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z"
                                                clip-rule="evenodd"></path>
                                        </svg>
                                    </div>
                                    <input name="{{ $field }}_date" type="text"
                                        class="date-input @if($field === 'from') from-date @else to-date @endif"
                                        placeholder="{{ ucfirst($field) }} Fecha" required>
                                </div>
                                @if ($field === 'from')
                                    <span class="mx-4 text-gray-500">hasta</span>
                                @endif
                            @endforeach
                        </div>

                        <div class="flex justify-center mt-5">
                            <button type="submit"
                                class="search-button">BUSCAR</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/datepicker.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Inicializar el datepicker aquí si es necesario
        });
    </script>
</x-app-layout>
