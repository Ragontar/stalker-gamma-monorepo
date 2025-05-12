RVR_SS_VER=0.2.0.1

release_rvr_ss:
	mkdir -p _release
	zip -r _release/rvr_storage_system${RVR_SS_VER}.zip rvr_storage_system
