package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public final class DataSourceInputStream extends InputStream {
    private boolean closed;
    private final DataSource dataSource;
    private final DataSpec dataSpec;
    private boolean opened;
    private final byte[] singleByteArray;

    public DataSourceInputStream(DataSource dataSource, DataSpec dataSpec) {
        this.opened = false;
        this.closed = false;
        this.dataSource = dataSource;
        this.dataSpec = dataSpec;
        this.singleByteArray = new byte[1];
    }

    public void open() throws IOException {
        checkOpened();
    }

    public int read() throws IOException {
        if (read(this.singleByteArray) == -1) {
            return -1;
        }
        return this.singleByteArray[0] & NalUnitUtil.EXTENDED_SAR;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        Assertions.checkState(!this.closed);
        checkOpened();
        return this.dataSource.read(bArr, i, i2);
    }

    public long skip(long j) throws IOException {
        Assertions.checkState(!this.closed);
        checkOpened();
        return super.skip(j);
    }

    public void close() throws IOException {
        if (!this.closed) {
            this.dataSource.close();
            this.closed = true;
        }
    }

    private void checkOpened() throws IOException {
        if (!this.opened) {
            this.dataSource.open(this.dataSpec);
            this.opened = true;
        }
    }
}
