<%--
    Document   : ledgeraccounttype
    Created on : 24 Dec, 2018, 10:42:51 PM
    Author     : ASUS
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modal.terms_taxonomy_masterModal" %>
<%@page import="controller.userrole_masterController" %>
<%@page import="controller.terms_taxonomy_masterController" %>

<%
if(request.getParameter("btnSave")!=null)
{
    terms_taxonomy_masterModal ttmModal = new terms_taxonomy_masterModal();
    ttmModal.setterms(request.getParameter("txtaccount").toUpperCase());
    ttmModal.setterms_id(0);
    ttmModal.setparent_id(Integer.parseInt(request.getParameter("dropAccountType")));
        ttmModal.setdescription("");
        
    ttmModal.setstatus(request.getParameter("dropStatus"));
    ttmModal.settexonomy("AccountType");
     ttmModal.setextra_1("");

        ttmModal.setextra_2("");

        ttmModal.setextra_3("");

    
    terms_taxonomy_masterController ttmController = new terms_taxonomy_masterController();
        String val = ttmController.term_termsTaxonomyInsertUpdate(ttmModal);
        if (val.equals("1")) {
            out.print("<script>alert('Successfully Store Userrole.')</script>");
        } else {
            out.print("<script>alert('Allready Exist This Account Type.')</script>");
        }
}


%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ledger account type</title>
    </head>
    <body>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Add User Role</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Admin.jsp?page=A_UserRoleList.jsp">User Role List</a>
                                </li>
                                <li class="breadcrumb-item active">Add Account type
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
                                    <fieldset class="form-group">
                                        <label for="first-name">Parent Account</label>
                                       
                                        
                                                                          
                                        <select id="dropAccountType" class="form-control " name="dropAccountType">
                                            
                                             <%
                            //terms_taxonomy_masterController ttmController = new terms_taxonomy_masterController();
//                           userrole_masterController userRoleController=new userrole_masterController();
//                            ResultSet rs = userRoleController.userrole_masterGetData();
//
//                            while(rs.next())
//                            {

                            
                        %>
     
                                            <option value="0"> MAIN ACCOUNTS </option>
                                         <%
                                   // }
                                %>
                                        </select>
                                      
                                    </fieldset>
                                </div>
                               
                                <div class="col-12">
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtaccount" name="txtaccount" value="" required="" autofocus="">
                                        <label for="first-name">Account type</label>
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="first-name">Status</label>
                                        <select name="dropStatus" id="dropStatus" class="form-control">
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
