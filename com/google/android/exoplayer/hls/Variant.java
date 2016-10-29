package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatWrapper;

/* compiled from: Twttr */
public final class Variant implements FormatWrapper {
    public final Format format;
    public final String url;

    public Variant(String str, Format format) {
        this.url = str;
        this.format = format;
    }

    public Format getFormat() {
        return this.format;
    }
}
