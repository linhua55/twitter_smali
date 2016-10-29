package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class StopWatchingRequest extends PsRequest {
    @op(a = "broadcast_id")
    public String broadcastId;
    @op(a = "duration")
    public float duration;
    @op(a = "log")
    public String log;
    @op(a = "n_comments")
    public int numCommentsMade;
    @op(a = "n_hearts")
    public int numHeartsGiven;
    @op(a = "session")
    public String session;
}
