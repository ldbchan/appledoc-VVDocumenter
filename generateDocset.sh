# appledoc Xcode script  

# Start constants
projectName="project";
company="company";
companyID="com.company";
outputPath="~/help";
# End constants

# Start command
/usr/local/bin/appledoc \
--project-name project \
--project-company company \
--company-id com.company \
--output ~/help \
--logformat xcode \
--explicit-crossref \
--ignore Pods \
--ignore .m \
--keep-undocumented-objects \
--keep-undocumented-members \
--no-repeat-first-par \
--no-warn-invalid-crossref \
--no-warn-undocumented-object \
--no-warn-undocumented-member \
--no-warn-empty-description \
--no-warn-missing-arg \
--exit-threshold 2 \
.
# End command
