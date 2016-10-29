package tv.periscope.android.exoplayer.player;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.HttpDataSource;
import com.google.android.exoplayer.upstream.HttpDataSource.HttpDataSourceException;
import com.google.android.exoplayer.upstream.HttpDataSource.InvalidContentTypeException;
import com.google.android.exoplayer.upstream.HttpDataSource.InvalidResponseCodeException;
import com.google.android.exoplayer.upstream.TransferListener;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Predicate;
import com.google.android.exoplayer.util.Util;
import defpackage.ddk;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class a implements HttpDataSource {
    private static final Pattern a;
    private static final AtomicReference<byte[]> b;
    private final boolean c;
    private final int d;
    private final int e;
    private final String f;
    private final Predicate<String> g;
    private final HashMap<String, String> h;
    private final TransferListener i;
    private final ddk j;
    private DataSpec k;
    private HttpURLConnection l;
    private InputStream m;
    private boolean n;
    private long o;
    private long p;
    private long q;
    private long r;

    static {
        a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
        b = new AtomicReference();
    }

    public a(String str, Predicate<String> predicate, TransferListener transferListener, int i, int i2, boolean z, ddk ddk) {
        this.f = Assertions.checkNotEmpty(str);
        this.g = predicate;
        this.i = transferListener;
        this.h = new HashMap();
        this.d = i;
        this.e = i2;
        this.c = z;
        this.j = ddk;
    }

    public String getUri() {
        return this.l == null ? null : this.l.getURL().toString();
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this.l == null ? null : this.l.getHeaderFields();
    }

    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        synchronized (this.h) {
            this.h.put(str, str2);
        }
    }

    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        synchronized (this.h) {
            this.h.remove(str);
        }
    }

    public void clearAllRequestProperties() {
        synchronized (this.h) {
            this.h.clear();
        }
    }

    public long open(DataSpec dataSpec) throws HttpDataSourceException {
        long j = 0;
        this.k = dataSpec;
        this.r = 0;
        this.q = 0;
        try {
            this.l = a(dataSpec);
            try {
                int responseCode = this.l.getResponseCode();
                if (responseCode < ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS || responseCode > 299) {
                    Map headerFields = this.l.getHeaderFields();
                    c();
                    throw new InvalidResponseCodeException(responseCode, headerFields, dataSpec);
                }
                String contentType = this.l.getContentType();
                if (this.g == null || this.g.evaluate(contentType)) {
                    if (responseCode == ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS && dataSpec.position != 0) {
                        j = dataSpec.position;
                    }
                    this.o = j;
                    if ((dataSpec.flags & 1) == 0) {
                        j = a(this.l);
                        j = dataSpec.length != -1 ? dataSpec.length : j != -1 ? j - this.o : -1;
                        this.p = j;
                    } else {
                        this.p = dataSpec.length;
                    }
                    try {
                        this.m = this.l.getInputStream();
                        this.n = true;
                        if (this.i != null) {
                            this.i.onTransferStart();
                        }
                        return this.p;
                    } catch (IOException e) {
                        c();
                        throw new HttpDataSourceException(e, dataSpec, 1);
                    }
                }
                c();
                throw new InvalidContentTypeException(contentType, dataSpec);
            } catch (IOException e2) {
                c();
                throw new HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e2, dataSpec, 1);
            }
        } catch (IOException e22) {
            throw new HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e22, dataSpec, 1);
        }
    }

    public int read(byte[] bArr, int i, int i2) throws HttpDataSourceException {
        try {
            b();
            return a(bArr, i, i2);
        } catch (IOException e) {
            throw new HttpDataSourceException(e, this.k, 2);
        }
    }

    public void close() throws HttpDataSourceException {
        try {
            if (this.m != null) {
                Util.maybeTerminateInputStream(this.l, a());
                this.m.close();
            }
            this.m = null;
            c();
            if (this.n) {
                this.n = false;
                if (this.i != null) {
                    this.i.onTransferEnd();
                }
            }
        } catch (IOException e) {
            throw new HttpDataSourceException(e, this.k, 3);
        } catch (Throwable th) {
            this.m = null;
            c();
            if (this.n) {
                this.n = false;
                if (this.i != null) {
                    this.i.onTransferEnd();
                }
            }
        }
    }

    protected final long a() {
        return this.p == -1 ? this.p : this.p - this.r;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.net.HttpURLConnection a(com.google.android.exoplayer.upstream.DataSpec r14) throws java.io.IOException {
        /*
        r13 = this;
        r9 = 1;
        r10 = 0;
        r2 = new java.net.URL;
        r0 = r14.uri;
        r0 = r0.toString();
        r2.<init>(r0);
        r3 = r14.postBody;
        r4 = r14.position;
        r6 = r14.length;
        r0 = r14.flags;
        r0 = r0 & 1;
        if (r0 == 0) goto L_0x0024;
    L_0x0019:
        r8 = r9;
    L_0x001a:
        r0 = r13.c;
        if (r0 != 0) goto L_0x0026;
    L_0x001e:
        r1 = r13;
        r0 = r1.a(r2, r3, r4, r6, r8, r9);
    L_0x0023:
        return r0;
    L_0x0024:
        r8 = r10;
        goto L_0x001a;
    L_0x0026:
        r0 = r10;
    L_0x0027:
        r11 = r0 + 1;
        r1 = 20;
        if (r0 > r1) goto L_0x0074;
    L_0x002d:
        r1 = r13;
        r9 = r10;
        r1 = r1.a(r2, r3, r4, r6, r8, r9);
        r0 = r1.getResponseCode();
        r9 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r0 == r9) goto L_0x0051;
    L_0x003b:
        r9 = 301; // 0x12d float:4.22E-43 double:1.487E-321;
        if (r0 == r9) goto L_0x0051;
    L_0x003f:
        r9 = 302; // 0x12e float:4.23E-43 double:1.49E-321;
        if (r0 == r9) goto L_0x0051;
    L_0x0043:
        r9 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        if (r0 == r9) goto L_0x0051;
    L_0x0047:
        if (r3 != 0) goto L_0x0072;
    L_0x0049:
        r3 = 307; // 0x133 float:4.3E-43 double:1.517E-321;
        if (r0 == r3) goto L_0x0051;
    L_0x004d:
        r3 = 308; // 0x134 float:4.32E-43 double:1.52E-321;
        if (r0 != r3) goto L_0x0072;
    L_0x0051:
        r3 = 0;
        r0 = "Location";
        r9 = r1.getHeaderField(r0);
        r0 = r1.getHeaderFields();
        r12 = "Set-Cookie";
        r0 = r0.get(r12);
        r0 = (java.util.List) r0;
        r1.disconnect();
        r13.a(r0, r2);
        r2 = a(r2, r9);
        r0 = r11;
        goto L_0x0027;
    L_0x0072:
        r0 = r1;
        goto L_0x0023;
    L_0x0074:
        r0 = new java.net.NoRouteToHostException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Too many redirects: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.android.exoplayer.player.a.a(com.google.android.exoplayer.upstream.DataSpec):java.net.HttpURLConnection");
    }

    private void a(List<String> list, URL url) {
        if (list != null) {
            for (String str : list) {
                if (str != null) {
                    try {
                        for (HttpCookie a : HttpCookie.parse(str)) {
                            this.j.a(a, url);
                        }
                    } catch (Throwable e) {
                        Log.w("DefaultHttpDataSource", "cookie parsing failed", e);
                    }
                }
            }
        }
    }

    private HttpURLConnection a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.d);
        httpURLConnection.setReadTimeout(this.e);
        synchronized (this.h) {
            for (Entry entry : this.h.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!(j == 0 && j2 == -1)) {
            String str = "bytes=" + j + "-";
            if (j2 != -1) {
                str = str + ((j + j2) - 1);
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.f);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        List a = this.j.a(url);
        if (!a.isEmpty()) {
            httpURLConnection.setRequestProperty("Cookie", a(a));
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    static String a(List<HttpCookie> list) {
        int i = 1;
        StringBuilder stringBuilder = new StringBuilder();
        int i2 = 1;
        for (HttpCookie version : list) {
            i2 = Math.min(i2, version.getVersion());
        }
        if (i2 == 1) {
            stringBuilder.append("$Version=\"1\"; ");
        }
        stringBuilder.append(list.get(0));
        while (i < list.size()) {
            stringBuilder.append("; ").append(list.get(i));
            i++;
        }
        return stringBuilder.toString();
    }

    private static URL a(URL url, String str) throws IOException {
        if (str == null) {
            throw new ProtocolException("Null location redirect");
        }
        URL url2 = new URL(url, str);
        String protocol = url2.getProtocol();
        if ("https".equals(protocol) || "http".equals(protocol)) {
            return url2;
        }
        throw new ProtocolException("Unsupported protocol redirect: " + protocol);
    }

    private static long a(HttpURLConnection httpURLConnection) {
        long j = -1;
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (!TextUtils.isEmpty(headerField)) {
            try {
                j = Long.parseLong(headerField);
            } catch (NumberFormatException e) {
                Log.e("DefaultHttpDataSource", "Unexpected Content-Length [" + headerField + "]");
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        if (TextUtils.isEmpty(headerField2)) {
            return j;
        }
        Matcher matcher = a.matcher(headerField2);
        if (!matcher.find()) {
            return j;
        }
        try {
            long parseLong = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            if (j < 0) {
                return parseLong;
            }
            if (j == parseLong) {
                return j;
            }
            Log.w("DefaultHttpDataSource", "Inconsistent headers [" + headerField + "] [" + headerField2 + "]");
            return Math.max(j, parseLong);
        } catch (NumberFormatException e2) {
            Log.e("DefaultHttpDataSource", "Unexpected Content-Range [" + headerField2 + "]");
            return j;
        }
    }

    private void b() throws IOException {
        if (this.q != this.o) {
            Object obj = (byte[]) b.getAndSet(null);
            if (obj == null) {
                obj = new byte[4096];
            }
            while (this.q != this.o) {
                int read = this.m.read(obj, 0, (int) Math.min(this.o - this.q, (long) obj.length));
                if (Thread.interrupted()) {
                    throw new InterruptedIOException();
                } else if (read == -1) {
                    throw new EOFException();
                } else {
                    this.q += (long) read;
                    if (this.i != null) {
                        this.i.onBytesTransferred(read);
                    }
                }
            }
            b.set(obj);
        }
    }

    private int a(byte[] bArr, int i, int i2) throws IOException {
        if (this.p != -1) {
            i2 = (int) Math.min((long) i2, this.p - this.r);
        }
        if (i2 == 0) {
            return -1;
        }
        int read = this.m.read(bArr, i, i2);
        if (read != -1) {
            this.r += (long) read;
            if (this.i != null) {
                this.i.onBytesTransferred(read);
            }
            return read;
        } else if (this.p == -1 || this.p == this.r) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    private void c() {
        if (this.l != null) {
            try {
                this.l.disconnect();
            } catch (Throwable e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.l = null;
        }
    }
}
