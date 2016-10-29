package com.twitter.util.network;

/* compiled from: Twttr */
public enum DownloadQuality {
    UNKNOWN(0, 0.0f),
    VERY_LOW(1, 12.5f),
    LOW(2, 12.5f),
    MEDIUM_LOW(3, 50.0f),
    MEDIUM(4, 87.5f),
    MEDIUM_HIGH(5, 250.0f),
    HIGH(6, 1250.0f),
    VERY_HIGH(7, 2500.0f);
    
    private static final int i;
    private final int mIndex;
    private final float mThreshold;

    static {
        i = values().length;
    }

    public static final int a() {
        return i;
    }

    private DownloadQuality(int i, float f) {
        this.mIndex = i;
        this.mThreshold = f;
    }

    public int b() {
        return this.mIndex;
    }

    public float c() {
        return this.mThreshold;
    }
}
