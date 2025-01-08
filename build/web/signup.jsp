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
    <style>
        body {
            background: linear-gradient(135deg, #fdfbfb, #ebedee);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
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
    <div class="bg-white p-8 rounded-lg shadow-2xl max-w-md w-full transform transition hover:scale-105">
        <!-- Header -->
        <h2 class="text-3xl font-extrabold mb-6 text-center text-gray-800">Create Your Account</h2>
        <p class="text-sm text-center text-gray-600 mb-8">
            Join Dream Homes and start your journey!
        </p>

        <!-- Signup Form -->
        <form id="signupFormElement" method="post" action="loggin.jsp" class="space-y-6">
            <!-- Full Name -->
            <div>
                <label for="signupName" class="block text-sm font-medium text-gray-700">Full Name</label>
                <input type="text" id="signupName" name="name" required placeholder="Enter your full name"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 placeholder-gray-400">
            </div>
            
            <!-- Email -->
            <div>
                <label for="signupEmail" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" id="signupEmail" name="email" required placeholder="Enter your email"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 placeholder-gray-400">
            </div>
            
            <!-- Password -->
            <div>
                <label for="signupPassword" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" id="signupPassword" name="password" required placeholder="Enter a secure password"
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 placeholder-gray-400">
            </div>
            
            <!-- User Role -->
            <div>
                <label class="block text-sm font-medium text-gray-700">User Role</label>
                <div class="mt-2 grid grid-cols-1 gap-2 sm:grid-cols-3">
                    <div class="flex items-center">
                        <input type="radio" id="roleClient" name="role" value="client" required
                            class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
                        <label for="roleClient" class="ml-2 block text-sm font-medium text-gray-700">Client</label>
                    </div>
                    <div class="flex items-center">
                        <input type="radio" id="roleAgent" name="role" value="agent" required
                            class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
                        <label for="roleAgent" class="ml-2 block text-sm font-medium text-gray-700">Agent</label>
                    </div>
                    <div class="flex items-center">
                        <input type="radio" id="roleAdmin" name="role" value="admin" required
                            class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
                        <label for="roleAdmin" class="ml-2 block text-sm font-medium text-gray-700">Admin</label>
                    </div>
                </div>
            </div>
            
            <!-- Submit Button -->
            <button type="submit"
                class="w-full bg-indigo-600 text-white rounded-lg py-2 px-4 text-sm font-semibold hover:bg-indigo-700 focus:outline-none focus:ring-4 focus:ring-indigo-300 transition">
                Sign Up
            </button>
        </form>

        <!-- Footer -->
        <p class="mt-6 text-center text-sm text-gray-600">
            Already have an account? 
            <a href="login.jsp" class="text-indigo-600 font-medium hover:underline">Login</a>
        </p>
    </div>

    <!-- Decorative Background Circles -->
    <div class="absolute inset-0 z-[-1]">
        <svg class="absolute top-0 left-0 transform -translate-x-1/2 -translate-y-1/2 opacity-10" width="600" height="600" xmlns="http://www.w3.org/2000/svg">
            <circle cx="300" cy="300" r="300" fill="#4F46E5" />
        </svg>
        <svg class="absolute bottom-0 right-0 transform translate-x-1/2 translate-y-1/2 opacity-10" width="600" height="600" xmlns="http://www.w3.org/2000/svg">
            <circle cx="300" cy="300" r="300" fill="#9333EA" />
        </svg>
    </div>
</body>
</html>
