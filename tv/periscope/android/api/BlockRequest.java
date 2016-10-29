package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class BlockRequest extends PsRequest {
    @op(a = "broadcast_id")
    public String broadcastId;
    @op(a = "wire_reason")
    public String chatmanReason;
    @op(a = "to")
    public String userId;
}
