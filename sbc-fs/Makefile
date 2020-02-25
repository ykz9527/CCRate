fs_ip=192.168.40.112
nfsIP=172.16.36.30
nfsPath=/data/nfs/recordings
nfsType=nfs
fsRecordPath=/mnt/volumes/recordings
# WJ_GCP: fs vars.xml global_codec_prefs
WJ_GCP=PCMA,PCMU,G729
# # WJ_OCP: fs vars.xml outbound_codec_prefs
WJ_OCP=PCMA,PCMU,G729


run:
	docker run -d --network host \
	--env WJ_FS_IP="$(fs_ip)" \
	--env WJ_GCP="$(WJ_GCP)" \
	--env WJ_OCP="$(WJ_OCP)" \
	-v /usr/local/docker-fs/scripts:/usr/local/freeswitch/scripts \
	-v /usr/local/docker-fs/log:/usr/local/freeswitch/log \
	-v /usr/local/docker-fs/recordings:/usr/local/freeswitch/recordings \
	-v /usr/local/default.xml:/usr/local/freeswitch/conf/dialplan/default.xml \
	-v ${PWD}/00_sbc.xml:/usr/local/freeswitch/conf/dialplan/public/00_sbc.xml \
	-v ${PWD}/acl.conf.xml:/usr/local/freeswitch/conf/autoload_configs/acl.conf.xml \
	-v volume_nfs:$(fsRecordPath) \
	--name fs registry:5000/wecloud/fs-sbc:1.4.26-7

