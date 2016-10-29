package com.google.android.exoplayer.upstream;

import android.content.Context;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
public final class DefaultUriDataSource implements UriDataSource {
    private static final String SCHEME_ASSET = "asset";
    private static final String SCHEME_CONTENT = "content";
    private final UriDataSource assetDataSource;
    private final UriDataSource contentDataSource;
    private UriDataSource dataSource;
    private final UriDataSource fileDataSource;
    private final UriDataSource httpDataSource;

    public DefaultUriDataSource(Context context, String str) {
        this(context, null, str, false);
    }

    public DefaultUriDataSource(Context context, TransferListener transferListener, String str) {
        this(context, transferListener, str, false);
    }

    public DefaultUriDataSource(Context context, TransferListener transferListener, String str, boolean z) {
        this(context, transferListener, new DefaultHttpDataSource(str, null, transferListener, UdpDataSource.DEAFULT_SOCKET_TIMEOUT_MILLIS, UdpDataSource.DEAFULT_SOCKET_TIMEOUT_MILLIS, z));
    }

    public DefaultUriDataSource(Context context, TransferListener transferListener, UriDataSource uriDataSource) {
        this.httpDataSource = (UriDataSource) Assertions.checkNotNull(uriDataSource);
        this.fileDataSource = new FileDataSource(transferListener);
        this.assetDataSource = new AssetDataSource(context, transferListener);
        this.contentDataSource = new ContentDataSource(context, transferListener);
    }

    public long open(DataSpec dataSpec) throws IOException {
        Assertions.checkState(this.dataSource == null);
        String scheme = dataSpec.uri.getScheme();
        if (Util.isLocalFileUri(dataSpec.uri)) {
            if (dataSpec.uri.getPath().startsWith("/android_asset/")) {
                this.dataSource = this.assetDataSource;
            } else {
                this.dataSource = this.fileDataSource;
            }
        } else if (SCHEME_ASSET.equals(scheme)) {
            this.dataSource = this.assetDataSource;
        } else if (SCHEME_CONTENT.equals(scheme)) {
            this.dataSource = this.contentDataSource;
        } else {
            this.dataSource = this.httpDataSource;
        }
        return this.dataSource.open(dataSpec);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.dataSource.read(bArr, i, i2);
    }

    public String getUri() {
        return this.dataSource == null ? null : this.dataSource.getUri();
    }

    public void close() throws IOException {
        if (this.dataSource != null) {
            try {
                this.dataSource.close();
            } finally {
                this.dataSource = null;
            }
        }
    }
}
