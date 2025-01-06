<%-- 
    Document   : signup
    Created on : Jan 6, 2025, 6:18:43 PM
    Author     : pansi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Dream Homes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-white flex items-center justify-center">
    <div class="bg-white p-8 rounded-lg shadow-xl max-w-md w-full">
        <h2 class="text-2xl font-bold mb-6">Sign Up</h2>
        <form id="signupFormElement" method="post" action="loggin.jsp" class="space-y-4">
            <div>
                <label for="signupName" class="block text-sm font-medium text-gray-700">Full Name</label>
                <input type="text" id="signupName" name="name" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-black focus:border-black">
            </div>
            <div>
                <label for="signupEmail" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" id="signupEmail" name="email" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-black focus:border-black">
            </div>
            <div>
                <label for="signupPassword" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" id="signupPassword" name="password" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-black focus:border-black">
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">User Role</label>
                <div class="mt-2 space-y-2">
                    <div class="flex flex-row items-center">
                        <input type="radio" id="roleClient" name="role" value="client" required class="focus:ring-black h-4 w-4 text-black border-gray-300">
                        <label for="roleClient" class="ml-3 block text-sm font-medium text-gray-700">Client</label>
                    </div>
                    <div class="flex items-center">
                        <input type="radio" id="roleAgent" name="role" value="agent" required class="focus:ring-black h-4 w-4 text-black border-gray-300">
                        <label for="roleAgent" class="ml-3 block text-sm font-medium text-gray-700">Agent</label>
                    </div>
                    <div class="flex items-center">
                        <input type="radio" id="roleAdmin" name="role" value="admin" required class="focus:ring-black h-4 w-4 text-black border-gray-300">
                        <label for="roleAdmin" class="ml-3 block text-sm font-medium text-gray-700">Admin</label>
                    </div>
                </div>
            </div>
            <button type="submit" class="w-full bg-black text-white rounded-full py-2 px-4 hover:bg-gray-800 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-black">
                Sign Up
            </button>
        </form>
        <p class="mt-4 text-center text-sm text-gray-600">
            Already have an account? <a href="login.jsp" class="font-medium text-black hover:underline">Login</a>
        </p>
    </div>
</body>
</html>
