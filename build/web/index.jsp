<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>URBANNEST</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="min-h-screen bg-white">
    <!-- Navigation Bar -->
    <nav class="flex items-center justify-between py-8 px-6">
        <a href="<%= request.getContextPath() %>/index.jsp" class="text-xl font-extrabold">URBANNEST</a>
        <div class="flex items-center gap-8">
            <a href="<%= request.getContextPath() %>/about.jsp" class="text-sm hover:text-gray-600 font-bold">About Us</a>

            <a href="<%= request.getContextPath() %>/Properties.jsp" class="text-sm hover:text-gray-600 font-bold">Properties</a>
            <a href="<%= request.getContextPath() %>/blogs.jsp" class="text-sm hover:text-gray-600 font-bold">Blogs</a>
            <a href="<%= request.getAttribute("loginUrl") != null ? request.getAttribute("loginUrl") : "login.jsp" %>" 
               class="bg-orange-500 text-white rounded-full px-4 py-2 text-sm font-bold">
               Login
            </a>
        </div>
    </nav>

    <!-- Hero Section -->
    <main>
        <section class="grid md:grid-cols-2 gap-8 px-20 py-12">
            <div class="flex flex-col justify-center gap-8">
                <div class="space-y-4">
                    <h1 class="text-[3.8rem] font-bold leading-tight">
                        Find Your Dream <br> Property with
                        <br>
                        <span class="text-5xl font-black">URBANNEST</span>
                    </h1>
                    <p class="text-gray-600 max-w-md">
                        Discover a world of premium properties tailored to your needs.
                        From luxurious apartments to cozy homes, explore top locations,
                        compare prices, and take the first step toward your perfect living space.
                        URBANNEST—where your property search begins and dreams come true.
                    </p>
                </div>
                <div class="flex items-center gap-4">
                    <button class="bg-orange-500 text-white rounded-full px-6 py-2">Discover Now</button>
                </div>
            </div>
            <div class="relative h-[400px] lg:h-[500px]">
                <img src="https://i.ibb.co/JKQfRNq/home.png" alt="Modern home with black roof" class="object-cover rounded-lg w-full h-full">
            </div>
        </section>

        <!-- Property Filter -->
        <section class="px-4">
            <div class="flex flex-col justify-evenly md:flex-row gap-4 p-4 bg-white rounded-xl shadow-lg max-w-4xl mx-auto -mt-8 relative z-10">
                <select class="w-full md:w-[200px] p-2 border rounded-md">
                    <option>Los Angeles, California</option>
                    <option>New York, NY</option>
                    <option>San Francisco, CA</option>
                </select>
                <select class="w-full md:w-[200px] p-2 border rounded-md">
                    <option>Classic Apartment</option>
                    <option>House</option>
                    <option>Condo</option>
                </select>
                <select class="w-full md:w-[200px] p-2 border rounded-md">
                    <option>$6,000 - $12,000 /month</option>
                    <option>$12,000 - $24,000 /month</option>
                    <option>$24,000+ /month</option>
                </select>
                <button class="bg-black text-white rounded-full h-10 w-10 flex items-center justify-center">
                    <i class="bi bi-search text-white text-gray-600" style="width: 1.5rem; height: 1.5rem;"></i>
                </button>
            </div>
        </section>

        <!-- Featured Properties Section -->
        <section id="featured-properties" class="py-16 px-24">
            <div class="max-w-full mx-auto">
                <div class="flex justify-between items-center mb-8">
                    <h2 class="text-5xl self-center font-bold">Featured Properties</h2>
                    <button class="border border-gray-300 rounded-full px-4 py-2">View All</button>
                </div>
                <div id="property-grid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <!-- Properties will be dynamically inserted here -->
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-50 border-t">
        <div class="max-w-7xl mx-auto px-6 py-16">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-12">
                <div class="space-y-6">
                    <a href="<%= request.getContextPath() %>/index.jsp" class="text-xl font-bold">URBANNEST</a>
                    <p class="text-gray-600 text-sm">
                        Discover your dream home with our extensive collection of premium properties.
                        We make finding the perfect property simple and personalized.
                    </p>
                </div>
                <div class="space-y-6">
                    <h3 class="font-semibold text-lg">Quick Links</h3>
                    <nav class="flex flex-col space-y-3">
                        <a href="<%= request.getContextPath() %>/about.jsp" class="text-gray-600 hover:text-black text-sm">About Us</a>
                        <a href="<%= request.getContextPath() %>/Properties.jsp" class="text-gray-600 hover:text-black text-sm">Properties</a>
                        <a href="<%= request.getContextPath() %>/contact.jsp" class="text-gray-600 hover:text-black text-sm">Contact Us</a>
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

    <!-- JavaScript -->
    <script src="<%= request.getContextPath() %>/script.js"></script>
</body>
</html>
