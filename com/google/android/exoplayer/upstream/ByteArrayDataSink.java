package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: Twttr */
public final class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    public DataSink open(DataSpec dataSpec) throws IOException {
        if (dataSpec.length == -1) {
            this.stream = new ByteArrayOutputStream();
        } else {
            Assertions.checkArgument(dataSpec.length <= 2147483647L);
            this.stream = new ByteArrayOutputStream((int) dataSpec.length);
        }
        return this;
    }

    public void close() throws IOException {
        this.stream.close();
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.stream.write(bArr, i, i2);
    }

    public byte[] getData() {
        return this.stream == null ? null : this.stream.toByteArray();
    }
}