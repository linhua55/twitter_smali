package tv.periscope.android.api;

import defpackage.op;
import tv.periscope.model.r;

/* compiled from: Twttr */
class BroadcastSummaryResponse extends PsResponse {
    @op(a = "broadcast")
    public PsBroadcast broadcast;
    @op(a = "meta")
    public PsMeta meta;

    BroadcastSummaryResponse() {
    }

    public r create() {
        return r.a(this.broadcast.create(), this.meta.get());
    }
}
