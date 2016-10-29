package tv.periscope.android.api;

import defpackage.op;
import java.util.ArrayList;

/* compiled from: Twttr */
public class ShareBroadcastRequest extends PsRequest {
    @op(a = "broadcast_id")
    public String broadcastId;
    @op(a = "users")
    public ArrayList<String> userIds;
}
