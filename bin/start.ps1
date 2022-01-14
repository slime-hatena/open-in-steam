Param(
  [String]$startProcessPath,
  [String]$waitProcessName
)

Add-Type -Assembly System.Windows.Forms;

Write-Host ("startProcessPath: " + $startProcessPath)
Write-Host ("waitProcessName: " + $waitProcessName)

# ゲーム起動
Start-Process $startProcessPath;
$c = 0;
do {
  # 60回プロセスを取得できなかったら起動失敗ということにする
  if (++$c -ge 60) {
      [System.Windows.Forms.MessageBox]::Show("起動を確認できませんでした。", "起動失敗", "OK", "Error");
      exit;
  }
  Start-Sleep -s 2;
  Get-Process -Name $waitProcessName;
} while (!$?);

do {
  # プロセスが取得できなくなったら終了したと見なす
  Start-Sleep -s 5;
  Get-Process -Name $waitProcessName;
} while ($?);
