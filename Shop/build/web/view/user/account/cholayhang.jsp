<%-- 
    Document   : cholayhang
    Created on : Jul 9, 2023, 12:48:26 AM
    Author     : ptkng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <!--Cho Lay Hang:-->
                <div class="tab-pane" id="ChoLayHang">

                    <hr>
                    <form class="form" action="##" method="post" id="registrationForm">
                        <div class="form-group" >
                            <div class="col-xs-12" style = "display: block; background-color: red; height: 100px; margin: 5px 0px;"  >
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>

                        <div class="form-group" >
                            <div class="col-xs-12" style = "display: block; background-color: greenyellow; height: 100px; margin: 5px 0px;"  >
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12" style = "display: block; background-color: yellow; height: 100px; margin: 5px 0px;"  >
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success pull-right" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                            </div>
                        </div>
                    </form>
                </div>
