package com.facebook.common.memory;

/* compiled from: Twttr */
public enum MemoryTrimType {
    OnCloseToDalvikHeapLimit(0.5d),
    OnSystemLowMemoryWhileAppInForeground(0.5d),
    OnSystemLowMemoryWhileAppInBackground(1.0d),
    OnAppBackgrounded(1.0d);
    
    private double mSuggestedTrimRatio;

    private MemoryTrimType(double d) {
        this.mSuggestedTrimRatio = d;
    }

    public double a() {
        return this.mSuggestedTrimRatio;
    }
}
