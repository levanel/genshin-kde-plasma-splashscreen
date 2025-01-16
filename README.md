# genshin-kde-plasma-splashscreen
genshin look-a-like interactive splash screen for kde plasma
![splash](https://github.com/user-attachments/assets/220b6e91-d37c-4bef-839a-a8042c12e5e8)

This is what will appear after you login to your account 

Download from kde store: https://store.kde.org/p/2185912

# How to Apply (from kde store):
If you are using a kde desktop enviornment, all you have to do is go to the kde store and look for this file, download and apply from the kde splash GUI. Alternatively you can clone this repository and apply it manually.

# How to Apply (Manually):
To apply manually, take the file(if its in a .gz format, them copy the extracted folder which should be named as GenshinSS), copy it and paste the extracted folder at: 

/home/your_user_name/.local/share/plasma/look-and-feel/

This is what will appear when you boot log in to your account.
# Errors you might encounter:
(This issue is rare but IF you encounter it, then this might help..)

When i was making it, my kde splash gui wasnt letting me to press the apply button for some reason. this might be because of:

1 Permissions: Ensure that all files and directories have the correct permissions. You can set the appropriate permissions using the following commands:

>chmod -R 755 ~/.local/share/plasma/look-and-feel/

2 KDE Plasma Cache: Sometimes, KDE Plasma's cache might cause issues. You can try clearing the cache by running: 

>kbuildsycoca5 --noincremental

3 Logs: Check the logs for any errors related to the splash screen. You can find relevant logs using journalctl:

>journalctl -xe | grep plasmashell


# ThankYou
I will continue to make and update more splash screens for kde plasma.  
