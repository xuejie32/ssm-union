<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--分页显示的开始 --%>
<div style="text-align:center">

    <c:if test="${empty msg}">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li>
            <a href="#" aria-label="Previous">共${page.totalPageNum}页/第${page.currentPageNum}页</a>
            </li>
    <!-- <a href="/store_v5/ProductServlet?method=findProductsByCidWithPage&cid=1&num=1">首页</a> -->
    <%-- <a href="${pageContext.request.contextPath}/OrderServlet?method=findMyOrdersWithPage&num=1">首页</a> --%>
    <%-- <a href="${pageContext.request.contextPath}/AdminProductServlet?method=findAllProductsWithPage&num=1">首页</a> --%>

            <li>
            <a href="${pageContext.request.contextPath}/${page.url}?num=1" aria-label="Previous">首页</a>
            </li>
            <li>
            <a href="${pageContext.request.contextPath}/${page.url}?num=${page.prePageNum}" aria-label="Previous">上一页</a>
            </li>
            <%--显示的页码，使用forEach遍历显示的页面 --%>
            <c:forEach begin="${page.startPage}" end="${page.endPage}" var="pagenum">
                <li>
                <a href="${pageContext.request.contextPath}/${page.url}?num=${pagenum}" aria-label="Previous">${pagenum}</a>
                </li>
            </c:forEach>
            <li>
            <a href="${pageContext.request.contextPath}/${page.url}?num=${page.nextPageNum}" aria-label="Previous">下一页</a>
            </li>
            <li>
            <a href="${pageContext.request.contextPath}/${page.url}?num=${page.totalPageNum}"  aria-label="Previous">末页</a>
            </li>
            <input type="text" id="pagenum" name="pagenum" size="1" />

            <input type="button" value="前往" onclick="jump()" class="btn btn-primary btn-xs"/>

        </ul>
    </nav>
    </c:if>

    <c:if test="${!empty msg}">
        <c:if test="${!empty page.list}">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">共${page.totalPageNum}页/第${page.currentPageNum}页</a>
                </li>
                <!-- <a href="/store_v5/ProductServlet?method=findProductsByCidWithPage&cid=1&num=1">首页</a> -->
                    <%-- <a href="${pageContext.request.contextPath}/OrderServlet?method=findMyOrdersWithPage&num=1">首页</a> --%>
                    <%-- <a href="${pageContext.request.contextPath}/AdminProductServlet?method=findAllProductsWithPage&num=1">首页</a> --%>

                <li>
                    <a href="${pageContext.request.contextPath}/${page.url}&num=1" aria-label="Previous">首页</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/${page.url}&num=${page.prePageNum}" aria-label="Previous">上一页</a>
                </li>
                    <%--显示的页码，使用forEach遍历显示的页面 --%>
                <c:forEach begin="${page.startPage}" end="${page.endPage}" var="pagenum">
                    <li>
                        <a href="${pageContext.request.contextPath}/${page.url}&num=${pagenum}" aria-label="Previous">${pagenum}</a>
                    </li>
                </c:forEach>
                <li>
                            <%--http://localhost:8080/ssm/seachStudent?search=小$num=2--%>
                    <a href="${pageContext.request.contextPath}/${page.url}&num=${page.nextPageNum}" aria-label="Previous">下一页</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/${page.url}&num=${page.totalPageNum}"  aria-label="Previous">末页</a>
                </li>
                <input type="text" id="pagenum" name="pagenum" size="1" />

                <input type="button" value="前往" onclick="jump()" class="btn btn-primary btn-xs"/>

            </ul>
        </nav>
        </c:if>
        <%--判断查询结果为为空--%>
        <c:if test="${empty page.list}">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li>
                        <a href="#" aria-label="Previous">共${page.totalPageNum}页</a>
                    </li>
                    <!-- <a href="/store_v5/ProductServlet?method=findProductsByCidWithPage&cid=1&num=1">首页</a> -->
                        <%-- <a href="${pageContext.request.contextPath}/OrderServlet?method=findMyOrdersWithPage&num=1">首页</a> --%>
                        <%-- <a href="${pageContext.request.contextPath}/AdminProductServlet?method=findAllProductsWithPage&num=1">首页</a> --%>

                    <li>
                        <a href="#" aria-label="Previous">首页</a>
                    </li>
                    <li>
                        <a href="#" aria-label="Previous">上一页</a>
                    </li>
                        <%--显示的页码，使用forEach遍历显示的页面 --%>
                    <c:forEach begin="${page.startPage}" end="${page.endPage}" var="pagenum">
                        <li>
                            <a href="${pageContext.request.contextPath}/${page.url}&num=${pagenum}" aria-label="Previous">${pagenum}</a>
                        </li>
                    </c:forEach>
                    <li>
                            <%--http://localhost:8080/ssm/seachStudent?search=小$num=2--%>
                        <a href="#" aria-label="Previous">下一页</a>
                    </li>
                    <li>
                        <a href="#"  aria-label="Previous">末页</a>
                    </li>
                    <%--<input type="text" id="pagenum" name="pagenum" size="1" />--%>

                    <%--<input type="button" value="前往" onclick="jump()" class="btn btn-primary btn-xs"/>--%>

                </ul>
            </nav>

        </c:if>
    </c:if>




    <script type="text/javascript">
        function jump(){
            var totalpage = ${page.totalPageNum};
            var pagenum = document.getElementById("pagenum").value;
            //判断输入的是一个数字
            var reg =/^[1-9][0-9]{0,1}$/;
            if(!reg.test(pagenum)){
                //不是一个有效数字
                alert("请输入符合规定的数字");
                return ;
            }
            //判断输入的数字不能大于总页数
            if(parseInt(pagenum)>parseInt(totalpage)){
                //超过了总页数
                alert("不能大于总页数");
                return;
            }
            //转向分页显示的Servlet
            window.location.href="${pageContext.request.contextPath}/${page.url}?num="+pagenum;
        }
    </script>
</div>
<%--分页显示的结束--%>
