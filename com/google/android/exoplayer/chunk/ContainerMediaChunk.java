package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.chunk.ChunkExtractorWrapper.SingleTrackOutput;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
public class ContainerMediaChunk extends BaseMediaChunk implements SingleTrackOutput {
    private final int adaptiveMaxHeight;
    private final int adaptiveMaxWidth;
    private volatile int bytesLoaded;
    private DrmInitData drmInitData;
    private final ChunkExtractorWrapper extractorWrapper;
    private volatile boolean loadCanceled;
    private MediaFormat mediaFormat;
    private final long sampleOffsetUs;

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, long j, long j2, int i2, long j3, ChunkExtractorWrapper chunkExtractorWrapper, MediaFormat mediaFormat, int i3, int i4, DrmInitData drmInitData, boolean z, int i5) {
        super(dataSource, dataSpec, i, format, j, j2, i2, z, i5);
        this.extractorWrapper = chunkExtractorWrapper;
        this.sampleOffsetUs = j3;
        this.adaptiveMaxWidth = i3;
        this.adaptiveMaxHeight = i4;
        this.mediaFormat = getAdjustedMediaFormat(mediaFormat, j3, i3, i4);
        this.drmInitData = drmInitData;
    }

    public final long bytesLoaded() {
        return (long) this.bytesLoaded;
    }

    public final MediaFormat getMediaFormat() {
        return this.mediaFormat;
    }

    public final DrmInitData getDrmInitData() {
        return this.drmInitData;
    }

    public final void seekMap(SeekMap seekMap) {
    }

    public final void drmInitData(DrmInitData drmInitData) {
        this.drmInitData = drmInitData;
    }

    public final void format(MediaFormat mediaFormat) {
        this.mediaFormat = getAdjustedMediaFormat(mediaFormat, this.sampleOffsetUs, this.adaptiveMaxWidth, this.adaptiveMaxHeight);
    }

    public final int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
        return getOutput().sampleData(extractorInput, i, z);
    }

    public final void sampleData(ParsableByteArray parsableByteArray, int i) {
        getOutput().sampleData(parsableByteArray, i);
    }

    public final void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
        getOutput().sampleMetadata(this.sampleOffsetUs + j, i, i2, i3, bArr);
    }

    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    public final boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    public final void load() throws IOException, InterruptedException {
        DataSpec remainderDataSpec = Util.getRemainderDataSpec(this.dataSpec, this.bytesLoaded);
        ExtractorInput defaultExtractorInput;
        try {
            defaultExtractorInput = new DefaultExtractorInput(this.dataSource, remainderDataSpec.absoluteStreamPosition, this.dataSource.open(remainderDataSpec));
            if (this.bytesLoaded == 0) {
                this.extractorWrapper.init(this);
            }
            int i = 0;
            while (i == 0) {
                if (!this.loadCanceled) {
                    i = this.extractorWrapper.read(defaultExtractorInput);
                }
            }
            break;
            this.bytesLoaded = (int) (defaultExtractorInput.getPosition() - this.dataSpec.absoluteStreamPosition);
            this.dataSource.close();
        } catch (Throwable th) {
            this.dataSource.close();
        }
    }

    private static MediaFormat getAdjustedMediaFormat(MediaFormat mediaFormat, long j, int i, int i2) {
        if (mediaFormat == null) {
            return null;
        }
        MediaFormat mediaFormat2;
        if (j == 0 || mediaFormat.subsampleOffsetUs == PtsTimestampAdjuster.DO_NOT_OFFSET) {
            mediaFormat2 = mediaFormat;
        } else {
            mediaFormat2 = mediaFormat.copyWithSubsampleOffsetUs(mediaFormat.subsampleOffsetUs + j);
        }
        if (i == -1 && i2 == -1) {
            return mediaFormat2;
        }
        return mediaFormat2.copyWithMaxVideoDimensions(i, i2);
    }
}
