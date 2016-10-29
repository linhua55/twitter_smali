package tv.periscope.android.player;

/* compiled from: Twttr */
public enum PlayMode {
    Unknown(false, false, false, false),
    Subscribe(false, true, true, true),
    Replay(true, false, false, true),
    AutoReplay(true, true, false, true),
    Summary(true, false, true, false);
    
    public final boolean autoPlay;
    public final boolean playable;
    public final boolean replayable;
    public final boolean shouldFinishOnStop;

    private PlayMode(boolean z, boolean z2, boolean z3, boolean z4) {
        this.replayable = z;
        this.autoPlay = z2;
        this.shouldFinishOnStop = z3;
        this.playable = z4;
    }
}
