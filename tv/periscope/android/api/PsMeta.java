package tv.periscope.android.api;

import defpackage.op;
import tv.periscope.model.aa;

/* compiled from: Twttr */
class PsMeta {
    @op(a = "join_time_average")
    public double joinTimeAverage;
    @op(a = "join_time_count")
    public long joinTimeCount;
    @op(a = "lost_before_end")
    public long lostBeforeEnd;
    @op(a = "n_comments")
    public long nComments;
    @op(a = "n_hearts")
    public long nHearts;
    @op(a = "n_replay_hearts")
    public long nReplayHearts;
    @op(a = "n_replay_watched")
    public long nReplayWatched;
    @op(a = "n_watched")
    public long nWatched;
    @op(a = "n_watching")
    public long nWatching;
    @op(a = "n_watching_web")
    public long nWatchingWeb;
    @op(a = "n_web_watched")
    public long nWebWatched;
    @op(a = "watched_time")
    public long watchedTime;
    @op(a = "watched_time_calculated")
    public long watchedTimeCalculated;
    @op(a = "watched_time_implied")
    public long watchedTimeImplied;

    PsMeta() {
    }

    public aa get() {
        long j = 0;
        if (this.nWatched != 0) {
            j = this.watchedTime / this.nWatched;
        }
        return aa.a(j, (int) this.nWatched, (int) this.lostBeforeEnd);
    }
}
