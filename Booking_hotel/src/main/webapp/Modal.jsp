<%-- 
    Document   : UpdateAcc
    Created on : Mar 17, 2023, 8:40:12 PM
    Author     : lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<!--modal update--> 
<div class="modal fade" id="updateAcc" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Update Account</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="row g-3" action="UpdateAccount" method="POST">
                    <input type="text" class="form-control" id="id" name="id" value="${user.getID()}" hidden>
                    <div class="col-md-6">
                        <label for="hotel" class="form-label">User Name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa-duotone fa-user fa-lg" style="--fa-secondary-color:gold;"></i></span>
                            <input type="text" class="form-control" id="hotel" name="username" value="${user.username}" readonly>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label for="name" class="form-label">Full Name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa-duotone fa-user fa-lg" style="--fa-primary-color:gold;"></i></span>
                            <input type="text" class="form-control" id="name" name="name" value="${user.fullname}" required>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label for="pass" class="form-label">Password</label>
                        <input type="password" class="form-control" id="pass" name="pass" required>
                    </div>
                    <div class="col-md-6">
                        <label for="re-pass" class="form-label">Re-password</label>
                        <input type="password" class="form-control" id="check" name="re-pass" required>
                    </div>

                    <div class="col-12">
                        <button class="btn btn-outline-primary" type="submit">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
