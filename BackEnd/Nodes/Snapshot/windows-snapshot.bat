cd C:\Users\username\AppData\Roaming\GridcoinResearch
mkdir snapshot
mkdir snapshot-ready
copy blk0001.dat snapshot
copy peers.dat snapshot
XCOPY C:\Users\username\AppData\Roaming\GridcoinResearch\chainstate C:\Users\username\AppData\Roaming\GridcoinResearch\snapshot /S
XCOPY C:\Users\username\AppData\Roaming\GridcoinResearch\database C:\Users\username\AppData\Roaming\GridcoinResearch\snapshot /S
XCOPY C:\Users\username\AppData\Roaming\GridcoinResearch\chainstate C:\Users\username\AppData\Roaming\GridcoinResearch\snapshot /S
XCOPY C:\Users\username\AppData\Roaming\GridcoinResearch\txleveldb C:\Users\username\AppData\Roaming\GridcoinResearch\snapshot /S

# Create the zip
CScript  C:\Users\username\Desktop\username\zip.vbs  C:\Users\username\AppData\Roaming\GridcoinResearch\snapshot  C:\Users\username\AppData\Roaming\GridcoinResearch\snapshot-ready\windows-snapshot.zip
RMDIR /S /Q C:\Users\username\AppData\Roaming\GridcoinResearch\snapshot