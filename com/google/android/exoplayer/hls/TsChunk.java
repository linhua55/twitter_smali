package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.extractor.DefaultExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
public final class TsChunk extends MediaChunk {
    private int bytesLoaded;
    public final int discontinuitySequenceNumber;
    public final HlsExtractorWrapper extractorWrapper;
    private final boolean isEncrypted;
    private volatile boolean loadCanceled;

    public TsChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, long j, long j2, int i2, int i3, HlsExtractorWrapper hlsExtractorWrapper, byte[] bArr, byte[] bArr2) {
        super(buildDataSource(dataSource, bArr, bArr2), dataSpec, i, format, j, j2, i2);
        this.discontinuitySequenceNumber = i3;
        this.extractorWrapper = hlsExtractorWrapper;
        this.isEncrypted = this.dataSource instanceof Aes128DataSource;
    }

    public long bytesLoaded() {
        return (long) this.bytesLoaded;
    }

    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    public void load() throws IOException, InterruptedException {
        int i;
        DataSpec dataSpec;
        int i2 = 0;
        if (this.isEncrypted) {
            i = this.bytesLoaded != 0 ? 1 : 0;
            dataSpec = this.dataSpec;
        } else {
            i = 0;
            dataSpec = Util.getRemainderDataSpec(this.dataSpec, this.bytesLoaded);
        }
        ExtractorInput defaultExtractorInput;
        try {
            defaultExtractorInput = new DefaultExtractorInput(this.dataSource, dataSpec.absoluteStreamPosition, this.dataSource.open(dataSpec));
            if (i != 0) {
                defaultExtractorInput.skipFully(this.bytesLoaded);
            }
            while (i2 == 0) {
                if (!this.loadCanceled) {
                    i2 = this.extractorWrapper.read(defaultExtractorInput);
                }
            }
            break;
            this.bytesLoaded = (int) (defaultExtractorInput.getPosition() - this.dataSpec.absoluteStreamPosition);
            this.dataSource.close();
        } catch (Throwable th) {
            this.dataSource.close();
        }
    }

    private static DataSource buildDataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        return (bArr == null || bArr2 == null) ? dataSource : new Aes128DataSource(dataSource, bArr, bArr2);
    }
}
