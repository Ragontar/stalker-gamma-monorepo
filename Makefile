RVR_SS_VER=0.3.1

release_rvr_ss:
	mkdir -p _release
	zip -r _release/rvr_storage_system${RVR_SS_VER}.zip rvr_storage_system

tag_release_rvr_ss:
	git tag -a optimized-storage-system.${RVR_SS_VER} -m "Optimized Storage System by rvr [${RVR_SS_VER}]"
	git push origin --tags