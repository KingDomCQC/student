<template:user_backend htmlTitle="���ѧ����Ϣ" bodyTitle="���ѧ����Ϣ">
<!--  201635020501 ��׿��  ���ѧ����Ϣ����-->
    <div class="col-md-11">
        <div class="panel panel-success">
            <div class="panel-heading"
                 style="background-color:#0b7285;color: white">
                <span class="glyphicon glyphicon-book"></span> ���ѧ����Ϣ
            </div>
            <div class="panel-body">
                <form action="${cx}/student/create"  method="POST" enctype="multipart/form-data">
                    <fieldset>
                        <div class="form-group ">
                            <label class="control-label">����</label>
                            <input type="text" style="width: 340px;"
                                   class="form-control" placeholder="������ѧ������"

                                   name="name"/>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">�绰����</label>
                            <input type="text" style="width: 240px;"
                                   class="form-control" placeholder="������绰����"
                                    name="cellphone"/>
                        </div>

                        <div class="form-group ">
                            <label class="control-label">�Ա�</label>
                            <select class="form-control" name="sex"
                                    style="width: 240px;">
                                <option value="��">��</option>
                                <option value="Ů">Ů</option>
                                <option value="������">������</option>
                            </select>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">��ͥ��ַ</label>
                            <textarea  class="form-control" name="address" rows="6" cols="28">
                                ��������ϸ�ļ�ͥ��ַ�����嵽��
                        </textarea>
                        </div>

                        <div class="form-group">
                            <div class="fileUpload">
                            <label class="control-label">����</label>
                                ${msg};
                            <input type="file" name="file" value=""  multiple="multiple"/>
                            </div><br/><br/>
                            <button id="addFile" type="button" class="btn btn-success" > �������</button>
                        </div>
                            <p class="col-lg-4 col-lg-offset-4">
                                <button class="btn btn-default">����</button>
                                <button class="btn"  style="background-color:#0b7285;color: white">���ѧ����Ϣ</button>
                        </p>
                    </fieldset>
                </form>
            </div>

        </div>
    </div>
    <script>
        //����ҳ���Ӧ�Ĳ˵�ѡ��
        var ItemId = "Item1_1";
        $(document).ready(function () {
            //����ļ��ؼ�
            $("#addFile").click(function () {
                $(".fileUpload:last").clone().insertBefore($("#addFile"));
                return false;
            });
        });
    </script>
</template:user_backend>