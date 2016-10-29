package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: Twttr */
public abstract class DataChunk extends Chunk {
    private static final int READ_GRANULARITY = 16384;
    private byte[] data;
    private int limit;
    private volatile boolean loadCanceled;

    protected abstract void consume(byte[] bArr, int i) throws IOException;

    public DataChunk(DataSource dataSource, DataSpec dataSpec, int i, int i2, Format format, int i3, byte[] bArr) {
        super(dataSource, dataSpec, i, i2, format, i3);
        this.data = bArr;
    }

    public byte[] getDataHolder() {
        return this.data;
    }

    public long bytesLoaded() {
        return (long) this.limit;
    }

    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    public final boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    public final void load() throws IOException, InterruptedException {
        int i = 0;
        try {
            this.dataSource.open(this.dataSpec);
            this.limit = 0;
            while (i != -1 && !this.loadCanceled) {
                maybeExpandData();
                i = this.dataSource.read(this.data, this.limit, READ_GRANULARITY);
                if (i != -1) {
                    this.limit += i;
                }
            }
            if (!this.loadCanceled) {
                consume(this.data, this.limit);
            }
            this.dataSource.close();
        } catch (Throwable th) {
            this.dataSource.close();
        }
    }

    private void maybeExpandData() {
        if (this.data == null) {
            this.data = new byte[READ_GRANULARITY];
        } else if (this.data.length < this.limit + READ_GRANULARITY) {
            this.data = Arrays.copyOf(this.data, this.data.length + READ_GRANULARITY);
        }
    }
}
