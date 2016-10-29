package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class EndReplayViewedRequest extends PsRequest {
    @op(a = "broadcast_id")
    public String broadcastId;
    @op(a = "n_hearts")
    public int numHearts;
    @op(a = "session")
    public String session;
}
