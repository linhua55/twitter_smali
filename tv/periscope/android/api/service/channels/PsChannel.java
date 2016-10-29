package tv.periscope.android.api.service.channels;

import defpackage.op;
import tv.periscope.model.s;

/* compiled from: Twttr */
public class PsChannel {
    @op(a = "CID")
    public String channelId;
    @op(a = "Description")
    public String description;
    @op(a = "Featured")
    public boolean featured;
    @op(a = "Name")
    public String name;
    @op(a = "NLive")
    public int numberOfLiveStreams;
    @op(a = "NReplay")
    public int numberOfReplays;
    @op(a = "PublicTag")
    public String publicTag;

    public s create() {
        return s.h().a(this.channelId).b(this.name).c(this.description).a(this.numberOfLiveStreams).b(this.numberOfReplays).a(this.featured).d(this.publicTag).a();
    }
}
