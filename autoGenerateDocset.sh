# appledoc Xcode script  

# Start constants  
company="company";
companyID="com.company";
outputPath="~/help";
# End constants

# Start command
/usr/local/bin/appledoc \
--project-name "${PROJECT_NAME}" \
--project-company "${company}" \
--company-id "${companyID}" \
--output "${outputPath}" \
--logformat xcode \
--explicit-crossref \
--ignore .m \
--ignore Pods \
--keep-undocumented-objects \
--keep-undocumented-members \
--no-repeat-first-par \
--no-warn-invalid-crossref \
--no-warn-undocumented-object \
--no-warn-undocumented-member \
--no-warn-empty-description \
--no-warn-missing-arg \
--exit-threshold 2 \
"${PROJECT_DIR}"
# End command
