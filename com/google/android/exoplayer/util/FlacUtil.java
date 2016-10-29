package com.google.android.exoplayer.util;

import com.google.android.exoplayer.C;

/* compiled from: Twttr */
public final class FlacUtil {
    private static final int FRAME_HEADER_SAMPLE_NUMBER_OFFSET = 4;

    private FlacUtil() {
    }

    public static long extractSampleTimestamp(FlacStreamInfo flacStreamInfo, ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(FRAME_HEADER_SAMPLE_NUMBER_OFFSET);
        long readUTF8EncodedLong = parsableByteArray.readUTF8EncodedLong();
        if (flacStreamInfo.minBlockSize == flacStreamInfo.maxBlockSize) {
            readUTF8EncodedLong *= (long) flacStreamInfo.minBlockSize;
        }
        return (readUTF8EncodedLong * C.MICROS_PER_SECOND) / ((long) flacStreamInfo.sampleRate);
    }
}
