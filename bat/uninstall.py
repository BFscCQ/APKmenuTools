import sys,os,re

def getPackageName(item):
	cmd = 'aapt dump badging "%s"' %item
	
	r = os.popen(cmd).read()
	find = re.findall(r'package: name=\'([\w.]+)\'', r)
	if len(find):
		return find[0]
	else:
		return None

if __name__ == '__main__':
	packageName = getPackageName(sys.argv[1])
	print 'Uninstalling %s' %packageName
	if packageName == None:
		exit(1)
	
	cmd = 'adb uninstall %s' %packageName
	os.system(cmd)