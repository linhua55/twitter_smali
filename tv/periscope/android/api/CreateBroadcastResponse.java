package tv.periscope.android.api;

import defpackage.op;
import tv.periscope.model.p;
import tv.periscope.model.w;

/* compiled from: Twttr */
class CreateBroadcastResponse extends PsResponse {
    @op(a = "access_token")
    public String accessToken;
    @op(a = "application")
    public String application;
    @op(a = "broadcast")
    public PsBroadcast broadcast;
    @op(a = "can_share_twitter")
    public boolean canShareTwitter;
    @op(a = "channel")
    public String channel;
    @op(a = "chan_perms")
    public ChannelPermissions channelPerms;
    @op(a = "cipher")
    public String cipher;
    @op(a = "credential")
    public String credential;
    @op(a = "endpoint")
    public String endpoint;
    @op(a = "host")
    public String host;
    @op(a = "key")
    public byte[] key;
    @op(a = "participant_index")
    public int participantIndex;
    @op(a = "port")
    public int port;
    @op(a = "private_port")
    public int privatePort;
    @op(a = "private_protocol")
    public String privateProtocol;
    @op(a = "protocol")
    public String protocol;
    @op(a = "psp_version")
    public int[] pspVersion;
    @op(a = "read_only")
    public boolean readOnly;
    @op(a = "room_id")
    public String roomId;
    @op(a = "should_log")
    public boolean shouldLog;
    @op(a = "stream_name")
    public String streamName;
    @op(a = "thumbnail_upload_url")
    public String thumbnailUploadUrl;
    @op(a = "upload_url")
    public String uploadUrl;

    CreateBroadcastResponse() {
    }

    public w create() {
        int i;
        String str = this.cipher;
        int i2 = this.participantIndex;
        String str2 = this.roomId;
        boolean z = this.shouldLog;
        p create = this.broadcast.create();
        String str3 = this.protocol;
        String str4 = this.host;
        int i3 = this.port;
        String str5 = this.application;
        String str6 = this.streamName;
        String str7 = this.credential;
        String str8 = this.privateProtocol;
        int i4 = this.privatePort;
        String str9 = this.uploadUrl;
        String str10 = this.thumbnailUploadUrl;
        boolean z2 = this.canShareTwitter;
        String str11 = this.accessToken;
        byte[] bArr = this.key;
        String str12 = this.endpoint;
        if (this.channelPerms != null) {
            i = this.channelPerms.chatmanOpts;
        } else {
            i = 0;
        }
        return w.a(str, i2, str2, z, create, str3, str4, i3, str5, str6, str7, str8, i4, str9, str10, z2, str11, bArr, str12, i, this.pspVersion);
    }
}
