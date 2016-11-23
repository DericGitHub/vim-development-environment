import os
import platform
import subprocess
import distutils.spawn
program_required = ["aaa","123","gvim","dasd"]
installation_list = []
def prepare_for_needed_software():
	for program_name in program_required:
		result = detect_xxx_exist(program_name) 
		if result == True:
			print "We have detected %s"%program_name
		else :
			print "We need to install %s"%program_name
			print "Add %s into installation_list"%program_name
			installation_list.append(program_name)
			print "installation_list =%s"%installation_list
def detect_xxx_exist(xxx_needed_install):
	if platform.system() == "Windows":
		print "Only support LINUX"
	elif platform.system() == "Linux":
		a = distutils.spawn.find_executable(xxx_needed_install)
		if a == None:
			print "%s doesn't exist"%xxx_needed_install
			return False
		else :
			print "%s exist"%xxx_needed_install
			return True
	
def main():
	prepare_for_needed_software()

if __name__ == "__main__":
	main();
