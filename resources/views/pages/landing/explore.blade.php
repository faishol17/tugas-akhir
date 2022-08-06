@extends('layouts.front')

@section('title', ' Explore')

@section('content')
<style type="text/css">
    .flex.justify-between.flex-1.sm\:hidden {
  display: none;
}
form {
  display: flex;
  padding: 20px;
}
form input {
  border: 1px solid rgba(72, 69, 69, 0.32) !important;
  width: 40%;
}
form .block.px-2.py-2.text-center.text-white.bg-serv-button.rounded-xl {
  border-radius: 1px;
}
.w-full-color {
  background: rgba(0, 0, 0, 0.13);
}
.w-full-color td {
  padding: 5px 8px;
}
</style>
    <div class="content">
        <!-- services -->
        <div class="bg-serv-bg-explore overflow-hidden">
            <div class="pt-16 pb-16 lg:pb-20 lg:px-24 md:px-16 sm:px-8 px-8 mx-auto">
                <div class="text-center">
                    <h1 class="text-3xl font-semibold mb-1">Layanan Kami</h1>
                    <p class="leading-8 text-serv-text mb-10">
                        Temukan Freelancer
                    </p>
                </div>
                <!-- <nav class="my-8 text-center" aria-label="navigation">
                    <a class="bg-serv-bg text-white block sm:inline-block my-2 py-2 px-8 mx-4 font-medium rounded-xl" href="#">
                        All Services
                    </a>
                    <a class="bg-serv-explore-button text-serv-bg block sm:inline-block my-2 py-2 px-8 mx-4 font-medium rounded-xl" href="#">
                        Programming & Tech
                    </a>
                    <a class="bg-serv-explore-button text-serv-bg block sm:inline-block my-2 py-2 px-8 mx-4 font-medium rounded-xl" href="#">
                        Graphic Design
                    </a>
                    <a class="bg-serv-explore-button text-serv-bg block sm:inline-block my-2 py-2 px-8 mx-4 font-medium rounded-xl" href="#">
                        Digital Marketing
                    </a>
                    <a class="bg-serv-explore-button text-serv-bg block sm:inline-block my-2 py-2 px-8 mx-4 font-medium rounded-xl" href="#">
                        Business
                    </a>
                </nav> -->
            <form action="{{url()->current()}}" method="get">
                            <input type="text" name="cari" value="{{ @$app->request->input('cari') }}"> 
                            <button type="submit" class="block px-2 py-2 text-center text-white bg-serv-button rounded-xl" >Cari</button>
                        </form> 
                <div class="grid grid-cols lg:grid-cols-3 md:grid-cols-2 gap-4">
                    @forelse ($services as $item)
                        @include('components.landing.service-explore')
                    @empty
                        {{-- empty --}}
                    @endforelse
                </div>
                 {{$services->links()}}
                <div class="text-center mt-10">
                    <!-- <a class="bg-serv-explore-button text-serv-bg block sm:inline-block my-2 py-2 px-8 mx-4 font-medium rounded-xl" href="#">
                        Load More
                    </a> -->
                </div>
            </div>
        </div>
    </div>

@endsection
