# memo
in the form of svo or a2b

## Security rules when writing automation scripts (bash, python)
Password should never be saved at the same place of usage.
Maximum tolerance about saved-down password is: save on a separate (independent), reliable, updatable storage which should be hard for others to access but easy for yourself to access
- own brain is not reliable, therefore not a good place to save passwords
- online device may not be the most secure because network makes access easier compared with physical
- dedicated offline phone with an offline password generator app and 2FA authentication (one for unlock phone, different one for unlock password app) is a good choice
- paper in a hard-to-move, lockable safe is a good choice 
- dedicated usb drive storing an encrypted password file is a good choice, only problem is you need to save the encryption password using one of the above methods
- GNOME keyring is balanced with security and convenience (unlocked at the beginning of session using the same password for session login)

For both paper and electronic devices, migrate to a new one every 5 years for reliability

For encrypting the password file, the openssl utitlity can be useful, recommended cipher: aes-256-cfb/ofb. There is chacha20 but not xchacha20 yet.

# who wraps who among sh, py, js
python (or many languages like c, c++, go, java) can dynamically write and execute shell script using subprocess.call or os.system, but the python part is static.

bash can dynamically write and execute python script (static languages not good for this purpose), but the bash function (really subroutines) is not able to return value (only exit status code) and the bash part is static.

bash exeuting python is the more natural way.
python has more language features.

The best way is a sandwich: bash call python to run bash.

