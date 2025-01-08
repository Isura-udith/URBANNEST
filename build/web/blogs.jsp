<%-- 
    Document   : blog
    Created on : Jan 7, 2025
    Author     : pansi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Blog - Dream Homes</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-50 min-h-screen flex flex-col">
        <!-- Header Section -->
        <header class="bg-black text-white py-6">
            <div class="container mx-auto px-4">
                <h1 class="text-4xl font-extrabold text-center text-orange-500">Welcome to Dream Homes Blog</h1>
                <p class="mt-2 text-center text-gray-300 text-lg">
                    Your daily dose of inspiration and ideas for your dream home.
                </p>
            </div>
        </header>

        <!-- Search Bar -->
        <div class="bg-white py-6 shadow-md">
            <div class="container mx-auto px-4 flex flex-col sm:flex-row items-center justify-between">
                <h2 class="text-xl font-bold mb-4 sm:mb-0">Discover Our Latest Blogs</h2>
                <div class="relative">
                    <input type="text" placeholder="Search blogs..." 
                           class="w-full sm:w-80 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500">
                    <button class="absolute right-2 top-2 text-gray-500 hover:text-black">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 18a8 8 0 100-16 8 8 0 000 16zm21 0l-4.35-4.35" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>

        <!-- Blog Section -->
        <main class="container mx-auto px-4 py-10">
            <div class="grid gap-8 sm:grid-cols-2 lg:grid-cols-3">
                <!-- Blog Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-lg transition duration-300">
                    <img src="https://cdn.pixabay.com/photo/2014/12/27/14/37/living-room-581073_960_720.jpg" alt="Blog 1" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-bold mb-2">10 Tips to Style Your Living Room</h3>
                        <p class="text-gray-600 text-sm mb-4">Learn the best tricks to transform your living room into a cozy and stylish space.</p>
                        <a href="#" class="text-indigo-600 font-medium hover:underline">Read More →</a>
                    </div>
                </div>

                <!-- Blog Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-lg transition duration-300">
                    <img src="https://cdn.pixabay.com/photo/2016/04/18/08/50/kitchen-1336160_960_720.jpg" alt="Blog 2" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-bold mb-2">Modern Kitchen Design Ideas</h3>
                        <p class="text-gray-600 text-sm mb-4">Discover the latest trends and ideas to create your dream kitchen.</p>
                        <a href="#" class="text-indigo-600 font-medium hover:underline">Read More →</a>
                    </div>
                </div>

                <!-- Blog Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-lg transition duration-300">
                    <img src="https://cdn.pixabay.com/photo/2018/11/29/09/40/idea-3845389_960_720.jpg" alt="Blog 3" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-bold mb-2">How to Choose the Perfect Paint Color</h3>
                        <p class="text-gray-600 text-sm mb-4">Find out how to pick the best colors to match your home and personality.</p>
                        <a href="#" class="text-indigo-600 font-medium hover:underline">Read More →</a>
                    </div>
                </div>

                <!-- Add more blog cards as needed -->
            </div>
        </main>

        <!-- Pagination -->
        <div class="flex justify-center items-center py-6">
            <button class="px-4 py-2 bg-gray-200 text-gray-800 rounded-lg hover:bg-gray-300 focus:outline-none">Previous</button>
            <span class="mx-4">Page 1 of 5</span>
            <button class="px-4 py-2 bg-gray-200 text-gray-800 rounded-lg hover:bg-gray-300 focus:outline-none">Next</button>
        </div>

        <!-- Footer -->
        <footer class="bg-gray-50 border-t">
            <div class="max-w-7xl mx-auto px-6 py-16">
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-12">
                    <div class="space-y-6">
                        <a href="<%= request.getContextPath()%>/index.jsp" class="text-xl font-bold">URBANNEST</a>
                        <p class="text-gray-600 text-sm">
                            Discover your dream home with our extensive collection of premium properties.
                            We make finding the perfect property simple and personalized.
                        </p>
                    </div>
                    <div class="space-y-6">
                        <h3 class="font-semibold text-lg">Quick Links</h3>
                        <nav class="flex flex-col space-y-3">
                            <a href="<%= request.getContextPath()%>/about.jsp" class="text-gray-600 hover:text-black text-sm">About Us</a>
                            <a href="<%= request.getContextPath()%>/Properties.jsp" class="text-gray-600 hover:text-black text-sm">Properties</a>
                            <a href="<%= request.getContextPath()%>/contact.jsp" class="text-gray-600 hover:text-black text-sm">Contact Us</a>
                        </nav>
                    </div>
                    <div class="space-y-6">
                        <h3 class="font-semibold text-lg">Contact Info</h3>
                        <ul class="space-y-3">
                            <li class="text-gray-600">123 Dream St, City, State</li>
                            <li class="text-gray-600">(123) 456-7890</li>
                            <li class="text-gray-600">info@URBANNEST.com</li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

    </body>
</html>
