@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
      <div class="col">
        <div class="jumbotron">
            <h1 class="display-4">All Users  </h1>
        <a class="btn btn-success" href="{{url('user/create')}}"> create user</a>
           </div>
      </div>
    </div>

    <div class="row">
        <div class="col">

       <div class="container" style=" padding-bottom: 13px">

       </div>

        </div>
      </div>


      @if (isset($details))
      <div class="row" style="padding-top: 2%; padding-bottom:3%">

        <div class="container">
            <div class="col">
                <table class="table">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col"> Email</th>
                      </tr>
                    </thead>
                    <tbody>
                        @php
                            $i = 1;
                        @endphp
                        @foreach ($details as $item)
                        <tr>
                            <th scope="row">{{$i++}}</th>
                            <td>{{$item->name}}</td>
                            <td>{{$item->email}}</td>

                          </tr>
                        @endforeach

                    </tbody>
                  </table>


              </div>
        </div>




    </div>
      @endif




    <div class="row">
        @if ($users->count() > 0 )
        <div class="col">
            <table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col"> Email</th>
                    <th scope="col"> Actions</th>
                  </tr>
                </thead>
                <tbody>
                    @php
                        $i = 1;
                    @endphp
                    @foreach ($users as $item)
                    <tr>
                        <th scope="row">{{$i++}}</th>
                        <td>{{$item->name}}</td>
                        <td>{{$item->email}}</td>
                        <td>


                         <a class="text-danger" href="{{route('user.destroy',['id'=> $item->id])}}"> <i class="fas  fa-2x fa-trash-alt"></i> </a>
                        </td>
                      </tr>
                    @endforeach

                </tbody>
              </table>


          </div>
        @else
        <div class="col">
            <div class="alert alert-danger" role="alert">
                Not tags
              </div>
        </div>

        @endif


    </div>
  </div>
@endsection


