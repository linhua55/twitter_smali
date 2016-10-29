package com.google.android.exoplayer.extractor.ts;

import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.ParsableByteArray;

/* compiled from: Twttr */
abstract class ElementaryStreamReader {
    protected final TrackOutput output;

    public abstract void consume(ParsableByteArray parsableByteArray);

    public abstract void packetFinished();

    public abstract void packetStarted(long j, boolean z);

    public abstract void seek();

    protected ElementaryStreamReader(TrackOutput trackOutput) {
        this.output = trackOutput;
    }
}