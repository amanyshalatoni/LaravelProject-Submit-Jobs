@extends("admin._layout")

@section("title")
ادارة التصنيفات
@endsection



@section("content")
<form class="row">
    <div class="col-sm-4">
      <input type="text" autofocus name="q" placeholder="كلمة البحث" class="form-control" />
    </div>
    <div class="col-sm-2">
        <select class="form-control" name="active">
            <option value="">جميع الحالات</option>
            <option value="1">فعال</option>
            <option value="0">غير فعال</option>
        </select>
    </div>
    
    <div class="col-sm-2">
      <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i> بحث</button>
    </div>
    <div class="col-sm-4 text-right">
    <a class="btn btn-success Popup" title="اضافة تصنيف جديد" href="/admin/categoryajax/create">
        <i class="fa fa-plus"></i> اضافة</a>
    </div>
</form> 

<table class="table table-striped table-hover">
    <thead>
        <tr><th>التصنيف</th><th width="12%">فعال؟</th><th width="20%">تاريخ الانشاء</th>
            <th width="12%"></th>
        </tr>
    </thead>
    <tbody>
        
        
        </tbody>
</table>

@endsection

@section("js")
<script>
    $(function(){
        $(".cbActive").click(function(){
            var id=$(this).val();
            $.get("/admin/category/active/"+id,function(json){
                ShowMessage(json.msg,"ادارة التصنيفات");
                //alert(json.msg);
            },"json");
        });
    });
</script>
@endsection


