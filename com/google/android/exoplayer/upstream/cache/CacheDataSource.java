package com.google.android.exoplayer.upstream.cache;

import android.net.Uri;
import android.util.Log;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.upstream.DataSink;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.FileDataSource;
import com.google.android.exoplayer.upstream.TeeDataSource;
import com.google.android.exoplayer.upstream.cache.CacheDataSink.CacheDataSinkException;
import java.io.IOException;
import java.io.InterruptedIOException;

/* compiled from: Twttr */
public final class CacheDataSource implements DataSource {
    private static final String TAG = "CacheDataSource";
    private final boolean blockOnCache;
    private long bytesRemaining;
    private final Cache cache;
    private final DataSource cacheReadDataSource;
    private final DataSource cacheWriteDataSource;
    private DataSource currentDataSource;
    private final EventListener eventListener;
    private int flags;
    private boolean ignoreCache;
    private final boolean ignoreCacheOnError;
    private String key;
    private CacheSpan lockedSpan;
    private long readPosition;
    private long totalCachedBytesRead;
    private final DataSource upstreamDataSource;
    private Uri uri;

    /* compiled from: Twttr */
    public interface EventListener {
        void onCachedBytesRead(long j, long j2);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, boolean z, boolean z2) {
        this(cache, dataSource, z, z2, PtsTimestampAdjuster.DO_NOT_OFFSET);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, boolean z, boolean z2, long j) {
        this(cache, dataSource, new FileDataSource(), new CacheDataSink(cache, j), z, z2, null);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, DataSource dataSource2, DataSink dataSink, boolean z, boolean z2, EventListener eventListener) {
        this.cache = cache;
        this.cacheReadDataSource = dataSource2;
        this.blockOnCache = z;
        this.ignoreCacheOnError = z2;
        this.upstreamDataSource = dataSource;
        if (dataSink != null) {
            this.cacheWriteDataSource = new TeeDataSource(dataSource, dataSink);
        } else {
            this.cacheWriteDataSource = null;
        }
        this.eventListener = eventListener;
    }

    public long open(DataSpec dataSpec) throws IOException {
        try {
            this.uri = dataSpec.uri;
            this.flags = dataSpec.flags;
            this.key = dataSpec.key;
            this.readPosition = dataSpec.position;
            this.bytesRemaining = dataSpec.length;
            openNextSource();
            return dataSpec.length;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int read = this.currentDataSource.read(bArr, i, i2);
            if (read >= 0) {
                if (this.currentDataSource == this.cacheReadDataSource) {
                    this.totalCachedBytesRead += (long) read;
                }
                this.readPosition += (long) read;
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= (long) read;
                }
            } else {
                closeCurrentSource();
                if (this.bytesRemaining > 0 && this.bytesRemaining != -1) {
                    openNextSource();
                    read = read(bArr, i, i2);
                }
            }
            return read;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    public void close() throws IOException {
        notifyBytesRead();
        try {
            closeCurrentSource();
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    private void openNextSource() throws IOException {
        DataSpec dataSpec;
        CacheSpan cacheSpan = null;
        if (!this.ignoreCache) {
            if (this.bytesRemaining == -1) {
                Log.w(TAG, "Cache bypassed due to unbounded length.");
            } else if (this.blockOnCache) {
                try {
                    cacheSpan = this.cache.startReadWrite(this.key, this.readPosition);
                } catch (InterruptedException e) {
                    throw new InterruptedIOException();
                }
            } else {
                cacheSpan = this.cache.startReadWriteNonBlocking(this.key, this.readPosition);
            }
        }
        if (cacheSpan == null) {
            this.currentDataSource = this.upstreamDataSource;
            dataSpec = new DataSpec(this.uri, this.readPosition, this.bytesRemaining, this.key, this.flags);
        } else if (cacheSpan.isCached) {
            long j = this.readPosition - cacheSpan.position;
            dataSpec = new DataSpec(Uri.fromFile(cacheSpan.file), this.readPosition, j, Math.min(cacheSpan.length - j, this.bytesRemaining), this.key, this.flags);
            this.currentDataSource = this.cacheReadDataSource;
        } else {
            this.lockedSpan = cacheSpan;
            dataSpec = new DataSpec(this.uri, this.readPosition, cacheSpan.isOpenEnded() ? this.bytesRemaining : Math.min(cacheSpan.length, this.bytesRemaining), this.key, this.flags);
            this.currentDataSource = this.cacheWriteDataSource != null ? this.cacheWriteDataSource : this.upstreamDataSource;
        }
        this.currentDataSource.open(dataSpec);
    }

    private void closeCurrentSource() throws IOException {
        if (this.currentDataSource != null) {
            try {
                this.currentDataSource.close();
                this.currentDataSource = null;
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
            } catch (Throwable th) {
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
            }
        }
    }

    private void handleBeforeThrow(IOException iOException) {
        if (!this.ignoreCacheOnError) {
            return;
        }
        if (this.currentDataSource == this.cacheReadDataSource || (iOException instanceof CacheDataSinkException)) {
            this.ignoreCache = true;
        }
    }

    private void notifyBytesRead() {
        if (this.eventListener != null && this.totalCachedBytesRead > 0) {
            this.eventListener.onCachedBytesRead(this.cache.getCacheSpace(), this.totalCachedBytesRead);
            this.totalCachedBytesRead = 0;
        }
    }
}
