# memo
in the form of svo or a2b
password file should be tab separated, each line in the form of site\tusername\tpassword
e.g. github.com\tdfanghu\t*******

# who wraps who among sh, py, js
python (or many languages like c, c++, go, java) can dynamically write and execute shell script using subprocess.call or os.system, but the python part is static.

bash can dynamically write and execute python script (static languages not good for this purpose), but the bash function (really subroutines) is not able to return value (only exit status code) and the bash part is static.

bash exeuting python is the more natural way.
python has more language features.

The best way is a sandwich: bash call python to run bash.






