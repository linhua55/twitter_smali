package com.squareup.okhttp;

import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.internal.DiskLruCache;
import com.squareup.okhttp.internal.DiskLruCache.Editor;
import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.CacheStrategy;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import com.squareup.okhttp.internal.io.FileSystem;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import okio.ByteString;
import okio.aa;
import okio.ab;
import okio.f;
import okio.i;
import okio.j;
import okio.l;
import okio.m;
import okio.q;

/* compiled from: Twttr */
public final class Cache {
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final DiskLruCache cache;
    private int hitCount;
    final InternalCache internalCache;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    /* compiled from: Twttr */
    final class CacheRequestImpl implements CacheRequest {
        private aa body;
        private aa cacheOut;
        private boolean done;
        private final Editor editor;

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.Cache.CacheRequestImpl.1 */
        class AnonymousClass1 extends l {
            final /* synthetic */ Editor val$editor;
            final /* synthetic */ Cache val$this$0;

            AnonymousClass1(aa aaVar, Cache cache, Editor editor) {
                this.val$this$0 = cache;
                this.val$editor = editor;
                super(aaVar);
            }

            public void close() throws IOException {
                synchronized (Cache.this) {
                    if (CacheRequestImpl.this.done) {
                        return;
                    }
                    CacheRequestImpl.this.done = true;
                    Cache.this.writeSuccessCount = Cache.this.writeSuccessCount + Cache.ENTRY_BODY;
                    super.close();
                    this.val$editor.commit();
                }
            }
        }

        public CacheRequestImpl(Editor editor) throws IOException {
            this.editor = editor;
            this.cacheOut = editor.newSink(Cache.ENTRY_BODY);
            this.body = new AnonymousClass1(this.cacheOut, Cache.this, editor);
        }

        public void abort() {
            synchronized (Cache.this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                Cache.this.writeAbortCount = Cache.this.writeAbortCount + Cache.ENTRY_BODY;
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException e) {
                }
            }
        }

