package com.google.android.exoplayer.extractor.ts;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.text.eia608.Eia608Parser;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableByteArray;

/* compiled from: Twttr */
final class SeiReader {
    private final TrackOutput output;

    public SeiReader(TrackOutput trackOutput) {
        this.output = trackOutput;
        trackOutput.format(MediaFormat.createTextFormat(null, MimeTypes.APPLICATION_EIA608, -1, -1, null));
    }

    public void consume(long j, ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 1) {
            int readUnsignedByte;
            int i = 0;
            do {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
                i += readUnsignedByte;
            } while (readUnsignedByte == NalUnitUtil.EXTENDED_SAR);
            int i2 = 0;
            do {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
                i2 += readUnsignedByte;
            } while (readUnsignedByte == NalUnitUtil.EXTENDED_SAR);
            if (Eia608Parser.isSeiMessageEia608(i, i2, parsableByteArray)) {
                this.output.sampleData(parsableByteArray, i2);
                this.output.sampleMetadata(j, 1, i2, 0, null);
            } else {
                parsableByteArray.skipBytes(i2);
            }
        }
    }
}
