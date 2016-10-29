package tv.periscope.android.api;

import defpackage.op;
import java.util.ArrayList;

/* compiled from: Twttr */
public class GetBroadcastViewersResponse extends PsResponse {
    public transient String broadcastId;
    public transient String broadcasterId;
    @op(a = "live")
    public ArrayList<PsUser> live;
    @op(a = "live_watched_time")
    public int liveWatchedTime;
    @op(a = "live_watched_time_per_user")
    public int liveWatchedTimePerUser;
    @op(a = "n_watched")
    public int numLiveWatched;
    @op(a = "n_replay_watched")
    public int numReplayWatched;
    @op(a = "n_web_watched")
    public int numWebWatched;
    @op(a = "replay")
    public ArrayList<PsUser> replay;
    @op(a = "replay_watched_time")
    public int replayWatchedTime;
    @op(a = "replay_watched_time_per_user")
    public int replayWatchedTimePerUser;
    @op(a = "total_watched_time")
    public int totalWatchedTime;
    @op(a = "total_watched_time_per_user")
    public int totalWatchedTimePerUser;
}
