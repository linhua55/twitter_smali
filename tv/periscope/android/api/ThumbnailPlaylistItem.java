package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class ThumbnailPlaylistItem {
    @op(a = "chunk")
    public int chunk;
    @op(a = "rotation")
    public int rotation;
    @op(a = "time")
    public double timeInSecs;
    @op(a = "tn")
    public String url;

    public long getTimeInMs() {
        return ((long) this.timeInSecs) * 1000;
    }
}
