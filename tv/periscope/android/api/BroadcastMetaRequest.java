package tv.periscope.android.api;

import defpackage.op;
import java.util.HashMap;

/* compiled from: Twttr */
public class BroadcastMetaRequest extends PsRequest {
    @op(a = "behavior_stats")
    public HashMap<String, Object> behaviorStats;
    @op(a = "broadcast_id")
    public String broadcastId;
    @op(a = "chat_stats")
    public ChatStats chatStats;
    @op(a = "stats")
    public HashMap<String, Object> stats;
}
