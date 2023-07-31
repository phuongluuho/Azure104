# Phải Đăng nhập vào Azure Portal
# Hiển thị thông báo yêu cầu nhập tên máy ảo muốn xóa
Write-Host "Bạn vui lòng nhập tên của máy ảo muốn xóa:"
$vmName = Read-Host

# Lấy thông tin của VM
$vm = Get-AzVM -Name $vmName -ResourceGroupName Tên_Nhóm_Tài_Nguyên_Của_VM

# Kiểm tra xem VM có tồn tại hay không
if ($vm -eq $null) {
    Write-Host "Không tìm thấy VM với tên là $vmName."
} else {
    # Xóa VM
    Remove-AzVM -ResourceGroupName Tên_Nhóm_Tài_Nguyên_Của_VM -Name $vmName -Force
    Write-Host "Đã xóa VM $vmName thành công."
}
