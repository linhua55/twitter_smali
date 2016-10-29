package com.google.android.exoplayer.extractor.webm;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* compiled from: Twttr */
final class Sniffer {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final ParsableByteArray scratch;

    public Sniffer() {
        this.scratch = new ParsableByteArray(8);
    }

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        long length = extractorInput.getLength();
        long j = (length == -1 || length > 1024) ? 1024 : length;
        int i = (int) j;
        extractorInput.peekFully(this.scratch.data, 0, 4);
        j = this.scratch.readUnsignedInt();
        this.peekLength = 4;
        while (j != 440786851) {
            int i2 = this.peekLength + 1;
            this.peekLength = i2;
            if (i2 == i) {
                return false;
            }
            extractorInput.peekFully(this.scratch.data, 0, 1);
            j = ((j << 8) & -256) | ((long) (this.scratch.data[0] & NalUnitUtil.EXTENDED_SAR));
        }
        j = readUint(extractorInput);
        long j2 = (long) this.peekLength;
        if (j == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j2 + j >= length) {
            return false;
        }
        while (((long) this.peekLength) < j2 + j) {
            if (readUint(extractorInput) == Long.MIN_VALUE) {
                return false;
            }
            length = readUint(extractorInput);
            if (length < 0 || length > 2147483647L) {
                return false;
            }
            if (length != 0) {
                extractorInput.advancePeekPosition((int) length);
                this.peekLength = (int) (length + ((long) this.peekLength));
            }
        }
        return ((long) this.peekLength) == j + j2;
    }

    private long readUint(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = 0;
        extractorInput.peekFully(this.scratch.data, 0, 1);
        int i2 = this.scratch.data[0] & NalUnitUtil.EXTENDED_SAR;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i4++;
            i3 >>= 1;
        }
        i3 = (i3 ^ -1) & i2;
        extractorInput.peekFully(this.scratch.data, 1, i4);
        while (i < i4) {
            i3 = (i3 << 8) + (this.scratch.data[i + 1] & NalUnitUtil.EXTENDED_SAR);
            i++;
        }
        this.peekLength += i4 + 1;
        return (long) i3;
    }
}
