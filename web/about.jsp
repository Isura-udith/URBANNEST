<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us</title>
        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="font-sans bg-gray-50">

        <!-- Navigation Bar -->
        <nav class="flex items-center justify-between py-8 px-6">
            <a href="<%= request.getContextPath()%>/index.jsp" class="text-xl font-extrabold">URBANNEST</a>
            <div class="flex items-center gap-8">
                <a href="<%= request.getContextPath()%>/about.jsp" class="text-sm hover:text-gray-600 font-bold">About Us</a>

                <a href="<%= request.getContextPath()%>/Properties.jsp" class="text-sm hover:text-gray-600 font-bold">Properties</a>
                <a href="<%= request.getContextPath()%>/blogs.jsp" class="text-sm hover:text-gray-600 font-bold">Blogs</a>
                <a href="<%= request.getAttribute("loginUrl") != null ? request.getAttribute("loginUrl") : "login.jsp"%>" 
                   class="bg-orange-500 text-white rounded-full px-4 py-2 text-sm font-bold">
                    Login
                </a>
            </div>
        </nav>

        <!-- About Section -->
        <section class="bg-gray-100 py-12">
            <div class="container mx-auto px-6">
                <div class="text-center mb-12">
                    <h2 class="text-4xl font-bold text-gray-800">About Us</h2>
                    <p class="text-gray-600 mt-4">Discover who we are and what we do.</p>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <!-- Left Column (Text Content) -->
                    <div class="flex flex-col justify-center">
                        <h3 class="text-3xl font-semibold text-gray-800 mb-4">Our Story</h3>
                        <p class="text-gray-600 leading-relaxed mb-6">
                            At <span class="text-blue-500 font-semibold">Our Website</span>, we are passionate about making your experience exceptional. Since our inception, we have been dedicated to delivering the highest quality products, services, and customer satisfaction. Our journey started with a vision to innovate, inspire, and connect people worldwide.
                        </p>
                        <h3 class="text-3xl font-semibold text-gray-800 mb-4">What We Do</h3>
                        <p class="text-gray-600 leading-relaxed">
                            We specialize in providing a wide range of products tailored to meet your needs. From modern infrastructure solutions to essential fixtures and cutting-edge designs, we aim to bring value to your life and business. Collaboration, innovation, and excellence define our approach.
                        </p>
                    </div>
                    <!-- Right Column (Image Gallery) -->
                    <div class="grid grid-cols-2 gap-4">
                        <img src="https://cdn.pixabay.com/photo/2022/01/07/09/51/architecture-6921523_960_720.jpg" alt="About Image 1" class="rounded-lg shadow-md hover:shadow-lg">
                        <img src="https://cdn.pixabay.com/photo/2018/07/13/23/03/planning-3536753_1280.jpg" alt="About Image 2" class="rounded-lg shadow-md hover:shadow-lg">
                        <img src="https://cdn.pixabay.com/photo/2015/12/03/15/07/construction-1075093_960_720.jpg" alt="About Image 3" class="rounded-lg shadow-md hover:shadow-lg">
                        <img src="https://cdn.pixabay.com/photo/2021/07/29/05/31/handshake-6506332_1280.jpg" alt="About Image 4" class="rounded-lg shadow-md hover:shadow-lg">
                    </div>
                </div>
            </div>
        </section>

        <!-- Mission, Vision, and Values Section -->
        <section class="py-12 bg-white">
            <div class="container mx-auto px-6">
                <div class="text-center mb-12">
                    <h3 class="text-4xl font-bold text-gray-800">Our Mission, Vision & Values</h3>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <!-- Mission -->
                    <div class="text-center">
                        <div class="bg-blue-500 text-white w-16 h-16 mx-auto flex items-center justify-center rounded-full shadow-lg mb-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" viewBox="0 0 20 20" fill="currentColor">
                            <path d="M13 7H7v6h6V7z" />
                            <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-1 0A7 7 0 104 10a7 7 0 0013 0z" clip-rule="evenodd" />
                            </svg>
                        </div>
                        <h4 class="text-xl font-semibold text-gray-800">Our Mission</h4>
                        <p class="text-gray-600 mt-2">To empower communities and businesses by providing reliable, innovative, and sustainable solutions.</p>
                    </div>
                    <!-- Vision -->
                    <div class="text-center">
                        <div class="bg-blue-500 text-white w-16 h-16 mx-auto flex items-center justify-center rounded-full shadow-lg mb-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M5.05 3.05a7 7 0 119.9 0 7 7 0 01-9.9 0zM10 9a2 2 0 100-4 2 2 0 000 4zm0 1a3 3 0 00-2.83 2H12.83A3 3 0 0010 10z" clip-rule="evenodd" />
                            </svg>
                        </div>
                        <h4 class="text-xl font-semibold text-gray-800">Our Vision</h4>
                        <p class="text-gray-600 mt-2">To be a global leader in providing transformative solutions that inspire change and growth.</p>
                    </div>
                    <!-- Values -->
                    <div class="text-center">
                        <div class="bg-blue-500 text-white w-16 h-16 mx-auto flex items-center justify-center rounded-full shadow-lg mb-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M5 10a5 5 0 1010 0 5 5 0 00-10 0zm5-3a3 3 0 00-2.83 4H7v2h2v2h2v-2h2v-2h-2A3 3 0 0010 7z" clip-rule="evenodd" />
                            </svg>
                        </div>
                        <h4 class="text-xl font-semibold text-gray-800">Our Values</h4>
                        <p class="text-gray-600 mt-2">Integrity, Innovation, Collaboration, and Excellence guide everything we do.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Team Section -->
        <section class="py-12 bg-gray-100">
            <div class="container mx-auto px-6">
                <div class="text-center mb-12">
                    <h3 class="text-4xl font-bold text-gray-800">Meet Our Team</h3>
                </div>
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-8">
                    <!-- Team Member -->
                    <div class="text-center">
                        <img src="https://via.placeholder.com/200" alt="Team Member 1" class="rounded-full w-32 h-32 mx-auto mb-4">
                        <h4 class="text-xl font-semibold text-gray-800">Pansilu Smaranayaka</h4>
                        <p class="text-gray-600">CEO</p>
                    </div>
                    <!-- Team Member -->
                    <div class="text-center">
                        <img src="https://via.placeholder.com/200" alt="Team Member 2" class="rounded-full w-32 h-32 mx-auto mb-4">
                        <h4 class="text-xl font-semibold text-gray-800">Isura Gunawardhana</h4>
                        <p class="text-gray-600">CTO</p>
                    </div>
                    <!-- Team Member -->
                    <div class="text-center">
                        <img src="https://via.placeholder.com/200" alt="Team Member 3" class="rounded-full w-32 h-32 mx-auto mb-4">
                        <h4 class="text-xl font-semibold text-gray-800">Dilki Nimehika</h4>
                        <p class="text-gray-600">Marketing Head</p>
                    </div>
                    <!-- Team Member -->
                    <div class="text-center">
                        <img src="https://via.placeholder.com/200" alt="Team Member 4" class="rounded-full w-32 h-32 mx-auto mb-4">
                        <h4 class="text-xl font-semibold text-gray-800">Dulani Hemachandra</h4>
                        <p class="text-gray-600">Operations Manager</p>
                    </div>
                </div>
            </div>
        </section>

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
