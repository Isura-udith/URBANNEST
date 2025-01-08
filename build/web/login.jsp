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
    <style>
        /* Add a subtle gradient background animation */
        body {
            background: linear-gradient(135deg, #ece9e6, #ffffff);
            background-size: 400% 400%;
            animation: gradientBG 10s ease infinite;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
    </style>
</head>
<body class="min-h-screen flex items-center justify-center">
    <!-- Container -->
    <div class="bg-white p-8 rounded-lg shadow-2xl max-w-sm w-full transform transition hover:scale-105">
        <!-- Logo or Branding -->
        <div class="text-center mb-6">
            <img src="https://cdn-icons-png.flaticon.com/512/5087/5087579.png" alt="Logo" class="mx-auto w-20 h-20 rounded-full border border-gray-200 shadow-lg">
            <h1 class="text-2xl font-extrabold text-gray-800 mt-4">URBANNEST</h1>
        </div>

        <!-- Login Form -->
        <h2 class="text-xl font-bold mb-4 text-center text-gray-800">Welcome Back!</h2>
        <form id="loginFormElement" class="space-y-6">
            <!-- Email Field -->
            <div>
                <label for="loginEmail" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" id="loginEmail" name="email" placeholder="Enter your email" required
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 placeholder-gray-400">
            </div>
            <!-- Password Field -->
            <div>
                <label for="loginPassword" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" id="loginPassword" name="password" placeholder="Enter your password" required
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 placeholder-gray-400">
            </div>
            <!-- Submit Button -->
            <button type="submit"
                class="w-full bg-indigo-600 text-white rounded-lg py-2 px-4 text-sm font-semibold hover:bg-indigo-700 focus:outline-none focus:ring-4 focus:ring-indigo-300 transition">
                Login
            </button>
        </form>

        <!-- Forgot Password and Signup -->
        <div class="mt-6 text-center">
            <a href="#" class="text-sm text-indigo-600 hover:underline">Forgot your password?</a>
            <p class="mt-2 text-sm text-gray-600">
                Don't have an account? 
                <a href="/URBANNEST/signup.jsp" class="text-indigo-600 font-medium hover:underline">Sign up</a>
            </p>
        </div>
    </div>

    <!-- Optional Background Illustration -->
    <div class="absolute inset-0 z-[-1]">
        <svg class="absolute top-0 left-0 transform -translate-x-1/2 -translate-y-1/2 opacity-10" width="600" height="600" xmlns="http://www.w3.org/2000/svg">
            <circle cx="300" cy="300" r="300" fill="#4F46E5" />
        </svg>
        <svg class="absolute bottom-0 right-0 transform translate-x-1/2 translate-y-1/2 opacity-10" width="600" height="600" xmlns="http://www.w3.org/2000/svg">
            <circle cx="300" cy="300" r="300" fill="#9333EA" />
        </svg>
    </div>

    <script src="login.js"></script>
</body>
</html>
