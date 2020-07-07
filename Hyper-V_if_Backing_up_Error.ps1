# ���� ����� �������� ����� Hyper-V � ��������� Backing up (���������...)
# ������ PowerShell
# ��������� �� ����� ������!
# ��� ������� �� ������ �������� ���� bat � ��������� � ���:
# powershell -ExecutionPolicy Bypass -File C:\Users\LocAdmin\Desktop\Hyper-V_if_Backing_up_Error.ps1

vssadmin list writers
timeout 5

ECHO "Stop-Service vmms"
Stop-Service -Name vmms
timeout 5

ECHO "Kill process if it's stuck"
ECHO "���� ��� ������ ������ ������� �� ������� � ��� ���� �����:"
Get-Process -Name vmms | select Id | kill -Force
timeout 5

ECHO "Start-Service vmms"
Start-Service -Name vmms
ECHO ""
ECHO "End."
timeout 30