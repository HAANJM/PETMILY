<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.adoption.model.vo.Application, java.util.ArrayList, com.kh.common.model.vo.PageInfo" %>  
<%
	ArrayList<Application> list = (ArrayList<Application>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫밀리 : 입양신청서(관리자)</title>
<style>
    div{
        box-sizing: border-box;
        /* border: 1px solid darkolivegreen; */
    }
    .wrap{
        width: 1200px;
        height: 1600px;
        margin: auto;
    }
    .wrap > div{width: 100%;}
    #header{height: 10%;} 
    #footer{height: 10%;}
    #navigator{height: 3%;}
    #content{height: 77%;}

    /* 세부 div 속성 */
    #header > div, #content > div{
        height: 100%;
        float: left;
    }
    /* 가로길이 */

    #content_1{width: 20%;}
    #content_2{width: 80%;}

/*------------------- navigator 영역 --------------------*/
    #navigator{padding-top: 10px;}
    #navi{height: 100%;}
    #navi a{
        color: black;
        text-decoration: none;
        font-size: 15px; 
        font-weight: bold;
    }
/*------------------- content_1 영역 --------------------*/
    #content_1 > #user-area{
        height: 73%;
        background-color: lightgray;

        /* 사용자영역 표시 - 지우기*/
        font-size: 30px;
        text-align: center;
        padding-top: 150px;
    }
    #content_1 > #br{
        height: 2%;
    }
    #content_1 > #admin-area{
        height: 25%;
        background-color: lightgray;

        /* 관리자영역 표시 - 지우기*/
        font-size: 30px;
        text-align: center;
        padding-top: 40px;
    }
/*------------------- content_2 영역 --------------------*/
    #content_2 > #content-area{
        height: 100%;
        margin-left: 20px;
        background-color: floralwhite;
    }
/*------------------- footer 영역 --------------------*/
    #footer{
        background-color: gray;
    }
    
    th{
    	background-color: rgb(255,217,135);
        padding: 10px;
    }
    
    td{
    	text-align : center;
        padding: 10px;
    }
    .ap-list>tbody>tr:hover{
        cursor:pointer;
        background-color: rgb(232, 191, 123);;
    }
</style>
</head>
<body>
    <%@include file="../common/menubar.jsp" %>
    <div class="wrap">

        <hr>

        <div id="navigator">

            <div id="navi">
                <!-- 임시 내용 -->
                <a href="#">HOME</a> > 
                <a href="#">관리자</a> >
                <a href="#">입양신청서</a>
            </div><!--navi-->

        </div><!--navigator-->

        <div id="content">
            <div id="content_1">
                <div id="user-area">
                    <!-- 사용자만 보이는 영역-->
                    사용자 영역
                </div>
                <div id="br">
                    <!-- 사용자영역과 관리자영역 사이 공간-->
                </div>
                <div id="admin-area">
                    <!-- 관리자가 볼 수 있는 영역-->
                    관리자 영역
                </div>
            </div>
            <div id="content_2">
                <div id="content-area">
                    <h2>입양신청서</h2>
                    <br><br>
                    <div id="list-area">

                        <table class="ap-list" align="center">
                            <thead>
                                <tr style="text-align: center;">
                                    <th>신청서 번호</th>
                                    <th>신청일자</th>
                                    <th width="550px">제목</th>
                                    <th>신청인</th>
                                    <th>확인여부</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            <%for(Application a : list){ %>
                                <tr>
                                    <td><%=a.getApNo() %></td>
                                    <td><%=a.getApDate() %></td>
                                    <td><%=a.getCategoryName() %> | <%=a.getName() %> | <%=a.getPhone() %> | No.<%= a.getAnimalNo() %>(<%=a.getAnimalName() %>)</td>
                                    <td><%=a.getName() %></td>
                                    <%if(a.getStatus().equals("Y")){ %>
                                    <td style="color:red">확인완료</td>
                                    <%} else {%>
                                    <td style="color:blue">대기중</td>
		                            <%} %>   
                                </tr>
                             <%} %>   

                            </tbody>
                        </table>

				<br><br>
              <div align="center" class="paging-area">
   		    	  <% if(currentPage != 1){ %>
                   <button onclick="location.href='<%=contextPath%>/list.ap?cpage=<%=currentPage -1 %>'">&lt;</button>
               	  <%} %>
                  
		       	  <% for(int i = startPage; i <= endPage; i++) { %>
		            <% if(i != currentPage){ %>
		                <button onclick="location.href='<%=contextPath%>/list.ap?cpage=<%=i %>'"><%=i%></button>
		            <%} else { %>
		                <button disabled><%=i %></button>
		            <%} %>
		       	  <%} %>
		       	  
		        <% if(currentPage != maxPage){ %>
		            <button onclick="location.href='<%=contextPath%>/list.ap?cpage=<%=currentPage +1 %>'"> &gt; </button>
		        <%} %>
              </div> <!--페이징-->
                
		      <script>
				$(function(){
					$(".ap-list>tbody>tr").click(function(){
		
						var apno = $(this).children().eq(0).text();
		
						location.href="<%=contextPath%>/detail.ap?apno="+apno;
					})
				})
			 </script>

                    </div>

                </div> <!--content-area-->
            </div> <!--content-2-->
        </div><!--content-->

        <br><!-- content영역과 footer영역 사이 띄우기-->
        <%@include file="../common/footer.jsp" %>
    </div>

</body>
</html>