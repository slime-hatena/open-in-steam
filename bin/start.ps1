Param(
  [String]$startProcessPath,
  [String]$waitProcessName
)

Add-Type -Assembly System.Windows.Forms;

Write-Host ("startProcessPath: " + $startProcessPath)
Write-Host ("waitProcessName: " + $waitProcessName)

# �Q�[���N��
Start-Process $startProcessPath;
$c = 0;
do {
  # 60��v���Z�X���擾�ł��Ȃ�������N�����s�Ƃ������Ƃɂ���
  if (++$c -ge 60) {
      [System.Windows.Forms.MessageBox]::Show("�N�����m�F�ł��܂���ł����B", "�N�����s", "OK", "Error");
      exit;
  }
  Start-Sleep -s 2;
  Get-Process -Name $waitProcessName;
} while (!$?);

do {
  # �v���Z�X���擾�ł��Ȃ��Ȃ�����I�������ƌ��Ȃ�
  Start-Sleep -s 5;
  Get-Process -Name $waitProcessName;
} while ($?);
