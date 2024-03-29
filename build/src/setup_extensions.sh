### INSTALL_EXTENSIONS.SH
#
# A Batch file to install extensions for symphony.
# Most common extensions are included.
# Uncommon all required extensions and then run:
#
# sh build/init/install_extensions.sh from the git root
#
# @author: David Anderson
# @date: 06-06-2012
#
###


### ESSENTIALS EXTENSIONS
#
 
git submodule add git@github.com:symphonists/content_type_mappings.git public_html/extensions/content_type_mappings --recursive
git submodule add git@github.com:symphonycms/debugdevkit.git public_html/extensions/debugdevkit --recursive
git submodule add git@github.com:symphonycms/export_ensemble.git public_html/extensions/export_ensemble --recursive
git submodule add git@github.com:symphonycms/jit_image_manipulation.git public_html/extensions/jit_image_manipulation --recursive
git submodule add git@github.com:symphonycms/maintenance_mode.git public_html/extensions/maintenance_mode --recursive
git submodule add git@github.com:symphonycms/markdown.git public_html/extensions/markdown --recursive
git submodule add git@github.com:symphonycms/profiledevkit.git public_html/extensions/profiledevkit --recursive
git submodule add git@github.com:symphonycms/xssfilter.git public_html/extensions/xssfilter --recursive
git submodule add git@github.com:symphonycms/selectbox_link_field.git public_html/extensions/selectbox_link_field --recursive
git submodule add git@github.com:vlad-ghita/limit_section_entries.git public_html/extensions/limit_section_entries --recursive



git submodule add git@github.com:davjand/database_integration_manager.git public_html/extensions/database_integration_manager --recursive


#
###



### EXTENSIONS THAT PROVIDE SPECIFIC FUNCTIONALITY
#

#git submodule add git@github.com:symphonists/xmlimporter.git public_html/extensions/xmlimporter --recursive
git submodule add git@github.com:kanduvisla/importcsv.git public_html/extensions/importcsv --recursive

#
###


### ADMINISTRATION EXTENSIONS
#
git submodule add git@github.com:Solutions-Nitriques/duplicate_section.git public_html/extensions/duplicate_section --recursive
git submodule add git@github.com:nickdunn/publishfiltering.git public_html/extensions/publishfiltering --recursive
git submodule add git@github.com:alpacaaa/resave_entries.git public_html/extensions/resave_entries --recursive
git submodule add git@github.com:nickdunn/entity_diagram.git public_html/extensions/entity_diagram --recursive
#
###


### USER INTERFACE
#
git submodule add git@github.com:6ui11em/form_select2.git public_html/extensions/form_select2 --recursive
git submodule add git@github.com:vlad-ghita/pretty_photo.git public_html/extensions/pretty_photo --recursive
git submodule add git@github.com:Solutions-Nitriques/save_and_return.git public_html/extensions/save_and_return --recursive
#
###


### DATABASE EXTENSIONS / AUTOMATION / DEPLOYMENT
#
git submodule add git@github.com:nils-werner/dump_db.git public_html/extensions/dump_db --recursive
#
###


### DEVELOPMENTAL WORKFLOW
#
git submodule add git@github.com:ahwayakchih/sortdatasourcebyparam.git public_html/extensions/sortdatasourcebyparam --recursive
#
###

### EVENTS
#
git submodule add git@github.com:brendo/default_event_values.git public_html/extensions/default_event_values --recursive
#
###


### FIELDS
#
git submodule add git@github.com:nickdunn/publish_tabs.git public_html/extensions/publish_tabs --recursive
git submodule add git@github.com:michael-e/uniqueuploadfield.git public_html/extensions/uniqueuploadfield --recursive
git submodule add git@github.com:symphonycms/numberfield.git public_html/extensions/numberfield --recursive
git submodule add git@github.com:hananils/subsectionmanager.git public_html/extensions/subsectionmanager --recursive
git submodule add git@github.com:hananils/datetime.git public_html/extensions/datetime --recursive
git submodule add git@github.com:nickdunn/order_entries.git public_html/extensions/order_entries --recursive
git submodule add git@github.com:symphonists/referencelink.git public_html/extensions/referencelink --recursive
#
###


### TEXT FORMATTERS
#
git submodule add git@github.com:kanduvisla/ckeditor.git public_html/extensions/ckeditor --recursive
#
###




git submodule update --init
