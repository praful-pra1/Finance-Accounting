<%-- 
    Document   : A_UserRoleForm
    Created on : 21 Dec, 2018, 2:19:58 AM
    Author     : ASUS
--%>

<%@page import="modal.terms_taxonomy_masterModal" %>
<%@page import="controller.terms_taxonomy_masterController" %>
<%@page import="java.sql.*"%>
<%
    String userrole="",status="" , useroleId ="" ;
    useroleId = request.getParameter("edit");
    if(request.getParameter("edit")!=null)
        {
             
            useroleId = request.getParameter("edit");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
            PreparedStatement st = con.prepareStatement("select * from  user_master where userrole_id=3 and user_id=? ");
            st.setString(1, useroleId);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
            userrole= rs.getString("contactperson_name");
            status=rs.getString("account_status");
           
        }

  
        }
    
    
    
    if (request.getParameter("btnSave") != null)
    {
             terms_taxonomy_masterModal ttmModal = new terms_taxonomy_masterModal();
            ttmModal.setterms(request.getParameter("txtUserRole"));
            if(request.getParameter("hid1")!=null)
            {
                     ttmModal.setterms_id(Integer.parseInt(request.getParameter("hid1")));
                     ttmModal.settexonomy("UserRole");
                     ttmModal.setparent_id(0);
                     ttmModal.setdescription("");
                     ttmModal.setstatus(request.getParameter("dropStatus"));

                         ttmModal.setextra_1("");

                        ttmModal.setextra_2("");
             
                            ttmModal.setextra_3("");
                           terms_taxonomy_masterController ttmController = new terms_taxonomy_masterController();
                        String val = ttmController.term_termsTaxonomyInsertUpdate(ttmModal);
                        if (val.equals("1")) {
                    out.print("<script>alert('Successfully Updated Userrole.')</script>");
                     } else {
                    out.print("<script>alert('" + val + "')</script>");
                     }
                 
            }
            else
            {
         
            
            ttmModal.setterms(request.getParameter("txtUserRole"));
            ttmModal.setterms_id(0);
            ttmModal.settexonomy("UserRole");
            ttmModal.setparent_id(0);
            ttmModal.setdescription("");
            ttmModal.setstatus(request.getParameter("dropStatus"));

            ttmModal.setextra_1("");

            ttmModal.setextra_2("");

            ttmModal.setextra_3("");
             terms_taxonomy_masterController ttmController = new terms_taxonomy_masterController();
            String val = ttmController.term_termsTaxonomyInsertUpdate(ttmModal);
            if (val.equals("2")) {
                out.print("<script>alert('Successfully Store Userrole.')</script>");
            } else {
                out.print("<script>alert('" + val + "')</script>");
            }
        
            
        
        
        
        
        
       

    }
            
           
           
            }
            

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserRole</title>
    </head>
    <body>
        <input type="hidden" name="hid1" value="<%=useroleId%>">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Financer Edit</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Admin.jsp?page=A_UserRoleList.jsp">Financer Edit</a>
                                </li>
                                <li class="breadcrumb-item active">Financer Edit
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Admin.jsp?page=A_UserRoleList.jsp"><i class="icon-arrow-left"></i> Back</a></div>
                </div>
            </div>
            <div class="content-body">
                <!-- User Profile -->
                <section class="card">
                    <div class="card-content">
                        <div class="card-body">

                            <div class="form-horizontal form-user-profile row mt-2" action="https://pixinvent.com/demo/crypto-ico-admin/html/ltr/vertical-menu/index.html">
                                <div class="col-12">
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtUserRole" name="txtUserRole" value="<%=userrole%>" required="" autofocus="">
                                        <label for="first-name" >User Role</label>
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="first-name">Status</label>
                                        <select name="dropStatus" id="dropStatus" class="form-control" value="<%=status%>" >
                                            <option value="Active">Active</option>
                                            <option value="Deactive">Deactive</option>
                                        </select>
                                    </fieldset>
                                </div>

                                <div class="col-12 text-right">
                                    <button type="submit" class="btn-gradient-primary my-1" name="btnSave">Save</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </body>
</html>
