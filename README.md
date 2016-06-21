##Installation

```bash
# install appledoc with template
git clone git://github.com/tomaz/appledoc.git
cd appledoc
sudo sh install-appledoc.sh -t default
# install Alcatraz (only support Xcode 7+) for installing VVDocumenter-Xcode
curl -fsSL https://raw.githubusercontent.com/supermarin/Alcatraz/deploy/Scripts/install.sh | sh
```


##Integrate Document Comment in Xcode

1. Restart Xcode and press `⇧⌘9`
2. Install **VVDocumenter-Xcode**
3. Now you can just type `///` to generate comments automatically


##Generate Documentation in Xcode

###There are two ways to generate docsets:

1. **Run appledoc command in Project**
	
	```bash
	appledoc --project-name project --project-company company --company-id com.company --output ~/help --logformat xcode --explicit-crossref --ignore Pods --ignore .m --keep-undocumented-objects --keep-undocumented-members --no-repeat-first-par --no-warn-invalid-crossref --no-warn-undocumented-object --no-warn-undocumented-member --no-warn-empty-description --no-warn-missing-arg --exit-threshold 2 .
	```
	**or drag `generateDocset.sh` into your Project and run**
	
	```bash
	sh generateDocset.sh
	```
	
2. **Integrate into Xcode**
	
	1. Drag `autoGenerateDocset.sh` into your Project folder
	2. Go to **Project Navigator** and choose one of the **Targets**
	2. Click the **+** button nearby and **Add Run Script Phase**
	3. Paste `sh ${SOURCE_ROOT}/autoGenerateDocset.sh` in the box
	4. Build and then docset will be generated
	5. Press `⇧⌘0` to check your documentation

##Reference

- [Documentation by Mattt Thompson](http://nshipster.com/documentation/) (include Guidelines for Writing Objective-C Documentation)
- [onevcat/VVDocumenter-Xcode](https://github.com/onevcat/VVDocumenter-Xcode)
- [tomaz/appledoc](https://github.com/tomaz/appledoc)
- [Auto-generating Docsets for your own iOS project](http://mathijskadijk.nl/post/83900134580/auto-generating-docsets-for-your-own-ios-project)

