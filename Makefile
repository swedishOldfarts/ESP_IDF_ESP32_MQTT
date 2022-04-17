#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := esp32_mqtt_tls

EXTRA_COMPONENT_DIRS = $(IDF_PATH)/examples/common_components/protocol_examples_common ${CMAKE_CURRENT_SOURCE_DIR}/../esp-idf-lib/components

include $(IDF_PATH)/make/project.mk
