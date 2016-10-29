package com.google.android.exoplayer.extractor.ogg;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.extractor.ogg.OggUtil.PageHeader;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* compiled from: Twttr */
public class OggExtractor implements Extractor {
    private StreamReader streamReader;

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        try {
            ParsableByteArray parsableByteArray = new ParsableByteArray(new byte[27], 0);
            PageHeader pageHeader = new PageHeader();
            if (!OggUtil.populatePageHeader(extractorInput, pageHeader, parsableByteArray, true) || (pageHeader.type & 2) != 2 || pageHeader.bodySize < 7) {
                return false;
            }
            parsableByteArray.reset();
            extractorInput.peekFully(parsableByteArray.data, 0, 7);
            if (FlacReader.verifyBitstreamType(parsableByteArray)) {
                this.streamReader = new FlacReader();
            } else {
                parsableByteArray.reset();
                if (!VorbisReader.verifyBitstreamType(parsableByteArray)) {
                    return false;
                }
                this.streamReader = new VorbisReader();
            }
            return true;
        } catch (ParserException e) {
            return false;
        }
    }

    public void init(ExtractorOutput extractorOutput) {
        TrackOutput track = extractorOutput.track(0);
        extractorOutput.endTracks();
        this.streamReader.init(extractorOutput, track);
    }

    public void seek() {
        this.streamReader.seek();
    }

    public void release() {
    }

    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        return this.streamReader.read(extractorInput, positionHolder);
    }
}
