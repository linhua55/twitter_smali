package com.google.android.exoplayer.upstream;

import android.net.Uri;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.upstream.Loader.Loadable;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public final class UriLoadable<T> implements Loadable {
    private final DataSpec dataSpec;
    private volatile boolean isCanceled;
    private final Parser<T> parser;
    private volatile T result;
    private final UriDataSource uriDataSource;

    /* compiled from: Twttr */
    public interface Parser<T> {
        T parse(String str, InputStream inputStream) throws ParserException, IOException;
    }

    public UriLoadable(String str, UriDataSource uriDataSource, Parser<T> parser) {
        this.uriDataSource = uriDataSource;
        this.parser = parser;
        this.dataSpec = new DataSpec(Uri.parse(str), 1);
    }

    public final T getResult() {
        return this.result;
    }

    public final void cancelLoad() {
        this.isCanceled = true;
    }

    public final boolean isLoadCanceled() {
        return this.isCanceled;
    }

    public final void load() throws IOException, InterruptedException {
        InputStream dataSourceInputStream = new DataSourceInputStream(this.uriDataSource, this.dataSpec);
        try {
            dataSourceInputStream.open();
            this.result = this.parser.parse(this.uriDataSource.getUri(), dataSourceInputStream);
        } finally {
            dataSourceInputStream.close();
        }
    }
}
