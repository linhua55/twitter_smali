package com.google.android.exoplayer.extractor.mp3;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
final class VbriSeeker implements Seeker {
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    public static VbriSeeker create(MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray, long j, long j2) {
        parsableByteArray.skipBytes(10);
        int readInt = parsableByteArray.readInt();
        if (readInt <= 0) {
            return null;
        }
        int i = mpegAudioHeader.sampleRate;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp((long) readInt, ((long) (i >= 32000 ? 1152 : 576)) * C.MICROS_PER_SECOND, (long) i);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j3 = j + ((long) mpegAudioHeader.frameSize);
        long[] jArr = new long[(readUnsignedShort + 1)];
        long[] jArr2 = new long[(readUnsignedShort + 1)];
        jArr[0] = 0;
        jArr2[0] = j3;
        for (readInt = 1; readInt < jArr.length; readInt++) {
            int readUnsignedByte;
            long j4;
            switch (readUnsignedShort3) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    readUnsignedByte = parsableByteArray.readUnsignedByte();
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    readUnsignedByte = parsableByteArray.readUnsignedShort();
                    break;
                case Util.TYPE_OTHER /*3*/:
                    readUnsignedByte = parsableByteArray.readUnsignedInt24();
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    readUnsignedByte = parsableByteArray.readUnsignedIntToInt();
                    break;
                default:
                    return null;
            }
            j3 += (long) (readUnsignedByte * readUnsignedShort2);
            jArr[readInt] = (((long) readInt) * scaleLargeTimestamp) / ((long) readUnsignedShort);
            if (j2 == -1) {
                j4 = j3;
            } else {
                j4 = Math.min(j2, j3);
            }
            jArr2[readInt] = j4;
        }
        return new VbriSeeker(jArr, jArr2, scaleLargeTimestamp);
    }

    private VbriSeeker(long[] jArr, long[] jArr2, long j) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j;
    }

    public boolean isSeekable() {
        return true;
    }

    public long getPosition(long j) {
        return this.positions[Util.binarySearchFloor(this.timesUs, j, true, true)];
    }

    public long getTimeUs(long j) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j, true, true)];
    }

    public long getDurationUs() {
        return this.durationUs;
    }
}
