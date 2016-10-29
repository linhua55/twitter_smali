package com.google.android.exoplayer.extractor;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* compiled from: Twttr */
public class DummyTrackOutput implements TrackOutput {
    public void format(MediaFormat mediaFormat) {
    }

    public int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
        return extractorInput.skip(i);
    }

    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(i);
    }

    public void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
    }
}
