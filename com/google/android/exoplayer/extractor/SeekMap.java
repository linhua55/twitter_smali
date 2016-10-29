package com.google.android.exoplayer.extractor;

/* compiled from: Twttr */
public interface SeekMap {
    public static final SeekMap UNSEEKABLE;

    long getPosition(long j);

    boolean isSeekable();

    static {
        UNSEEKABLE = new SeekMap() {
            public boolean isSeekable() {
                return false;
            }

            public long getPosition(long j) {
                return 0;
            }
        };
    }
}
