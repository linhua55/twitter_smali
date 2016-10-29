package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class AdjustBroadcastRankRequest extends PsRequest {
    @op(a = "broadcast_id")
    public String broadcastId;
    @op(a = "decrease")
    public boolean decrease;
    @op(a = "increase")
    public boolean increase;
}
