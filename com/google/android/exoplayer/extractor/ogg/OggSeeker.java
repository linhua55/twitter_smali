package com.google.android.exoplayer.extractor.ogg;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ogg.OggUtil.PageHeader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* compiled from: Twttr */
final class OggSeeker {
    private static final int MATCH_RANGE = 72000;
    private long audioDataLength;
    private final ParsableByteArray headerArray;
    private final PageHeader pageHeader;
    private long totalSamples;

    OggSeeker() {
        this.pageHeader = new PageHeader();
        this.headerArray = new ParsableByteArray(282);
        this.audioDataLength = -1;
    }

    public void setup(long j, long j2) {
        boolean z = j > 0 && j2 > 0;
        Assertions.checkArgument(z);
        this.audioDataLength = j;
        this.totalSamples = j2;
    }

    public long getNextSeekPosition(long j, ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = 1;
        boolean z = (this.audioDataLength == -1 || this.totalSamples == 0) ? false : true;
        Assertions.checkState(z);
        OggUtil.populatePageHeader(extractorInput, this.pageHeader, this.headerArray, false);
        long j2 = j - this.pageHeader.granulePosition;
        if (j2 <= 0 || j2 > 72000) {
            int i2 = this.pageHeader.bodySize + this.pageHeader.headerSize;
            if (j2 <= 0) {
                i = 2;
            }
            return (extractorInput.getPosition() - ((long) (i2 * i))) + ((j2 * this.audioDataLength) / this.totalSamples);
        }
        extractorInput.resetPeekPosition();
        return -1;
    }
}
