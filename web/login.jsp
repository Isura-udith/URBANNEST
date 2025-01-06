<%-- 
    Document   : login
    Created on : Jan 5, 2025, 7:36:21 AM
    Author     : pansi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-white flex items-center justify-center">
    <div class="bg-white p-8 rounded-lg shadow-xl max-w-md w-full">
        <h2 class="text-2xl font-bold mb-6">Login</h2>
        <form id="loginFormElement" class="space-y-4">
            <div>
                <label for="loginEmail" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" id="loginEmail" name="email" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-black focus:border-black">
            </div>
            <div>
                <label for="loginPassword" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" id="loginPassword" name="password" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-black focus:border-black">
            </div>
            <button type="submit" class="w-full bg-black text-white rounded-full py-2 px-4 hover:bg-gray-800 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-black">
                Login
            </button>
        </form>
        <p class="mt-4 text-center text-sm text-gray-600">
            Don't have an account? <a href="/URBANNEST/signup.jsp" class="font-medium text-black hover:underline">Sign up</a>
        </p>
    </div>
     <script src="login.js"></script>
</body>
</html>