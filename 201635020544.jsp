<template:user_backend htmlTitle="�༭ѧ����Ϣ" bodyTitle="�༭ѧ����Ϣ">
    <form method="POST" action="${cx}/student/update/"
          enctype="multipart/form-data">
<!--201635020544 �ųɺ� �༭���� -->

        <div class="form-group">
            <label for="firstname1" class="col-sm-1 control-label">ѧ��ID#</label>
            <div class="col-sm-6">
                <input type="text" name="studentId" value="${student.studentId}" class="form-control" id="firstname1" >
            </div>
        </div><br/><br/>

        <div class="form-group">
            <label for="firstname" class="col-sm-1 control-label">����</label>
            <div class="col-sm-6">
                <input type="text" name="name"
                       disabled value="${student.name}" class="form-control" id="firstname"
                      >
            </div>
        </div><br/><br/>

        <div class="form-group">
            <label for="firstname2" class="col-sm-1 control-label">�绰����</label>
            <div class="col-sm-6">
                <input type="text" name="cellphone" value="${student.cellphone}" class="form-control" id="firstname2"
                       placeholder="������绰����">
            </div>
        </div><br/><br/>
        <div class="col-sm-8 col-sm-offset-1">

            <strong>�Ա� </strong><br/>

            <select  name="type">
                <option value="��" ${student.sex eq "��" ? "selected" : ""}>��</option>
                <option value="Ů" ${student.sex eq "Ů" ? "selected" : ""}>Ů</option>
                <option value="������" ${student.sex eq "������" ? "selected" : ""}>������</option>

            </select><br/><br/>
            <input type="hidden" name="name"   value="${student.name}"><br/><br/>
            <strong> ��ͥ��ַ</strong><br/>
            <textarea name="address" rows="5" cols="30">${student.address}
            </textarea><br/><br/>
           <strong> ״̬</strong><br/>
            <td><c:if test="${student.status eq 0}"><kbd>δ���</kbd></c:if>
                <c:if test="${student.status eq 1}"><kbd>���ͨ��</kbd></c:if></td>
            <td><br/><br/>

                <strong>����ʱ��:</strong><br/>
                    <fmt:formatDate value="${student.dateCreated}"
                                    pattern="yyyy��MM��dd�� E hhʱmm��ss��"/>
                <br/><br/>

                <input type="submit" value="�ύ" class="btn btn-default"/>
        </div>

    </form>
    <script>
        //����ҳ���Ӧ�Ĳ˵�ѡ��
        var ItemId ="Item1_0";
    </script>
</template:user_backend>