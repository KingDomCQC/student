<template:user_backend htmlTitle="ѧ����Ϣ�б�" bodyTitle="�鿴ѧ����Ϣ">
    <c:choose>
        <c:when test="${pageInfo.list.size()==0}">
            <h3>Ŀǰϵͳû���κ�ѧ����Ϣ</h3>
        </c:when>
        <c:otherwise>
            <strong>�ܼ�¼��:${pageInfo.total}, ��ҳ��:${pageInfo.pages},
                ��${pageInfo.pageNum}ҳ,
                ��¼:${pageInfo.startRow}-${pageInfo.endRow},
                ����:${pageInfo.size}</strong>
        </c:otherwise>
    </c:choose>
<!-- 201635020631 ������ ϵͳ������  -->
    <div class="panel panel-default ">
        <!-- Default panel contents -->
        <div class="panel-heading clearfix">
            <div class="pull-right">
                <div class="btn-group">
                    <button type="button"
                            class="btn btn-default dropdown-toggle active"
                            data-toggle="dropdown">
                        ÿҳ��¼�� <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">20</a></li>
                        <li><a href="#">30</a></li>
                        <li class="divider"></li>
                        <li><a href="#">50</a></li>
                    </ul>
                </div>
                <div class="btn-group">
                    <button type="button"
                            class="btn btn-default dropdown-toggle"
                            data-toggle="dropdown">
                        �û������� <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu pull-right" role="menu">
                        <li><a href="#">������</a></li>
                        <li><a href="#">��������</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Reset</a></li>
                    </ul>
                </div>
            </div>
            <div class="pull-left">
                <button class="btn btn-success" data-backdrop="static">�½�
                </button>
                <button class="btn btn-danger">ɾ��</button>
            </div>
        </div>


        <table id="List" class="table table-bordered table-hover cc">
            <thead>
            <tr class="">
                <td class="text-center">
                    <input type="checkbox"></td>
                <th>���</th>
                <th>ѧ��ID��</th>
                <th>����</th>
                <th>����Ա</th>
                <th>�Ա�</th>
                <th>�绰</th>
                <th>��ͥ��ַ</th>
                <th>״̬</th>
                <th class="col-lg-3">����</th>
            </tr>
            </thead>
            <tbody class="">

            <!--�����������ѧ����Ϣ����-->
            <c:forEach var="student" items="${pageInfo.list}"
                       varStatus="s">
                <tr>
                    <td class="text-center">
                        <input type="checkbox"></td>
                    <td class="text-center">${s.count}</td>
                    <td>#${student.studentId}</td>
                    <td>${student.name}</td>
                    <td>${student.admin.adminname}</td>
                    <td>${student.sex}</td>
                    <td>${student.cellphone}</td>
                    <td>${student.address}</td>
                    <td><c:if test="${student.status eq 0}">δ���</c:if>
                        <c:if test="${student.status eq 1}">���ͨ��</c:if></td>
                    <td>
                        <button class="btn  btn-xs btn-info"
                                style="color: white;"><span
                                class="glyphicon glyphicon-list"></span>
                            <a href="${cx}/student/view/${student.studentId}">
                                ����</a></button>
                        <button class="btn  btn-xs btn-success"><span
                                class="glyphicon glyphicon-user"></span>
                            <a href="${cx}/student/edit/${student.studentId}">
                                �༭</a></button>

                        <button class="btn  btn-xs btn-danger ticketDel"><span
                                class="glyphicon glyphicon-user">
                        <a href="${cx}/student/del/${student.studentId}"> ɾ��</a>
                    </span></button>

                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="col-md-12 text-right">
            <zsc:page url="${cx}/student/list"/>
        </div>
    </div>


</template:user_backend>
<script>
    var ItemId = "Item1_2";
    //ʹ��jq����һ���Ƿ�ɾ����¼����ʾ��
    $(document).ready(function () {
        $(".ticketDel").click(function () {
            if (confirm("ȷ��ɾ��Ʊ��?")) {
                return true;
            }
            return false;
        });
    });
</script>