        public aa body() {
            return this.body;
        }
    }

    /* compiled from: Twttr */
    class CacheResponseBody extends ResponseBody {
        private final j bodySource;
        private final String contentLength;
        private final String contentType;
        private final Snapshot snapshot;

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.Cache.CacheResponseBody.1 */
        class AnonymousClass1 extends m {
            final /* synthetic */ Snapshot val$snapshot;

            AnonymousClass1(ab abVar, Snapshot snapshot) {
                this.val$snapshot = snapshot;
                super(abVar);
            }

            public void close() throws IOException {
                this.val$snapshot.close();
                super.close();
            }
        }

        public CacheResponseBody(Snapshot snapshot, String str, String str2) {
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = q.a(new AnonymousClass1(snapshot.getSource(Cache.ENTRY_BODY), snapshot));
        }

        public MediaType contentType() {
            return this.contentType != null ? MediaType.parse(this.contentType) : null;
        }

        public long contentLength() {
            long j = -1;
            try {
                if (this.contentLength != null) {
                    j = Long.parseLong(this.contentLength);
                }
            } catch (NumberFormatException e) {
            }
            return j;
        }

        public j source() {
            return this.bodySource;
        }
    }

    /* compiled from: Twttr */
    final class Entry {
        private final int code;
        private final Handshake handshake;
        private final String message;
        private final Protocol protocol;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final String url;
        private final Headers varyHeaders;

        public Entry(ab abVar) throws IOException {
            int i = Cache.ENTRY_METADATA;
            try {
                j a = q.a(abVar);
                this.url = a.s();
                this.requestMethod = a.s();
                Builder builder = new Builder();
                int access$1000 = Cache.readInt(a);
                for (int i2 = Cache.ENTRY_METADATA; i2 < access$1000; i2 += Cache.ENTRY_BODY) {
                    builder.addLenient(a.s());
                }
                this.varyHeaders = builder.build();
                StatusLine parse = StatusLine.parse(a.s());
                this.protocol = parse.protocol;
                this.code = parse.code;
                this.message = parse.message;
                Builder builder2 = new Builder();
                int access$10002 = Cache.readInt(a);
                while (i < access$10002) {
                    builder2.addLenient(a.s());
                    i += Cache.ENTRY_BODY;
                }
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String s = a.s();
                    if (s.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + s + "\"");
                    }
                    this.handshake = Handshake.get(a.s(), readCertificateList(a), readCertificateList(a));
                } else {
                    this.handshake = null;
                }
                abVar.close();
            } catch (Throwable th) {
                abVar.close();
            }
        }

        public Entry(Response response) {
            this.url = response.request().urlString();
            this.varyHeaders = OkHeaders.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
        }

        public void writeTo(Editor editor) throws IOException {
            int i;
            int i2 = Cache.ENTRY_METADATA;
            i a = q.a(editor.newSink(Cache.ENTRY_METADATA));
            a.b(this.url);
            a.i(10);
            a.b(this.requestMethod);
            a.i(10);
            a.l((long) this.varyHeaders.size());
            a.i(10);
            int size = this.varyHeaders.size();
            for (i = Cache.ENTRY_METADATA; i < size; i += Cache.ENTRY_BODY) {
                a.b(this.varyHeaders.name(i));
                a.b(": ");
                a.b(this.varyHeaders.value(i));
                a.i(10);
            }
            a.b(new StatusLine(this.protocol, this.code, this.message).toString());
            a.i(10);
            a.l((long) this.responseHeaders.size());
            a.i(10);
            i = this.responseHeaders.size();
            while (i2 < i) {
                a.b(this.responseHeaders.name(i2));
                a.b(": ");
                a.b(this.responseHeaders.value(i2));
                a.i(10);
                i2 += Cache.ENTRY_BODY;
            }
            if (isHttps()) {
                a.i(10);
                a.b(this.handshake.cipherSuite());
                a.i(10);
                writeCertList(a, this.handshake.peerCertificates());
                writeCertList(a, this.handshake.localCertificates());
            }
            a.close();
        }

        private boolean isHttps() {
            return this.url.startsWith("https://");
        }

        private List<Certificate> readCertificateList(j jVar) throws IOException {
            int access$1000 = Cache.readInt(jVar);
            if (access$1000 == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                List<Certificate> arrayList = new ArrayList(access$1000);
                for (int i = Cache.ENTRY_METADATA; i < access$1000; i += Cache.ENTRY_BODY) {
                    String s = jVar.s();
                    f fVar = new f();
                    fVar.a(ByteString.b(s));
                    arrayList.add(instance.generateCertificate(fVar.g()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        private void writeCertList(i iVar, List<Certificate> list) throws IOException {
            try {
                iVar.l((long) list.size());
                iVar.i(10);
                int size = list.size();
                for (int i = Cache.ENTRY_METADATA; i < size; i += Cache.ENTRY_BODY) {
                    iVar.b(ByteString.a(((Certificate) list.get(i)).getEncoded()).b());
                    iVar.i(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public boolean matches(Request request, Response response) {
            return this.url.equals(request.urlString()) && this.requestMethod.equals(request.method()) && OkHeaders.varyMatches(response, this.varyHeaders, request);
        }

        public Response response(Request request, Snapshot snapshot) {
            String str = this.responseHeaders.get("Content-Type");
            String str2 = this.responseHeaders.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).build();
        }
    }

    public Cache(File file, long j) {
        this(file, j, FileSystem.SYSTEM);
    }

    Cache(File file, long j, FileSystem fileSystem) {
        this.internalCache = new InternalCache() {
            public Response get(Request request) throws IOException {
                return Cache.this.get(request);
            }

            public CacheRequest put(Response response) throws IOException {
                return Cache.this.put(response);
            }

            public void remove(Request request) throws IOException {
                Cache.this.remove(request);
            }

            public void update(Response response, Response response2) throws IOException {
                Cache.this.update(response, response2);
            }

            public void trackConditionalCacheHit() {
                Cache.this.trackConditionalCacheHit();
            }

            public void trackResponse(CacheStrategy cacheStrategy) {
                Cache.this.trackResponse(cacheStrategy);
            }
        };
        this.cache = DiskLruCache.create(fileSystem, file, VERSION, ENTRY_COUNT, j);
    }

    private static String urlToKey(Request request) {
        return Util.md5Hex(request.urlString());
    }

    Response get(Request request) {
        try {
            Closeable closeable = this.cache.get(urlToKey(request));
            if (closeable == null) {
                return null;
            }
            try {
                Entry entry = new Entry(closeable.getSource(ENTRY_METADATA));
                Response response = entry.response(request, closeable);
                if (entry.matches(request, response)) {
                    return response;
                }
                Util.closeQuietly(response.body());
                return null;
            } catch (IOException e) {
                Util.closeQuietly(closeable);
                return null;
            }
        } catch (IOException e2) {
            return null;
        }
    }

    private CacheRequest put(Response response) throws IOException {
        Editor editor;
        String method = response.request().method();
        if (HttpMethod.invalidatesCache(response.request().method())) {
            try {
                remove(response.request());
                return null;
            } catch (IOException e) {
                return null;
            }
        } else if (!method.equals("GET") || OkHeaders.hasVaryAll(response)) {
            return null;
        } else {
            Entry entry = new Entry(response);
            try {
                Editor edit = this.cache.edit(urlToKey(response.request()));
                if (edit == null) {
                    return null;
                }
                try {
                    entry.writeTo(edit);
                    return new CacheRequestImpl(edit);
                } catch (IOException e2) {
                    editor = edit;
                    abortQuietly(editor);
                    return null;
                }
            } catch (IOException e3) {
                editor = null;
                abortQuietly(editor);
                return null;
            }
        }
    }

    private void remove(Request request) throws IOException {
        this.cache.remove(urlToKey(request));
    }

    private void update(Response response, Response response2) {
        Entry entry = new Entry(response2);
        try {
            Editor edit = ((CacheResponseBody) response.body()).snapshot.edit();
            if (edit != null) {
                entry.writeTo(edit);
                edit.commit();
            }
        } catch (IOException e) {
            abortQuietly(null);
        }
    }

    private void abortQuietly(Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException e) {
            }
        }
    }

    public void initialize() throws IOException {
        this.cache.initialize();
    }

    public void delete() throws IOException {
        this.cache.delete();
    }

    public void evictAll() throws IOException {
        this.cache.evictAll();
    }

    public Iterator<String> urls() throws IOException {
        return new Iterator<String>() {
            boolean canRemove;
            final Iterator<Snapshot> delegate;
            String nextUrl;

            {
                this.delegate = Cache.this.cache.snapshots();
            }

            public boolean hasNext() {
                if (this.nextUrl != null) {
                    return true;
                }
                this.canRemove = false;
                while (this.delegate.hasNext()) {
                    Snapshot snapshot = (Snapshot) this.delegate.next();
                    try {
                        this.nextUrl = q.a(snapshot.getSource(Cache.ENTRY_METADATA)).s();
                        snapshot.close();
                        return true;
                    } catch (IOException e) {
                        snapshot.close();
                    } catch (Throwable th) {
                        snapshot.close();
                    }
                }
                return false;
            }

            public String next() {
                if (hasNext()) {
                    String str = this.nextUrl;
                    this.nextUrl = null;
                    this.canRemove = true;
                    return str;
                }
                throw new NoSuchElementException();
            }

            public void remove() {
                if (this.canRemove) {
                    this.delegate.remove();
                    return;
                }
                throw new IllegalStateException("remove() before next()");
            }
        };
    }

    public synchronized int getWriteAbortCount() {
        return this.writeAbortCount;
    }

    public synchronized int getWriteSuccessCount() {
        return this.writeSuccessCount;
    }

    public long getSize() throws IOException {
        return this.cache.size();
    }

    public long getMaxSize() {
        return this.cache.getMaxSize();
    }

    public void flush() throws IOException {
        this.cache.flush();
    }

    public void close() throws IOException {
        this.cache.close();
    }

    public File getDirectory() {
        return this.cache.getDirectory();
    }

    public boolean isClosed() {
        return this.cache.isClosed();
    }

    private synchronized void trackResponse(CacheStrategy cacheStrategy) {
        this.requestCount += ENTRY_BODY;
        if (cacheStrategy.networkRequest != null) {
            this.networkCount += ENTRY_BODY;
        } else if (cacheStrategy.cacheResponse != null) {
            this.hitCount += ENTRY_BODY;
        }
    }

    private synchronized void trackConditionalCacheHit() {
        this.hitCount += ENTRY_BODY;
    }

    public synchronized int getNetworkCount() {
        return this.networkCount;
    }

    public synchronized int getHitCount() {
        return this.hitCount;
    }

    public synchronized int getRequestCount() {
        return this.requestCount;
    }

    private static int readInt(j jVar) throws IOException {
        try {
            long o = jVar.o();
            String s = jVar.s();
            if (o >= 0 && o <= 2147483647L && s.isEmpty()) {
                return (int) o;
            }
            throw new IOException("expected an int but was \"" + o + s + "\"");
        } catch (NumberFormatException e) {
            throw new IOException(e.getMessage());
        }
    }
}
