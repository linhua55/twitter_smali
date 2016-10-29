package com.google.android.exoplayer.extractor.flv;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.ParsableByteArray;

/* compiled from: Twttr */
abstract class TagPayloadReader {
    private long durationUs;
    protected final TrackOutput output;

    /* compiled from: Twttr */
    public final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    protected abstract boolean parseHeader(ParsableByteArray parsableByteArray) throws ParserException;

    protected abstract void parsePayload(ParsableByteArray parsableByteArray, long j) throws ParserException;

    public abstract void seek();

    protected TagPayloadReader(TrackOutput trackOutput) {
        this.output = trackOutput;
        this.durationUs = -1;
    }

    public final void setDurationUs(long j) {
        this.durationUs = j;
    }

    public final long getDurationUs() {
        return this.durationUs;
    }

    public final void consume(ParsableByteArray parsableByteArray, long j) throws ParserException {
        if (parseHeader(parsableByteArray)) {
            parsePayload(parsableByteArray, j);
        }
    }
}
