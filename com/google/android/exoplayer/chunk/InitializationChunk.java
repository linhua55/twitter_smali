package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.chunk.ChunkExtractorWrapper.SingleTrackOutput;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
public final class InitializationChunk extends Chunk implements SingleTrackOutput {
    private volatile int bytesLoaded;
    private DrmInitData drmInitData;
    private final ChunkExtractorWrapper extractorWrapper;
    private volatile boolean loadCanceled;
    private MediaFormat mediaFormat;
    private SeekMap seekMap;

    public InitializationChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, ChunkExtractorWrapper chunkExtractorWrapper) {
        this(dataSource, dataSpec, i, format, chunkExtractorWrapper, -1);
    }

    public InitializationChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, ChunkExtractorWrapper chunkExtractorWrapper, int i2) {
        super(dataSource, dataSpec, 2, i, format, i2);
        this.extractorWrapper = chunkExtractorWrapper;
    }

    public long bytesLoaded() {
        return (long) this.bytesLoaded;
    }

    public boolean hasFormat() {
        return this.mediaFormat != null;
    }

    public MediaFormat getFormat() {
        return this.mediaFormat;
    }

    public boolean hasDrmInitData() {
        return this.drmInitData != null;
    }

    public DrmInitData getDrmInitData() {
        return this.drmInitData;
    }

    public boolean hasSeekMap() {
        return this.seekMap != null;
    }

    public SeekMap getSeekMap() {
        return this.seekMap;
    }

    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    public void drmInitData(DrmInitData drmInitData) {
        this.drmInitData = drmInitData;
    }

    public void format(MediaFormat mediaFormat) {
        this.mediaFormat = mediaFormat;
    }

    public int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    public void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    public void load() throws IOException, InterruptedException {
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
}
