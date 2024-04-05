import sys, os

py_version = sys.version_info[0]
py_version_minor = sys.version_info[1]
version_num = '{}.{}'.format(py_version, py_version_minor)
if py_version  == 3:
    qt_ui_version = '5'
else:
    qt_ui_version = '4'

pyuic_comm = 'pyuic{0}'.format(qt_ui_version)
pyuic_compl1 = 'brabu/gui/brams.ui.qt{0}'.format(qt_ui_version)
pyuic_compl2 = "-o brabu/gui/brams.py"

os_system_line = "{} {} {}".format(pyuic_comm, pyuic_compl1, pyuic_compl2)
print(os_system_line)
os.system(os_system_line)
