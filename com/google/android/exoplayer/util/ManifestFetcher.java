package com.google.android.exoplayer.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.upstream.Loader.Callback;
import com.google.android.exoplayer.upstream.Loader.Loadable;
import com.google.android.exoplayer.upstream.UriDataSource;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.upstream.UriLoadable.Parser;
import java.io.IOException;
import java.util.concurrent.CancellationException;

/* compiled from: Twttr */
public class ManifestFetcher<T> implements Callback {
    private long currentLoadStartTimestamp;
    private UriLoadable<T> currentLoadable;
    private int enabledCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private ManifestIOException loadException;
    private int loadExceptionCount;
    private long loadExceptionTimestamp;
    private Loader loader;
    private volatile T manifest;
    private volatile long manifestLoadCompleteTimestamp;
    private volatile long manifestLoadStartTimestamp;
    volatile String manifestUri;
    private final Parser<T> parser;
    private final UriDataSource uriDataSource;

    /* compiled from: Twttr */
    public interface RedirectingManifest {
        String getNextManifestUri();
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.util.ManifestFetcher.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ IOException val$e;

        AnonymousClass3(IOException iOException) {
            this.val$e = iOException;
        }

        public void run() {
            ManifestFetcher.this.eventListener.onManifestError(this.val$e);
        }
    }

    /* compiled from: Twttr */
    public interface EventListener {
        void onManifestError(IOException iOException);

        void onManifestRefreshStarted();

        void onManifestRefreshed();
    }

    /* compiled from: Twttr */
    public interface ManifestCallback<T> {
        void onSingleManifest(T t);

        void onSingleManifestError(IOException iOException);
    }

    /* compiled from: Twttr */
    public final class ManifestIOException extends IOException {
        public ManifestIOException(Throwable th) {
            super(th);
        }
    }

    /* compiled from: Twttr */
    class SingleFetchHelper implements Callback {
        private final Looper callbackLooper;
        private long loadStartTimestamp;
        private final UriLoadable<T> singleUseLoadable;
        private final Loader singleUseLoader;
        private final ManifestCallback<T> wrappedCallback;

        public SingleFetchHelper(UriLoadable<T> uriLoadable, Looper looper, ManifestCallback<T> manifestCallback) {
            this.singleUseLoadable = uriLoadable;
            this.callbackLooper = looper;
            this.wrappedCallback = manifestCallback;
            this.singleUseLoader = new Loader("manifestLoader:single");
        }

        public void startLoading() {
            this.loadStartTimestamp = SystemClock.elapsedRealtime();
            this.singleUseLoader.startLoading(this.callbackLooper, this.singleUseLoadable, this);
        }

        public void onLoadCompleted(Loadable loadable) {
            try {
                Object result = this.singleUseLoadable.getResult();
                ManifestFetcher.this.onSingleFetchCompleted(result, this.loadStartTimestamp);
                this.wrappedCallback.onSingleManifest(result);
            } finally {
                releaseLoader();
            }
        }

        public void onLoadCanceled(Loadable loadable) {
            try {
                this.wrappedCallback.onSingleManifestError(new ManifestIOException(new CancellationException()));
            } finally {
                releaseLoader();
            }
        }

        public void onLoadError(Loadable loadable, IOException iOException) {
            try {
                this.wrappedCallback.onSingleManifestError(iOException);
            } finally {
                releaseLoader();
            }
        }

        private void releaseLoader() {
            this.singleUseLoader.release();
        }
    }

    public ManifestFetcher(String str, UriDataSource uriDataSource, Parser<T> parser) {
        this(str, uriDataSource, parser, null, null);
    }

    public ManifestFetcher(String str, UriDataSource uriDataSource, Parser<T> parser, Handler handler, EventListener eventListener) {
        this.parser = parser;
        this.manifestUri = str;
        this.uriDataSource = uriDataSource;
        this.eventHandler = handler;
        this.eventListener = eventListener;
    }

    public void updateManifestUri(String str) {
        this.manifestUri = str;
    }

    public void singleLoad(Looper looper, ManifestCallback<T> manifestCallback) {
        new SingleFetchHelper(new UriLoadable(this.manifestUri, this.uriDataSource, this.parser), looper, manifestCallback).startLoading();
    }

    public T getManifest() {
        return this.manifest;
    }

    public long getManifestLoadStartTimestamp() {
        return this.manifestLoadStartTimestamp;
    }

    public long getManifestLoadCompleteTimestamp() {
        return this.manifestLoadCompleteTimestamp;
    }

    public void maybeThrowError() throws ManifestIOException {
        if (this.loadException != null && this.loadExceptionCount > 1) {
            throw this.loadException;
        }
    }

    public void enable() {
        int i = this.enabledCount;
        this.enabledCount = i + 1;
        if (i == 0) {
            this.loadExceptionCount = 0;
            this.loadException = null;
        }
    }

    public void disable() {
        int i = this.enabledCount - 1;
        this.enabledCount = i;
        if (i == 0 && this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    public void requestRefresh() {
        if (this.loadException == null || SystemClock.elapsedRealtime() >= this.loadExceptionTimestamp + getRetryDelayMillis((long) this.loadExceptionCount)) {
            if (this.loader == null) {
                this.loader = new Loader("manifestLoader");
            }
            if (!this.loader.isLoading()) {
                this.currentLoadable = new UriLoadable(this.manifestUri, this.uriDataSource, this.parser);
                this.currentLoadStartTimestamp = SystemClock.elapsedRealtime();
                this.loader.startLoading(this.currentLoadable, this);
                notifyManifestRefreshStarted();
            }
        }
    }

    public void onLoadCompleted(Loadable loadable) {
        if (this.currentLoadable == loadable) {
            this.manifest = this.currentLoadable.getResult();
            this.manifestLoadStartTimestamp = this.currentLoadStartTimestamp;
            this.manifestLoadCompleteTimestamp = SystemClock.elapsedRealtime();
            this.loadExceptionCount = 0;
            this.loadException = null;
            if (this.manifest instanceof RedirectingManifest) {
                Object nextManifestUri = ((RedirectingManifest) this.manifest).getNextManifestUri();
                if (!TextUtils.isEmpty(nextManifestUri)) {
                    this.manifestUri = nextManifestUri;
                }
            }
            notifyManifestRefreshed();
        }
    }

    public void onLoadCanceled(Loadable loadable) {
    }

    public void onLoadError(Loadable loadable, IOException iOException) {
        if (this.currentLoadable == loadable) {
            this.loadExceptionCount++;
            this.loadExceptionTimestamp = SystemClock.elapsedRealtime();
            this.loadException = new ManifestIOException(iOException);
            notifyManifestError(this.loadException);
        }
    }

    void onSingleFetchCompleted(T t, long j) {
        this.manifest = t;
        this.manifestLoadStartTimestamp = j;
        this.manifestLoadCompleteTimestamp = SystemClock.elapsedRealtime();
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    private void notifyManifestRefreshStarted() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() {
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestRefreshStarted();
                }
            });
        }
    }

    private void notifyManifestRefreshed() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() {
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestRefreshed();
                }
            });
        }
    }

    private void notifyManifestError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass3(iOException));
        }
    }
}
