function validateForm() {
    let name = document.getElementById("empName").value;
    if (name.trim() === "") {
        alert("Employee name is required.");
        return false;
    }
    return true;
}
