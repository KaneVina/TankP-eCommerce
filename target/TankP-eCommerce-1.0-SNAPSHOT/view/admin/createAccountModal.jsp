<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Advanced Management Modals</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/modalstyle.css">
    </head>
    <body class="bg-gray-100 font-sans p-8">
        <div class="max-w-4xl mx-auto text-center">
            <h1 class="text-3xl font-bold mb-4">Modal Trigger Panel</h1>
            <p class="text-gray-600 mb-8">
                Click buttons below to open the corresponding modals. This demonstrates
                how to trigger them from any element.
            </p>

            <div class="grid grid-cols-2 md:grid-cols-3 gap-4">
                <!-- Account Modals -->
                <button
                    onclick="openTpModal('accountCreateModal')"
                    class="bg-green-500 text-white font-bold py-2 px-4 rounded-lg shadow-md hover:bg-green-600 transition-colors"
                    >
                    Create Account
                </button>
                <button
                    onclick="openTpModal('accountUpdateModal')"
                    class="bg-blue-500 text-white font-bold py-2 px-4 rounded-lg shadow-md hover:bg-blue-600 transition-colors"
                    >
                    Update Account
                </button>

                <!-- Product Modals -->
                <button
                    onclick="openTpModal('productCreateModal')"
                    class="bg-green-500 text-white font-bold py-2 px-4 rounded-lg shadow-md hover:bg-green-600 transition-colors"
                    >
                    Create Product
                </button>
                <button
                    onclick="openTpModal('productUpdateModal')"
                    class="bg-blue-500 text-white font-bold py-2 px-4 rounded-lg shadow-md hover:bg-blue-600 transition-colors"
                    >
                    Update Product
                </button>

                <!-- Order Modals -->
                <button
                    onclick="openTpModal('orderCreateModal')"
                    class="bg-green-500 text-white font-bold py-2 px-4 rounded-lg shadow-md hover:bg-green-600 transition-colors"
                    >
                    Create Order
                </button>
                <button
                    onclick="openTpModal('orderUpdateModal')"
                    class="bg-blue-500 text-white font-bold py-2 px-4 rounded-lg shadow-md hover:bg-blue-600 transition-colors"
                    >
                    Update Order
                </button>
            </div>
        </div>

        <!-- MODAL BACKDROP -->
        <div id="tp-modal-backdrop" class="tp-modal-backdrop fixed inset-0 bg-black bg-opacity-50 z-40 hidden"></div>

        <!-- ================================================================= -->
        <!--                       ACCOUNT MODALS                              -->
        <!-- ================================================================= -->

        <!-- Account Create Modal -->
        <div id="accountCreateModal" class="fixed inset-0 z-50 flex items-center justify-center p-4 hidden">
            <div class="tp-modal-container bg-white rounded-xl shadow-2xl w-full max-w-4xl overflow-hidden">
                <form id="accountCreateForm">
                    <div class="tp-modal-header-create p-5 flex justify-between items-center bg-gray-50">
                        <h2 class="text-2xl font-bold text-gray-800">
                            <i class="bi bi-person-plus-fill text-green-500"></i> CREATE ACCOUNT</h2>
                        <button type="button" onclick="closeTpModal()" class="text-gray-400 hover:text-gray-600 text-3xl"> &times;</button>
                    </div>
                    <div class="tp-modal-body p-6 space-y-6 max-h-[70vh] overflow-y-auto">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="relative">
                                <i class="bi bi-person absolute top-3 left-3 text-gray-400"></i><input type="text" placeholder="First Name" class="w-full pl-10 p-2 border rounded-md"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-person absolute top-3 left-3 text-gray-400"></i>
                                <input type="text" placeholder="Last Name"
                                       class="w-full pl-10 p-2 border rounded-md"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-person-badge absolute top-3 left-3 text-gray-400"></i>
                                <input type="text" placeholder="Username" class="w-full pl-10 p-2 border rounded-md"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-gender-ambiguous absolute top-3 left-3 text-gray-400"></i>
                                <select class="w-full pl-10 p-2 border rounded-md">
                                    <option>Select Gender</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                    <option>Other</option>
                                </select>
                            </div>
                            <div class="relative">
                                <i class="bi bi-envelope absolute top-3 left-3 text-gray-400"></i>
                                <input type="email" placeholder="Email" class="w-full pl-10 p-2 border rounded-md"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-telephone absolute top-3 left-3 text-gray-400"></i>
                                <input type="tel" placeholder="Phone" class="w-full pl-10 p-2 border rounded-md"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-calendar-event absolute top-3 left-3 text-gray-400"></i>
                                <input type="date" placeholder="Birthday" class="w-full pl-10 p-2 border rounded-md text-gray-500"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-shield-check absolute top-3 left-3 text-gray-400"></i>
                                <select class="w-full pl-10 p-2 border rounded-md">
                                    <option>Select Role</option>
                                    <option>Admin</option>
                                    <option>User</option>
                                </select>
                            </div>
                            <div class="relative md:col-span-2">
                                <i class="bi bi-key absolute top-3 left-3 text-gray-400"></i>
                                <input type="password" placeholder="Password" class="w-full pl-10 p-2 border rounded-md"/>
                            </div>
                        </div>
                        <div>
                            <h3 class="font-semibold text-lg mb-2 text-gray-700">
                                Address List
                            </h3>
                            <div class="space-y-3 p-3 bg-gray-50 rounded-lg border">
                                <div class="p-3 bg-white rounded-md border flex items-start justify-between">
                                    <div>
                                        <p class="font-medium">
                                            123 Bach Dang, Ward 2, Tan Binh District, Ho Chi Minh City
                                        </p>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="bg-green-100 text-green-800 text-xs font-semibold px-2.5 py-0.5 rounded-full">Default</span>
                                        <input type="radio" name="isDefault" class="form-radio h-5 w-5 text-blue-600" checked/>
                                    </div>
                                </div>
                                <div class="p-3 bg-white rounded-md border flex items-start justify-between">
                                    <div>
                                        <p class="font-medium">
                                            456 Cong Hoa, Ward 13, Tan Binh District, Ho Chi Minh City
                                        </p>
                                    </div>
                                    <input type="radio" name="isDefault" class="form-radio h-5 w-5 text-blue-600"/>
                                </div>
                            </div>
                            <button type="button" class="mt-2 text-blue-500 hover:text-blue-700 text-sm font-medium">
                                <i class="bi bi-plus-circle"></i> Add New Address
                            </button>
                        </div>
                        <div>
                            <button type="button" class="w-full text-blue-600 font-semibold py-2 px-4 rounded-lg border-2 border-blue-500 hover:bg-blue-50 transition-colors">
                                <i class="bi bi-receipt"></i> View Order History
                            </button>
                        </div>
                    </div>
                    <div class="p-4 bg-gray-50 flex justify-between items-center border-t">
                        <p class="text-xs text-gray-500">Powered by TankP</p>
                        <div class="flex space-x-3">
                            <button type="button" class="px-4 py-2 bg-red-600 text-white rounded-md font-semibold hover:bg-red-700 transition-colors shadow">
                                <i class="bi bi-trash3"></i> Delete
                            </button>
                            <button type="reset">
                                <i class="bi bi-arrow-counterclockwise"></i> Reset
                            </button>
                            <button type="submit" class="px-6 py-2 bg-green-600 text-white rounded-md font-semibold hover:bg-green-700 transition-colors shadow">
                                <i class="bi bi-check-circle"></i> Create
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div id="accountUpdateModal" class="fixed inset-0 z-50 flex items-center justify-center p-4 hidden">
            <div class="tp-modal-container bg-white rounded-xl shadow-2xl w-full max-w-4xl overflow-hidden">
                <form id="accountUpdateForm">
                    <div class="tp-modal-header-border-update p-5 flex justify-between items-center bg-gray-50">
                        <h2 class="text-2xl font-bold text-gray-800">
                            <i class="bi bi-person-gear text-blue-500"></i> Update Account
                        </h2>
                        <button type="button" onclick="closeTpModal()" class="text-gray-400 hover:text-gray-600 text-3xl"> &times;
                        </button>
                    </div>
                    <div class="tp-modal-body p-6 space-y-6 max-h-[70vh] overflow-y-auto">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="relative">
                                <i class="bi bi-person absolute top-3 left-3 text-gray-400"></i>
                                <input type="text" placeholder="First Name" class="w-full pl-10 p-2 border rounded-md" value="John"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-person absolute top-3 left-3 text-gray-400"></i>
                                <input type="text" placeholder="Last Name" class="w-full pl-10 p-2 border rounded-md" value="Doe"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-person-badge absolute top-3 left-3 text-gray-400"></i>
                                <input type="text" placeholder="Username" class="w-full pl-10 p-2 border rounded-md" value="johndoe"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-gender-ambiguous absolute top-3 left-3 text-gray-400"></i>
                                <select class="w-full pl-10 p-2 border rounded-md">
                                    <option>Select Gender</option>
                                    <option selected>Male</option>
                                    <option>Female</option>
                                    <option>Other</option>
                                </select>
                            </div>
                            <div class="relative">
                                <i class="bi bi-envelope absolute top-3 left-3 text-gray-40></i>
                                   <input type="email" placeholder="Email" class="w-full pl-10 p-2 border rounded-md" value="john.doe@tankp.com"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-telephone absolute top-3 left-3 text-gray-400"></i>
                                <input type="tel" placeholder="Phone" class="w-full pl-10 p-2 border rounded-md" value="0987654321"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-calendar-event absolute top-3 left-3 text-gray-400"></i>
                                <input type="date" placeholder="Birthday" class="w-full pl-10 p-2 border rounded-md text-gray-500" value="1990-01-01"/>
                            </div>
                            <div class="relative">
                                <i class="bi bi-shield-check absolute top-3 left-3 text-gray-400"></i>
                                <select class="w-full pl-10 p-2 border rounded-md">
                                    <option>Select Role</option>
                                    <option>Admin</option>
                                    <option selected>User</option>
                                </select>
                            </div>
                            <div class="relative md:col-span-2"><i class="bi bi-key absolute top-3 left-3 text-gray-400"></i>
                                <input type="password" placeholder="New Password (optional)" class="w-full pl-10 p-2 border rounded-md"/>
                            </div>
                        </div>
                        <div>
                            <h3 class="font-semibold text-lg mb-2 text-gray-700">Address List
                            </h3>
                            <div class="space-y-3 p-3 bg-gray-50 rounded-lg border">
                                <div class="p-3 bg-white rounded-md border flex items-start justify-between">
                                    <div>
                                        <p class="font-medium">
                                            123 Bach Dang, Ward 2, Tan Binh District, Ho Chi Minh City
                                        </p>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="bg-green-100 text-green-800 text-xs font-semibold px-2.5 py-0.5 rounded-full">Default</span>
                                        <input type="radio" name="isDefaultUpdate" class="form-radio h-5 w-5 text-blue-600" checked/>
                                    </div>
                                </div>
                                <div class="p-3 bg-white rounded-md border flex items-start justify-between">
                                    <div>
                                        <p class="font-medium">
                                            456 Cong Hoa, Ward 13, Tan Binh District, Ho Chi Minh City
                                        </p>
                                    </div>
                                    <input type="radio" name="isDefaultUpdate" class="form-radio h-5 w-5 text-blue-600"/>
                                </div>
                            </div>
                            <button type="button" class="mt-2 text-blue-500 hover:text-blue-700 text-sm font-medium">
                                <i class="bi bi-plus-circle"></i> Add New Address
                            </button>
                        </div>
                        <div>
                            <button type="button" class="w-full text-blue-600 font-semibold py-2 px-4 rounded-lg border-2 border-blue-500 hover:bg-blue-50 transition-colors">
                                <i class="bi bi-receipt"></i> View Order History
                            </button>
                        </div>
                    </div>
                    <div class="p-4 bg-gray-50 flex justify-between items-center border-t">
                        <p class="text-xs text-gray-500">Powered by TankP</p>
                        <div class="flex space-x-3">
                            <button type="button" class="px-4 py-2 bg-red-600 text-white rounded-md font-semibold hover:bg-red-700 transition-colors shadow">
                                <i class="bi bi-trash3"></i> Delete
                            </button>
                            <button type="button" onclick="document.getElementById('accountUpdateForm').reset();" class="px-4 py-2 bg-yellow-500 text-white rounded-md font-semibold hover:bg-yellow-600 transition-colors shadow">
                                <i class="bi bi-arrow-counterclockwise"></i> Reset
                            </button>
                            <button type="submit" class="px-6 py-2 bg-blue-600 text-white rounded-md font-semibold hover:bg-blue-700 transition-colors shadow">
                                <i class="bi bi-check-circle"></i> Update
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- ================================================================= -->
        <!--                       PRODUCT MODALS                              -->
        <!-- ================================================================= -->

        <!-- Product Create Modal -->
        <div id="productCreateModal" class="fixed inset-0 z-50 flex items-center justify-center p-4 hidden">
            <div class="tp-modal-container bg-white rounded-xl shadow-2xl w-full max-w-6xl overflow-hidden">
                <form id="productCreateForm">
                    <div class="tp-modal-header-create p-5 flex justify-between items-center bg-gray-50">
                        <h2 class="text-2xl font-bold text-gray-800">
                            <i class="bi bi-box-seam text-green-500"></i> Create Product
                        </h2>
                        <button
                            type="button"
                            onclick="closeTpModal()"
                            class="text-gray-400 hover:text-gray-600 text-3xl"
                            >
                            &times;
                        </button>
                    </div>
                    <!-- Body -->
                    <div class="tp-modal-body p-6 max-h-[70vh] overflow-y-auto">
                        <div class="grid grid-cols-12 gap-6">
                            <!-- Left Column -->
                            <div class="col-span-12 lg:col-span-7 space-y-4">
                                <div class="relative">
                                    <i
                                        class="bi bi-card-text absolute top-3 left-3 text-gray-400"
                                        ></i
                                    ><input
                                        type="text"
                                        placeholder="Product Name"
                                        class="w-full pl-10 p-2 border rounded-md"
                                        />
                                </div>
                                <div class="relative">
                                    <i class="bi bi-tag absolute top-3 left-3 text-gray-400"></i
                                    ><select class="w-full pl-10 p-2 border rounded-md">
                                        <option>Select Category</option>
                                        <option>T-Shirt</option>
                                        <option>Jacket</option>
                                    </select>
                                </div>
                                <div>
                                    <textarea
                                        placeholder="Description"
                                        rows="8"
                                        class="w-full p-2 border rounded-md"
                                        ></textarea>
                                </div>
                                <!-- Image Upload -->
                                <div class="p-4 bg-gray-50 rounded-lg border">
                                    <h3 class="font-semibold mb-2">Product Images</h3>
                                    <input
                                        type="file"
                                        multiple
                                        class="text-sm w-full file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100"
                                        />
                                    <div class="relative mt-2">
                                        <i
                                            class="bi bi-link-45deg absolute top-3 left-3 text-gray-400"
                                            ></i
                                        ><input
                                            type="text"
                                            placeholder="Or paste image URL"
                                            class="w-full pl-10 p-2 border rounded-md"
                                            />
                                    </div>
                                </div>
                                <!-- Featured -->
                                <div class="p-4 bg-gray-50 rounded-lg border">
                                    <label
                                        class="flex items-center space-x-2 font-semibold cursor-pointer"
                                        >
                                        <input
                                            type="checkbox"
                                            class="h-5 w-5 rounded border-gray-300 text-blue-600 focus:ring-blue-500"
                                            />
                                        <span>Mark as Featured Product</span>
                                    </label>
                                </div>
                            </div>
                            <!-- Right Column -->
                            <div class="col-span-12 lg:col-span-5 space-y-4">
                                <!-- Product Variants -->
                                <div class="p-4 bg-gray-50 rounded-lg border space-y-4">
                                    <div>
                                        <h3 class="font-semibold text-gray-800 mb-2">
                                            Product Variants
                                        </h3>
                                        <div class="flex items-center gap-2">
                                            <select
                                                id="tp-color-select-create"
                                                class="w-full p-2 border rounded-md bg-white"
                                                >
                                                <!-- Color options will be populated by JS -->
                                            </select>
                                            <button
                                                type="button"
                                                id="tp-add-color-btn-create"
                                                class="px-4 py-2 bg-blue-600 text-white rounded-md font-semibold hover:bg-blue-700 transition-colors shadow whitespace-nowrap"
                                                >
                                                <i class="bi bi-plus-lg"></i> Add
                                            </button>
                                        </div>
                                    </div>
                                    <div id="tp-variants-table-section-create">
                                        <div class="border-t pt-4">
                                            <h4 class="font-semibold text-gray-800 mb-2">
                                                Manage Variants
                                            </h4>
                                            <div class="overflow-x-auto">
                                                <table class="w-full text-sm text-left">
                                                    <thead
                                                        class="bg-gray-200 text-gray-600 uppercase text-xs"
                                                        >
                                                        <tr>
                                                            <th class="p-2">Color</th>
                                                            <th class="p-2 w-1/3">Sizes</th>
                                                            <th class="p-2">Old Price</th>
                                                            <th class="p-2">New Price</th>
                                                            <th class="p-2">Qty</th>
                                                            <th class="p-2"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tp-variants-tbody-create" class="divide-y">
                                                        <!-- Variant rows will be here -->
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div
                                                class="mt-4 pt-3 border-t flex justify-between font-bold text-gray-700"
                                                >
                                                <span>Total Quantity:</span>
                                                <span id="tp-total-quantity-create">0</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Footer -->
                    <div
                        class="p-4 bg-gray-50 flex justify-between items-center border-t"
                        >
                        <p class="text-xs text-gray-500">Powered by TankP</p>
                        <div class="flex space-x-3">
                            <button
                                type="button"
                                class="px-4 py-2 bg-red-600 text-white rounded-md font-semibold hover:bg-red-700 transition-colors shadow"
                                >
                                <i class="bi bi-trash3"></i> Delete
                            </button>
                            <button
                                type="reset"
                                class="px-4 py-2 bg-yellow-500 text-white rounded-md font-semibold hover:bg-yellow-600 transition-colors shadow"
                                >
                                <i class="bi bi-arrow-counterclockwise"></i> Reset
                            </button>
                            <button
                                type="submit"
                                class="px-6 py-2 bg-green-600 text-white rounded-md font-semibold hover:bg-green-700 transition-colors shadow"
                                >
                                <i class="bi bi-check-circle"></i> Create
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Product Update Modal -->
        <div
            id="productUpdateModal"
            class="fixed inset-0 z-50 flex items-center justify-center p-4 hidden"
            >
            <div
                class="tp-modal-container bg-white rounded-xl shadow-2xl w-full max-w-6xl overflow-hidden"
                >
                <form id="productUpdateForm">
                    <!-- Header -->
                    <div
                        class="tp-modal-header-border-update p-5 flex justify-between items-center bg-gray-50"
                        >
                        <h2 class="text-2xl font-bold text-gray-800">
                            <i class="bi bi-pencil-square text-blue-500"></i> Update Product
                        </h2>
                        <button
                            type="button"
                            onclick="closeTpModal()"
                            class="text-gray-400 hover:text-gray-600 text-3xl"
                            >
                            &times;
                        </button>
                    </div>
                    <!-- Body -->
                    <div class="tp-modal-body p-6 max-h-[70vh] overflow-y-auto">
                        <div class="grid grid-cols-12 gap-6">
                            <!-- Left Column -->
                            <div class="col-span-12 lg:col-span-7 space-y-4">
                                <div class="relative">
                                    <i
                                        class="bi bi-card-text absolute top-3 left-3 text-gray-400"
                                        ></i
                                    ><input
                                        type="text"
                                        placeholder="Product Name"
                                        class="w-full pl-10 p-2 border rounded-md"
                                        value="Premium Cotton T-Shirt"
                                        />
                                </div>
                                <div class="relative">
                                    <i class="bi bi-tag absolute top-3 left-3 text-gray-400"></i
                                    ><select class="w-full pl-10 p-2 border rounded-md">
                                        <option>Select Category</option>
                                        <option selected>T-Shirt</option>
                                        <option>Jacket</option>
                                    </select>
                                </div>
                                <div>
                                    <textarea
                                        placeholder="Description"
                                        rows="8"
                                        class="w-full p-2 border rounded-md"
                                        >
                                        A high-quality, pre-shrunk 100% cotton t-shirt.</textarea
                                    >
                                </div>
                                <!-- Image Upload -->
                                <div class="p-4 bg-gray-50 rounded-lg border">
                                    <h3 class="font-semibold mb-2">Product Images</h3>
                                    <input
                                        type="file"
                                        multiple
                                        class="text-sm w-full file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100"
                                        />
                                    <div class="relative mt-2">
                                        <i
                                            class="bi bi-link-45deg absolute top-3 left-3 text-gray-400"
                                            ></i
                                        ><input
                                            type="text"
                                            placeholder="Or paste image URL"
                                            class="w-full pl-10 p-2 border rounded-md"
                                            />
                                    </div>
                                </div>
                                <!-- Featured -->
                                <div class="p-4 bg-gray-50 rounded-lg border">
                                    <label
                                        class="flex items-center space-x-2 font-semibold cursor-pointer"
                                        >
                                        <input
                                            type="checkbox"
                                            class="h-5 w-5 rounded border-gray-300 text-blue-600 focus:ring-blue-500"
                                            checked
                                            />
                                        <span>Mark as Featured Product</span>
                                    </label>
                                </div>
                            </div>
                            <!-- Right Column -->
                            <div class="col-span-12 lg:col-span-5 space-y-4">
                                <!-- Product Variants -->
                                <div class="p-4 bg-gray-50 rounded-lg border space-y-4">
                                    <div>
                                        <h3 class="font-semibold text-gray-800 mb-2">
                                            Product Variants
                                        </h3>
                                        <div class="flex items-center gap-2">
                                            <select
                                                id="tp-color-select-update"
                                                class="w-full p-2 border rounded-md bg-white"
                                                >
                                                <!-- Color options will be populated by JS -->
                                            </select>
                                            <button
                                                type="button"
                                                id="tp-add-color-btn-update"
                                                class="px-4 py-2 bg-blue-600 text-white rounded-md font-semibold hover:bg-blue-700 transition-colors shadow whitespace-nowrap"
                                                >
                                                <i class="bi bi-plus-lg"></i> Add
                                            </button>
                                        </div>
                                    </div>
                                    <div id="tp-variants-table-section-update">
                                        <div class="border-t pt-4">
                                            <h4 class="font-semibold text-gray-800 mb-2">
                                                Manage Variants
                                            </h4>
                                            <div class="overflow-x-auto">
                                                <table class="w-full text-sm text-left">
                                                    <thead
                                                        class="bg-gray-200 text-gray-600 uppercase text-xs"
                                                        >
                                                        <tr>
                                                            <th class="p-2">Color</th>
                                                            <th class="p-2 w-1/3">Sizes</th>
                                                            <th class="p-2">Old Price</th>
                                                            <th class="p-2">New Price</th>
                                                            <th class="p-2">Qty</th>
                                                            <th class="p-2"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tp-variants-tbody-update" class="divide-y">
                                                        <!-- Pre-filled variant rows for update modal -->
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div
                                                class="mt-4 pt-3 border-t flex justify-between font-bold text-gray-700"
                                                >
                                                <span>Total Quantity:</span>
                                                <span id="tp-total-quantity-update">0</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Footer -->
                    <div
                        class="p-4 bg-gray-50 flex justify-between items-center border-t"
                        >
                        <p class="text-xs text-gray-500">Powered by TankP</p>
                        <div class="flex space-x-3">
                            <button
                                type="button"
                                class="px-4 py-2 bg-red-600 text-white rounded-md font-semibold hover:bg-red-700 transition-colors shadow"
                                >
                                <i class="bi bi-trash3"></i> Delete
                            </button>
                            <button
                                type="reset"
                                class="px-4 py-2 bg-yellow-500 text-white rounded-md font-semibold hover:bg-yellow-600 transition-colors shadow"
                                >
                                <i class="bi bi-arrow-counterclockwise"></i> Reset
                            </button>
                            <button
                                type="submit"
                                class="px-6 py-2 bg-blue-600 text-white rounded-md font-semibold hover:bg-blue-700 transition-colors shadow"
                                >
                                <i class="bi bi-check-circle"></i> Update
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- ================================================================= -->
        <!--                       ORDER MODALS                                -->
        <!-- ================================================================= -->

        <!-- Order Update Modal -->
        <div
            id="orderUpdateModal"
            class="fixed inset-0 z-50 flex items-center justify-center p-4 hidden"
            >
            <div
                class="tp-modal-container bg-white rounded-xl shadow-2xl w-full max-w-4xl overflow-hidden"
                >
                <form id="orderUpdateForm">
                    <!-- Header -->
                    <div
                        class="tp-modal-header-border-update p-5 flex justify-between items-center bg-gray-50"
                        >
                        <h2 class="text-2xl font-bold text-gray-800">
                            <i class="bi bi-cart-check text-blue-500"></i> Manage Order
                        </h2>
                        <button
                            type="button"
                            onclick="closeTpModal()"
                            class="text-gray-400 hover:text-gray-600 text-3xl"
                            >
                            &times;
                        </button>
                    </div>
                    <!-- Body -->
                    <div class="tp-modal-body p-6 space-y-4 max-h-[70vh] overflow-y-auto">
                        <div class="p-4 border rounded-lg bg-gray-50">
                            <p class="font-bold text-lg">
                                Order ID:
                                <span class="font-normal text-red-600">#ABC-12345</span>
                            </p>
                            <p><strong>Order Date:</strong> 2025-10-18</p>
                        </div>
                        <!-- Product Info -->
                        <div>
                            <h3 class="font-semibold text-lg mb-2">Product Information</h3>
                            <div class="border rounded-lg p-4 space-y-2">
                                <p><strong>Product Name:</strong> Premium Cotton T-Shirt</p>
                                <p>
                                    <strong>Details:</strong> Color: Black, Size: L, Quantity: 2
                                </p>
                                <p><strong>Price:</strong> $25.00 x 2 = $50.00</p>
                            </div>
                        </div>
                        <!-- Payment & Address -->
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="border rounded-lg p-4">
                                <h3 class="font-semibold text-lg mb-2">Payment Details</h3>
                                <p>
                                    <strong>Total Payment:</strong>
                                    <span class="font-bold text-xl text-green-600">$50.00</span>
                                </p>
                                <p><strong>Invoice Request:</strong> Yes</p>
                            </div>
                            <div class="border rounded-lg p-4">
                                <h3 class="font-semibold text-lg mb-2">Shipping Address</h3>
                                <p>
                                    123 Bach Dang, Ward 2, Tan Binh District, Ho Chi Minh City
                                </p>
                            </div>
                        </div>
                        <!-- Status -->
                        <div>
                            <label for="orderStatus" class="font-semibold text-lg mb-2 block"
                                   >Order Status</label
                            >
                            <div class="relative">
                                <i class="bi bi-truck absolute top-3 left-3 text-gray-400"></i>
                                <select
                                    id="orderStatus"
                                    class="w-full pl-10 p-2 border rounded-md bg-white"
                                    >
                                    <option value="processing" selected>Processing</option>
                                    <option value="completed">Completed</option>
                                    <option value="cancelled">Cancelled</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- Footer (No Delete Button for Order) -->
                    <div
                        class="p-4 bg-gray-50 flex justify-between items-center border-t"
                        >
                        <p class="text-xs text-gray-500">Powered by TankP</p>
                        <div class="flex space-x-3">
                            <button
                                type="button"
                                onclick="document.getElementById('orderUpdateForm').reset();"
                                class="px-4 py-2 bg-yellow-500 text-white rounded-md font-semibold hover:bg-yellow-600 transition-colors shadow"
                                >
                                <i class="bi bi-arrow-counterclockwise"></i> Reset
                            </button>
                            <button
                                type="submit"
                                class="px-6 py-2 bg-blue-600 text-white rounded-md font-semibold hover:bg-blue-700 transition-colors shadow"
                                >
                                <i class="bi bi-check-circle"></i> Update
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/assets/js/modalscript.js"></script>
    </body>
</html>
