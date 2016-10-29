package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* compiled from: Twttr */
public final class TeeDataSource implements DataSource {
    private final DataSink dataSink;
    private final DataSource upstream;

    public TeeDataSource(DataSource dataSource, DataSink dataSink) {
        this.upstream = (DataSource) Assertions.checkNotNull(dataSource);
        this.dataSink = (DataSink) Assertions.checkNotNull(dataSink);
    }

    public long open(DataSpec dataSpec) throws IOException {
        long open = this.upstream.open(dataSpec);
        if (dataSpec.length == -1 && open != -1) {
            dataSpec = new DataSpec(dataSpec.uri, dataSpec.absoluteStreamPosition, dataSpec.position, open, dataSpec.key, dataSpec.flags);
        }
        this.dataSink.open(dataSpec);
        return open;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.upstream.read(bArr, i, i2);
        if (read > 0) {
            this.dataSink.write(bArr, i, read);
        }
        return read;
    }

    public void close() throws IOException {
        try {
            this.upstream.close();
        } finally {
            this.dataSink.close();
        }
    }
}
