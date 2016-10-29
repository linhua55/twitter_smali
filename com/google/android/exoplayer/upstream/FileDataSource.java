package com.google.android.exoplayer.upstream;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* compiled from: Twttr */
public final class FileDataSource implements UriDataSource {
    private long bytesRemaining;
    private RandomAccessFile file;
    private final TransferListener listener;
    private boolean opened;
    private String uriString;

    /* compiled from: Twttr */
    public class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        this(null);
    }

    public FileDataSource(TransferListener transferListener) {
        this.listener = transferListener;
    }

    public long open(DataSpec dataSpec) throws FileDataSourceException {
        try {
            this.uriString = dataSpec.uri.toString();
            this.file = new RandomAccessFile(dataSpec.uri.getPath(), "r");
            this.file.seek(dataSpec.position);
            this.bytesRemaining = dataSpec.length == -1 ? this.file.length() - dataSpec.position : dataSpec.length;
            if (this.bytesRemaining < 0) {
                throw new EOFException();
            }
            this.opened = true;
            if (this.listener != null) {
                this.listener.onTransferStart();
            }
            return this.bytesRemaining;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    public int read(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int read = this.file.read(bArr, i, (int) Math.min(this.bytesRemaining, (long) i2));
            if (read <= 0) {
                return read;
            }
            this.bytesRemaining -= (long) read;
            if (this.listener == null) {
                return read;
            }
            this.listener.onBytesTransferred(read);
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    public String getUri() {
        return this.uriString;
    }

    public void close() throws FileDataSourceException {
        this.uriString = null;
        if (this.file != null) {
            try {
                this.file.close();
                this.file = null;
                if (this.opened) {
                    this.opened = false;
                    if (this.listener != null) {
                        this.listener.onTransferEnd();
                    }
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            } catch (Throwable th) {
                this.file = null;
                if (this.opened) {
                    this.opened = false;
                    if (this.listener != null) {
                        this.listener.onTransferEnd();
                    }
                }
            }
        }
    }
}
