package tv.periscope.android.api;

import defpackage.op;
import java.util.Collections;
import java.util.List;
import tv.periscope.model.ac;
import tv.periscope.model.v;

/* compiled from: Twttr */
class AccessVideoResponse extends PsResponse {
    @op(a = "broadcast")
    public PsBroadcast broadcast;
    @op(a = "chat_token")
    public String chatToken;
    @op(a = "cookies")
    public List<v> cookies;
    @op(a = "hls_url")
    public String hlsUrl;
    @op(a = "key")
    public byte[] key;
    @op(a = "life_cycle_token")
    public String lifeCycleToken;
    @op(a = "psp_version")
    public int[] pspVersion;
    @op(a = "replay_url")
    public String replayUrl;
    @op(a = "rtmp_url")
    public String rtmpUrl;
    @op(a = "share_url")
    public String shareUrl;
    @op(a = "type")
    public String type;

    AccessVideoResponse() {
    }

    public ac create() {
        return ac.a(this.chatToken, this.lifeCycleToken, this.rtmpUrl, this.replayUrl, this.hlsUrl, this.broadcast.create(), this.cookies == null ? Collections.emptyList() : this.cookies, this.shareUrl, this.pspVersion, this.type);
    }
}
