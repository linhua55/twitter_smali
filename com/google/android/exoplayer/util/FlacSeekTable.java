package com.google.android.exoplayer.util;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.SeekMap;

/* compiled from: Twttr */
public final class FlacSeekTable {
    private static final int METADATA_LENGTH_OFFSET = 1;
    private static final int SEEK_POINT_SIZE = 18;
    private final long[] offsets;
    private final long[] sampleNumbers;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.util.FlacSeekTable.1 */
    class AnonymousClass1 implements SeekMap {
        final /* synthetic */ long val$firstFrameOffset;
        final /* synthetic */ long val$sampleRate;

        AnonymousClass1(long j, long j2) {
            this.val$sampleRate = j;
            this.val$firstFrameOffset = j2;
        }

        public boolean isSeekable() {
            return true;
        }

        public long getPosition(long j) {
            int binarySearchFloor = Util.binarySearchFloor(FlacSeekTable.this.sampleNumbers, (this.val$sampleRate * j) / C.MICROS_PER_SECOND, true, true);
            return FlacSeekTable.this.offsets[binarySearchFloor] + this.val$firstFrameOffset;
        }
    }

    public static FlacSeekTable parseSeekTable(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(METADATA_LENGTH_OFFSET);
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24() / SEEK_POINT_SIZE;
        long[] jArr = new long[readUnsignedInt24];
        long[] jArr2 = new long[readUnsignedInt24];
        for (int i = 0; i < readUnsignedInt24; i += METADATA_LENGTH_OFFSET) {
            jArr[i] = parsableByteArray.readLong();
            jArr2[i] = parsableByteArray.readLong();
            parsableByteArray.skipBytes(2);
        }
        return new FlacSeekTable(jArr, jArr2);
    }

    private FlacSeekTable(long[] jArr, long[] jArr2) {
        this.sampleNumbers = jArr;
        this.offsets = jArr2;
    }

    public SeekMap createSeekMap(long j, long j2) {
        return new AnonymousClass1(j2, j);
    }
}
