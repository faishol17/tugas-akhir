@extends('layouts.app')

@section('title', ' My Order')

@section('content')
<style type="text/css">
    .chat li {
  border: 1px solid #ccc;
  margin: 5px;
  padding: 5px;
  background: rgb(238, 238, 238);
  font-size: 14px;
}
.kanan {
  text-align: right;
}
.chat ul {
  max-height: 200px;
  overflow-y: auto;
}
</style>
    <main class="h-full overflow-y-auto">
        <div class="container mx-auto">
            <div class="grid w-full gap-5 px-10 mx-auto md:grid-cols-12">
                <div class="col-span-8">
                    <h2 class="mt-8 mb-1 text-2xl font-semibold text-gray-700">
                       List Chat
                    </h2>
                    <p class="text-sm text-gray-400">
                        {{  count(@$ls_cht) }} Total Chat
                    </p>
                </div>
                <div class="col-span-4 lg:text-right">

                </div>
            </div>
        </div>

        <section class="container px-6 mx-auto mt-5">
            <div class="grid gap-5 md:grid-cols-12">
                <main class="col-span-12 p-4 md:pt-0">
                    <div class="px-6 py-2 mt-2 bg-white rounded-xl">
                        <table class="w-full" aria-label="Table">
                            <thead>
                                <tr class="text-sm font-normal text-left text-gray-900 border-b border-b-gray-600">
                                    <th class="py-4" scope="">Dari</th>
                                    <th class="py-4" scope="">Detail Chat</th> 

                                </tr>
                            </thead>
                                @forelse ($ls_cht as $key)
                                 
                                    <tr class="text-gray-700 border-b">
                                        <td class="px-1 py-5 text-sm w-2/8"> 
                                            {{@$key->name_user}}
                                        </td>
                                        <td class="w-2/6 px-1 py-5"> 
                                            <a class="btn btn-success detail" data-id="{{@$key->id_uers}}">Detail</a>
                                        </td> 
                                    </tr>
                                @empty
                                    {{-- empty --}}
                                @endforelse

                            </tbody>
                        </table>
                    </div>
                </main>
            </div>
        </section>
    </main>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content modal-md">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Detail Chat</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="chat">
            <ul> 
            </ul>
            
        </div>

        <form id="send" name="send">
            <div class="form-group">
                <label>Chat</label>
                 <input type="text"  class="form-control" name="chat">
            </div>
            <div class="form-group">
               <button class="btn btn-success" type="submit">Send</button>
            </div> 
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
    $(document).ready(function()
    { 
        $('body').delegate('.detail','click',function(e)
        {
            e.preventDefault();
           window.di_user=$(this).data('id'); 
            $('#exampleModal').modal('show');

        });
        $('#exampleModal').on('shown.bs.modal',function(e)
        {
            e.preventDefault();
            $('.chat').find('ul').empty();
            clearTimeout(window.timer);
              getlischat();
        });
        $('body').delegate('#send','submit',function(e)
        {
            e.preventDefault();
            const grafikjson        = document.forms.namedItem('send');
            const form_graf         = new FormData(grafikjson); 
            form_graf.append('_token','{{csrf_token()}}');
            form_graf.append('users_id', window.di_user);  
            fetch('{{url('kirim-chat')}}', { method: 'POST',body:form_graf}).then(res => res.json()).then(data => 
            { 
            $('input[name="chat"]').val('');
            });
        });
        function getlischat()
        {  
        const Formlist  =new FormData();
        Formlist.append('_token', '{{csrf_token()}}');    
        Formlist.append('users_id',  window.di_user);   
        fetch('{{url('list-chat')}}', { method: 'POST',body:Formlist}).then(res => res.json()).then(data => 
        { 

            var list_=``;
            for(let lis of data.db_chat)
            {
                var saya='{{Auth::user()->id}}'==lis.id_a?'kanan':'kiri';  
                list_+=`<li class="`+saya+`">`+lis.chat+`</li>`;
            }
            if(data.db_chat.length!=0)
            {
                $('.chat ul').html(list_);  
            }
            }); 
        window.timer =setTimeout(function(){
         getlischat();
        },3000);
        }
    })
</script>
@endsection
