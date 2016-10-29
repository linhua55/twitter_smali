package com.google.android.exoplayer.extractor.ts;

import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
public final class AdtsExtractor implements Extractor {
    private static final int ID3_TAG;
    private static final int MAX_PACKET_SIZE = 200;
    private static final int MAX_SNIFF_BYTES = 8192;
    private AdtsReader adtsReader;
    private final long firstSampleTimestampUs;
    private final ParsableByteArray packetBuffer;
    private boolean startedPacket;

    static {
        ID3_TAG = Util.getIntegerCodeForString("ID3");
    }

    public AdtsExtractor() {
        this(0);
    }

    public AdtsExtractor(long j) {
        this.firstSampleTimestampUs = j;
        this.packetBuffer = new ParsableByteArray((int) MAX_PACKET_SIZE);
    }

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.data);
        int i2 = ID3_TAG;
        while (true) {
            extractorInput.peekFully(parsableByteArray.data, ID3_TAG, 10);
            parsableByteArray.setPosition(ID3_TAG);
            if (parsableByteArray.readUnsignedInt24() != ID3_TAG) {
                break;
            }
            i = ((((parsableByteArray.data[6] & 127) << 21) | ((parsableByteArray.data[7] & 127) << 14)) | ((parsableByteArray.data[8] & 127) << 7)) | (parsableByteArray.data[9] & 127);
            i2 += i + 10;
            extractorInput.advancePeekPosition(i);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i2);
        i = ID3_TAG;
        int i3 = ID3_TAG;
        int i4 = i2;
        while (true) {
            extractorInput.peekFully(parsableByteArray.data, ID3_TAG, 2);
            parsableByteArray.setPosition(ID3_TAG);
            if ((parsableByteArray.readUnsignedShort() & 65526) != 65520) {
                extractorInput.resetPeekPosition();
                i4++;
                if (i4 - i2 >= MAX_SNIFF_BYTES) {
                    return false;
                }
                extractorInput.advancePeekPosition(i4);
                i = ID3_TAG;
                i3 = ID3_TAG;
            } else {
                i++;
                if (i >= 4 && i3 > 188) {
                    return true;
                }
                extractorInput.peekFully(parsableByteArray.data, ID3_TAG, 4);
                parsableBitArray.setPosition(14);
                int readBits = parsableBitArray.readBits(13);
                if (readBits <= 6) {
                    return false;
                }
                extractorInput.advancePeekPosition(readBits - 6);
                i3 += readBits;
            }
        }
    }

    public void init(ExtractorOutput extractorOutput) {
        this.adtsReader = new AdtsReader(extractorOutput.track(ID3_TAG), extractorOutput.track(1));
        extractorOutput.endTracks();
        extractorOutput.seekMap(SeekMap.UNSEEKABLE);
    }

    public void seek() {
        this.startedPacket = false;
        this.adtsReader.seek();
    }

    public void release() {
    }

    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        int read = extractorInput.read(this.packetBuffer.data, ID3_TAG, MAX_PACKET_SIZE);
        if (read == -1) {
            return -1;
        }
        this.packetBuffer.setPosition(ID3_TAG);
        this.packetBuffer.setLimit(read);
        if (!this.startedPacket) {
            this.adtsReader.packetStarted(this.firstSampleTimestampUs, true);
            this.startedPacket = true;
        }
        this.adtsReader.consume(this.packetBuffer);
        return ID3_TAG;
    }
}
