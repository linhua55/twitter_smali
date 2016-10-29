package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.DiskLruCache;
import com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.Editor;
import com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.Headers;
import com.squareup.okhttp.v_1_5_1.internal.http.Headers.Builder;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpMethod;
import com.squareup.okhttp.v_1_5_1.internal.http.Request;
import com.squareup.okhttp.v_1_5_1.internal.http.Response;
import com.squareup.okhttp.v_1_5_1.internal.http.Response.Body;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public final class HttpResponseCache extends ResponseCache implements OkResponseCache {
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.HttpResponseCache.1 */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$okhttp$v_1_5_1$ResponseSource;

        static {
            $SwitchMap$com$squareup$okhttp$v_1_5_1$ResponseSource = new int[ResponseSource.values().length];
            try {
                $SwitchMap$com$squareup$okhttp$v_1_5_1$ResponseSource[ResponseSource.CACHE.ordinal()] = HttpResponseCache.ENTRY_BODY;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$v_1_5_1$ResponseSource[ResponseSource.CONDITIONAL_CACHE.ordinal()] = HttpResponseCache.ENTRY_COUNT;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$v_1_5_1$ResponseSource[ResponseSource.NETWORK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* compiled from: Twttr */
    final class CacheRequestImpl extends CacheRequest {
        private OutputStream body;
        private OutputStream cacheOut;
        private boolean done;
        private final Editor editor;

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.v_1_5_1.HttpResponseCache.CacheRequestImpl.1 */
        class AnonymousClass1 extends FilterOutputStream {
            final /* synthetic */ Editor val$editor;
            final /* synthetic */ HttpResponseCache val$this$0;

            AnonymousClass1(OutputStream outputStream, HttpResponseCache httpResponseCache, Editor editor) {
                this.val$this$0 = httpResponseCache;
                this.val$editor = editor;
                super(outputStream);
            }

            public void close() throws IOException {
                synchronized (HttpResponseCache.this) {
                    if (CacheRequestImpl.this.done) {
                        return;
                    }
                    CacheRequestImpl.this.done = true;
                    HttpResponseCache.this.writeSuccessCount = HttpResponseCache.this.writeSuccessCount + HttpResponseCache.ENTRY_BODY;
                    super.close();
                    this.val$editor.commit();
                }
            }

            public void write(byte[] bArr, int i, int i2) throws IOException {
                this.out.write(bArr, i, i2);
            }
        }

        public CacheRequestImpl(Editor editor) throws IOException {
            this.editor = editor;
            this.cacheOut = editor.newOutputStream(HttpResponseCache.ENTRY_BODY);
            this.body = new AnonymousClass1(this.cacheOut, HttpResponseCache.this, editor);
        }

        public void abort() {
            synchronized (HttpResponseCache.this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                HttpResponseCache.this.writeAbortCount = HttpResponseCache.this.writeAbortCount + HttpResponseCache.ENTRY_BODY;
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException e) {
                }
            }
        }

        public OutputStream getBody() throws IOException {
            return this.body;
        }
    }

    /* compiled from: Twttr */
    class CacheResponseBody extends Body {
        private final InputStream bodyIn;
        private final String contentLength;
        private final String contentType;
        private final Snapshot snapshot;

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.v_1_5_1.HttpResponseCache.CacheResponseBody.1 */
        class AnonymousClass1 extends FilterInputStream {
            final /* synthetic */ Snapshot val$snapshot;

            AnonymousClass1(InputStream inputStream, Snapshot snapshot) {
                this.val$snapshot = snapshot;
                super(inputStream);
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
            this.bodyIn = new AnonymousClass1(snapshot.getInputStream(HttpResponseCache.ENTRY_BODY), snapshot);
        }

        public boolean ready() throws IOException {
            return true;
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

        public InputStream byteStream() {
            return this.bodyIn;
        }
    }

    /* compiled from: Twttr */
    final class Entry {
        private final Handshake handshake;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final String statusLine;
        private final String url;
        private final Headers varyHeaders;

        public Entry(InputStream inputStream) throws IOException {
            int i = HttpResponseCache.ENTRY_METADATA;
            try {
                BufferedSource buffer = Okio.buffer(Okio.source(inputStream));
                this.url = buffer.readUtf8Line(true);
                this.requestMethod = buffer.readUtf8Line(true);
                Builder builder = new Builder();
                int access$400 = HttpResponseCache.readInt(buffer);
                for (int i2 = HttpResponseCache.ENTRY_METADATA; i2 < access$400; i2 += HttpResponseCache.ENTRY_BODY) {
                    builder.addLine(buffer.readUtf8Line(true));
                }
                this.varyHeaders = builder.build();
                this.statusLine = buffer.readUtf8Line(true);
                Builder builder2 = new Builder();
                int access$4002 = HttpResponseCache.readInt(buffer);
                while (i < access$4002) {
                    builder2.addLine(buffer.readUtf8Line(true));
                    i += HttpResponseCache.ENTRY_BODY;
                }
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String readUtf8Line = buffer.readUtf8Line(true);
                    if (readUtf8Line.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + readUtf8Line + "\"");
                    }
                    this.handshake = Handshake.get(buffer.readUtf8Line(true), readCertificateList(buffer), readCertificateList(buffer));
                } else {
                    this.handshake = null;
                }
                inputStream.close();
            } catch (Throwable th) {
                inputStream.close();
            }
        }

        public Entry(Response response) {
            this.url = response.request().urlString();
            this.varyHeaders = response.request().headers().getAll(response.getVaryFields());
            this.requestMethod = response.request().method();
            this.statusLine = response.statusLine();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
        }

        public void writeTo(Editor editor) throws IOException {
            int i = HttpResponseCache.ENTRY_METADATA;
            Writer bufferedWriter = new BufferedWriter(new OutputStreamWriter(editor.newOutputStream(HttpResponseCache.ENTRY_METADATA), Util.UTF_8));
            bufferedWriter.write(this.url + '\n');
            bufferedWriter.write(this.requestMethod + '\n');
            bufferedWriter.write(Integer.toString(this.varyHeaders.size()) + '\n');
            for (int i2 = HttpResponseCache.ENTRY_METADATA; i2 < this.varyHeaders.size(); i2 += HttpResponseCache.ENTRY_BODY) {
                bufferedWriter.write(this.varyHeaders.name(i2) + ": " + this.varyHeaders.value(i2) + '\n');
            }
            bufferedWriter.write(this.statusLine + '\n');
            bufferedWriter.write(Integer.toString(this.responseHeaders.size()) + '\n');
            while (i < this.responseHeaders.size()) {
                bufferedWriter.write(this.responseHeaders.name(i) + ": " + this.responseHeaders.value(i) + '\n');
                i += HttpResponseCache.ENTRY_BODY;
            }
            if (isHttps()) {
                bufferedWriter.write(10);
                bufferedWriter.write(this.handshake.cipherSuite() + '\n');
                writeCertArray(bufferedWriter, this.handshake.peerCertificates());
                writeCertArray(bufferedWriter, this.handshake.localCertificates());
            }
            bufferedWriter.close();
        }

        private boolean isHttps() {
            return this.url.startsWith("https://");
        }

        private List<Certificate> readCertificateList(BufferedSource bufferedSource) throws IOException {
            int access$400 = HttpResponseCache.readInt(bufferedSource);
            if (access$400 == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                List<Certificate> arrayList = new ArrayList(access$400);
                for (int i = HttpResponseCache.ENTRY_METADATA; i < access$400; i += HttpResponseCache.ENTRY_BODY) {
                    arrayList.add(instance.generateCertificate(new ByteArrayInputStream(ByteString.decodeBase64(bufferedSource.readUtf8Line(true)).toByteArray())));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        private void writeCertArray(Writer writer, List<Certificate> list) throws IOException {
            try {
                writer.write(Integer.toString(list.size()) + '\n');
                int size = list.size();
                for (int i = HttpResponseCache.ENTRY_METADATA; i < size; i += HttpResponseCache.ENTRY_BODY) {
                    writer.write(ByteString.of(((Certificate) list.get(i)).getEncoded()).base64() + '\n');
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public boolean matches(Request request, Response response) {
            return this.url.equals(request.urlString()) && this.requestMethod.equals(request.method()) && response.varyMatches(this.varyHeaders, request);
        }

        public Response response(Request request, Snapshot snapshot) {
            return new Response.Builder().request(request).statusLine(this.statusLine).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, this.responseHeaders.get("Content-Type"), this.responseHeaders.get("Content-Length"))).handshake(this.handshake).build();
        }
    }

    public HttpResponseCache(File file, long j) throws IOException {
        this.cache = DiskLruCache.open(file, VERSION, ENTRY_COUNT, j);
    }

    public CacheResponse get(URI uri, String str, Map<String, List<String>> map) throws IOException {
        throw new UnsupportedOperationException("This is not a general purpose response cache.");
    }

    public CacheRequest put(URI uri, URLConnection uRLConnection) throws IOException {
        throw new UnsupportedOperationException("This is not a general purpose response cache.");
    }

    private static String urlToKey(Request request) {
        return Util.hash(request.urlString());
    }

    public Response get(Request request) {
        try {
            Snapshot snapshot = this.cache.get(urlToKey(request));
            if (snapshot == null) {
                return null;
            }
            Entry entry = new Entry(snapshot.getInputStream(ENTRY_METADATA));
            Response response = entry.response(request, snapshot);
            if (entry.matches(request, response)) {
                return response;
            }
            Util.closeQuietly(response.body());
            return null;
        } catch (IOException e) {
            return null;
        }
    }

    public CacheRequest put(Response response) throws IOException {
        Editor editor;
        String method = response.request().method();
        if (maybeRemove(response.request()) || !method.equals("GET") || response.hasVaryAll()) {
            return null;
        }
        Entry entry = new Entry(response);
        try {
            Editor edit = this.cache.edit(urlToKey(response.request()));
            if (edit == null) {
                return null;
            }
            try {
                entry.writeTo(edit);
                return new CacheRequestImpl(edit);
            } catch (IOException e) {
                editor = edit;
                abortQuietly(editor);
                return null;
            }
        } catch (IOException e2) {
            editor = null;
            abortQuietly(editor);
            return null;
        }
    }

    public boolean maybeRemove(Request request) {
        if (!HttpMethod.invalidatesCache(request.method())) {
            return false;
        }
        try {
            this.cache.remove(urlToKey(request));
        } catch (IOException e) {
        }
        return true;
    }

    public void update(Response response, Response response2) {
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

    public void delete() throws IOException {
        this.cache.delete();
    }

    public synchronized int getWriteAbortCount() {
        return this.writeAbortCount;
    }

    public synchronized int getWriteSuccessCount() {
        return this.writeSuccessCount;
    }

    public long getSize() {
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

    public synchronized void trackResponse(ResponseSource responseSource) {
        this.requestCount += ENTRY_BODY;
        switch (AnonymousClass1.$SwitchMap$com$squareup$okhttp$v_1_5_1$ResponseSource[responseSource.ordinal()]) {
            case ENTRY_BODY /*1*/:
                this.hitCount += ENTRY_BODY;
                break;
            case ENTRY_COUNT /*2*/:
            case com.google.android.exoplayer.util.Util.TYPE_OTHER /*3*/:
                this.networkCount += ENTRY_BODY;
                break;
        }
    }

    public synchronized void trackConditionalCacheHit() {
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

    private static int readInt(BufferedSource bufferedSource) throws IOException {
        String readUtf8Line = bufferedSource.readUtf8Line(true);
        try {
            return Integer.parseInt(readUtf8Line);
        } catch (NumberFormatException e) {
            throw new IOException("Expected an integer but was \"" + readUtf8Line + "\"");
        }
    }
}
