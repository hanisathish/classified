@extends('backend.layouts.main')

@section('content-header')
    <h1>
       Kinfraindustries
        <small>Advertisement</small>
    </h1>
@endsection

@section('partial-style')
{!! Html::style('plugins/select2/select2.min.css') !!}
@endsection

@section('partial-script')
{!! Html::script('plugins/select2/select2.full.min.js') !!}
<script>
  $(function () {
    $(".select2").select2();    
  });
</script>

<script>
  $(function () {
   
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('advt_desc')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>
@endsection

@section('view-page-title')
Edit Advertisement
@endsection

@section('content')
	<div class="row">
	   <div class="col-xs-12">
          <div class="box">
             @include('backend.advt.include')
            <div class="box-body">


               @if($errors->has())

                 <div class="alert alert-danger alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h4><i class="icon fa fa-ban"></i> Alert!</h4>                  
                  @foreach ($errors->all() as $error)  
                       {{ $error }}</br>                      
                  @endforeach
                  </div>
                @endif  
            

                 {!! Form::open(['route' => 'admin.advt.update','files' => true , 'class' =>'form-horizontal']) !!}
                 {!! Form::hidden('id', $advt->id) !!}
                <form class="form-horizontal">
                  <div class="box-body">
                    <div class="form-group">
                     {!! Form::label('advt_type', 'Advt type', array('class'=> 'col-sm-2 control-label')) !!}
                      <div class="col-sm-10">
                        <input type="radio" name="advt_type" class="minimal"  value="1" @if($advt->advt_type ==1) {{ 'checked' }} @endif > Local Ads 
                        <input type="radio" name="advt_type" class="minimal" value="0" @if($advt->advt_type ==2) {{ 'checked' }} @endif> Google Ads
                      </div>
                    </div>

                    <div class="form-group">
                     {!! Form::label('advt_name', 'Name', array('class'=> 'col-sm-2 control-label')) !!}
                      <div class="col-sm-10">
                       {!! Form::text('advt_name', $advt->advt_name, ['class'=>'form-control', 'placeholder'=>'Enter Name', 'id'=>'advt_name']) !!}
                      </div>
                    </div>
                    
                    <div class="form-group">              
                      {!! Form::label('advt_desc', 'Description', array('class'=> 'col-sm-2 control-label')) !!}
                      <div class="col-sm-10">
                       {!! Form::textarea('advt_desc', $advt->advt_desc, ['class'=>'form-control', 'placeholder'=>'Enter Description', 'id'=>'advt_desc']) !!}
                      </div>
                    </div> 


                    <div class="form-group">
                     {!! Form::label('advt_url', 'URL', array('class'=> 'col-sm-2 control-label')) !!}
                      <div class="col-sm-10">
                       {!! Form::text('advt_url', $advt->advt_url, ['class'=>'form-control', 'placeholder'=>'Enter URL', 'id'=>'advt_url']) !!}
                      </div>
                    </div>
					
					
                      <div class="form-group">
                     {!! Form::label('published', 'Published', array('class'=> 'col-sm-2 control-label')) !!}
                      <div class="col-sm-10">
                        <input type="radio" name="published" class="minimal"  value="1" @if($advt->published ==1) {{ 'checked' }} @endif > Yes 
                        <input type="radio" name="published" class="minimal" value="0" @if($advt->published ==0) {{ 'checked' }} @endif> No
                      </div>
                    </div>
              

                    @if( $advt->advt_image)  
                    <div class="form-group">
                    {!! Form::label('inputImage', 'Existing Image', array('class'=> 'col-sm-2 control-label')) !!}
                      <div class="col-sm-10">
                        <img style="width: 100px;height:100px;" src="{!!asset('/uploads/'. $advt->advt_image )!!}" />                   
                      </div>
                    </div>
                    @endif


                    <div class="form-group">
                    {!! Form::label('advt_image', 'Image', array('class'=> 'col-sm-2 control-label')) !!}
                      <div class="col-sm-10">
                        {!! Form::file('advt_image' ,null, ['class'=>'form-control', 'id'=>'advt_image']) !!}                      
                      </div>
                    </div>


                  <!-- /.box-body -->
                  <div class="box-footer">                  
                    {!! Form::submit( 'Submit', ['class'=>'btn btn-info pull-right']) !!}
                  </div>
                  <!-- /.box-footer -->
                 {!! Form::close() !!}

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
	</div>
@endsection