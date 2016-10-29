package com.squareup.okhttp.v_1_5_1.internal.http;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.squareup.okhttp.v_1_5_1.CacheControl;
import com.squareup.okhttp.v_1_5_1.MediaType;
import com.squareup.okhttp.v_1_5_1.ResponseSource;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.Response.Body;
import com.squareup.okhttp.v_1_5_1.internal.http.Response.Builder;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class CacheStrategy {
    private static final Body EMPTY_BODY;
    private static final StatusLine GATEWAY_TIMEOUT_STATUS_LINE;
    public final Request request;
    public final Response response;
    public final ResponseSource source;

    /* compiled from: Twttr */
    public class Factory {
        private int ageSeconds;
        final Response cacheResponse;
        private String etag;
        private Date expires;
        private Date lastModified;
        private String lastModifiedString;
        final long nowMillis;
        private long receivedResponseMillis;
        final Request request;
        private long sentRequestMillis;
        private Date servedDate;
        private String servedDateString;

        public Factory(long j, Request request, Response response) {
            this.ageSeconds = -1;
            this.nowMillis = j;
            this.request = request;
            this.cacheResponse = response;
            if (response != null) {
                for (int i = 0; i < response.headers().size(); i++) {
                    String name = response.headers().name(i);
                    String value = response.headers().value(i);
                    if ("Date".equalsIgnoreCase(name)) {
                        this.servedDate = HttpDate.parse(value);
                        this.servedDateString = value;
                    } else if ("Expires".equalsIgnoreCase(name)) {
                        this.expires = HttpDate.parse(value);
                    } else if ("Last-Modified".equalsIgnoreCase(name)) {
                        this.lastModified = HttpDate.parse(value);
                        this.lastModifiedString = value;
                    } else if ("ETag".equalsIgnoreCase(name)) {
                        this.etag = value;
                    } else if ("Age".equalsIgnoreCase(name)) {
                        this.ageSeconds = HeaderParser.parseSeconds(value);
                    } else if (OkHeaders.SENT_MILLIS.equalsIgnoreCase(name)) {
                        this.sentRequestMillis = Long.parseLong(value);
                    } else if (OkHeaders.RECEIVED_MILLIS.equalsIgnoreCase(name)) {
                        this.receivedResponseMillis = Long.parseLong(value);
                    }
                }
            }
        }

        public CacheStrategy get() {
            CacheStrategy candidate = getCandidate();
            if (candidate.source == ResponseSource.CACHE || !this.request.cacheControl().onlyIfCached()) {
                return candidate;
            }
            return new CacheStrategy(new Builder().request(candidate.request).statusLine(CacheStrategy.GATEWAY_TIMEOUT_STATUS_LINE).setResponseSource(ResponseSource.NONE).body(CacheStrategy.EMPTY_BODY).build(), ResponseSource.NONE, null);
        }

        private CacheStrategy getCandidate() {
            long j = 0;
            if (this.cacheResponse == null) {
                return new CacheStrategy(this.cacheResponse, ResponseSource.NETWORK, null);
            }
            if (this.request.isHttps() && this.cacheResponse.handshake() == null) {
                return new CacheStrategy(this.cacheResponse, ResponseSource.NETWORK, null);
            }
            if (!CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
                return new CacheStrategy(this.cacheResponse, ResponseSource.NETWORK, null);
            }
            CacheControl cacheControl = this.request.cacheControl();
            if (cacheControl.noCache() || hasConditions(this.request)) {
                return new CacheStrategy(this.cacheResponse, ResponseSource.NETWORK, null);
            }
            long toMillis;
            long cacheResponseAge = cacheResponseAge();
            long computeFreshnessLifetime = computeFreshnessLifetime();
            if (cacheControl.maxAgeSeconds() != -1) {
                computeFreshnessLifetime = Math.min(computeFreshnessLifetime, TimeUnit.SECONDS.toMillis((long) cacheControl.maxAgeSeconds()));
            }
            if (cacheControl.minFreshSeconds() != -1) {
                toMillis = TimeUnit.SECONDS.toMillis((long) cacheControl.minFreshSeconds());
            } else {
                toMillis = 0;
            }
            CacheControl cacheControl2 = this.cacheResponse.cacheControl();
            if (!(cacheControl2.mustRevalidate() || cacheControl.maxStaleSeconds() == -1)) {
                j = TimeUnit.SECONDS.toMillis((long) cacheControl.maxStaleSeconds());
            }
            if (cacheControl2.noCache() || cacheResponseAge + toMillis >= r4 + computeFreshnessLifetime) {
                Request.Builder newBuilder = this.request.newBuilder();
                if (this.lastModified != null) {
                    newBuilder.header("If-Modified-Since", this.lastModifiedString);
                } else if (this.servedDate != null) {
                    newBuilder.header("If-Modified-Since", this.servedDateString);
                }
                if (this.etag != null) {
                    newBuilder.header("If-None-Match", this.etag);
                }
                Request build = newBuilder.build();
                return new CacheStrategy(this.cacheResponse, hasConditions(build) ? ResponseSource.CONDITIONAL_CACHE : ResponseSource.NETWORK, null);
            }
            Builder responseSource = this.cacheResponse.newBuilder().setResponseSource(ResponseSource.CACHE);
            if (toMillis + cacheResponseAge >= computeFreshnessLifetime) {
                responseSource.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
            }
            if (cacheResponseAge > 86400000 && isFreshnessLifetimeHeuristic()) {
                responseSource.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
            }
            return new CacheStrategy(responseSource.build(), ResponseSource.CACHE, null);
        }

        private long computeFreshnessLifetime() {
            CacheControl cacheControl = this.cacheResponse.cacheControl();
            if (cacheControl.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis((long) cacheControl.maxAgeSeconds());
            }
            long time;
            if (this.expires != null) {
                time = this.expires.getTime() - (this.servedDate != null ? this.servedDate.getTime() : this.receivedResponseMillis);
                if (time <= 0) {
                    time = 0;
                }
                return time;
            } else if (this.lastModified == null || this.cacheResponse.request().url().getQuery() != null) {
                return 0;
            } else {
                time = (this.servedDate != null ? this.servedDate.getTime() : this.sentRequestMillis) - this.lastModified.getTime();
                if (time > 0) {
                    return time / 10;
                }
                return 0;
            }
        }

        private long cacheResponseAge() {
            long j = 0;
            if (this.servedDate != null) {
                j = Math.max(0, this.receivedResponseMillis - this.servedDate.getTime());
            }
            if (this.ageSeconds != -1) {
                j = Math.max(j, TimeUnit.SECONDS.toMillis((long) this.ageSeconds));
            }
            return (j + (this.receivedResponseMillis - this.sentRequestMillis)) + (this.nowMillis - this.receivedResponseMillis);
        }

        private boolean isFreshnessLifetimeHeuristic() {
            return this.cacheResponse.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        private static boolean hasConditions(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }
    }

    static {
        EMPTY_BODY = new Body() {
            public boolean ready() throws IOException {
                return true;
            }

            public MediaType contentType() {
                return null;
            }

            public long contentLength() {
                return 0;
            }

            public InputStream byteStream() {
                return Util.EMPTY_INPUT_STREAM;
            }
        };
        try {
            GATEWAY_TIMEOUT_STATUS_LINE = new StatusLine("HTTP/1.1 504 Gateway Timeout");
        } catch (IOException e) {
            throw new AssertionError();
        }
    }

    private CacheStrategy(Request request, Response response, ResponseSource responseSource) {
        this.request = request;
        this.response = response;
        this.source = responseSource;
    }

    public static boolean isCacheable(Response response, Request request) {
        int code = response.code();
        if (code != Callback.DEFAULT_DRAG_ANIMATION_DURATION && code != 203 && code != 300 && code != 301 && code != 410) {
            return false;
        }
        CacheControl cacheControl = response.cacheControl();
        CacheControl cacheControl2 = request.cacheControl();
        if ((request.header("Authorization") != null && !cacheControl.isPublic() && !cacheControl.mustRevalidate() && cacheControl.sMaxAgeSeconds() == -1) || cacheControl.noStore() || cacheControl2.noStore()) {
            return false;
        }
        return true;
    }
}
