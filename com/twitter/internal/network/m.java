package com.twitter.internal.network;

import com.google.android.exoplayer.util.MpegAudioHeader;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import cun;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* compiled from: Twttr */
public class m extends HttpOperation<HttpURLConnection, HttpURLConnection> {
    private final l g;

    protected /* synthetic */ Object a() throws IOException {
        return t();
    }

    protected /* synthetic */ InputStream d(Object obj) throws IOException {
        return e((HttpURLConnection) obj);
    }

    protected /* synthetic */ void e(Object obj) {
        g((HttpURLConnection) obj);
    }

    protected /* synthetic */ Object f(Object obj) throws IOException {
        return h((HttpURLConnection) obj);
    }

    protected /* synthetic */ Map g(Object obj) {
        return i((HttpURLConnection) obj);
    }

    protected /* synthetic */ int h(Object obj) throws IOException {
        return j((HttpURLConnection) obj);
    }

    protected /* synthetic */ String i(Object obj) throws IOException {
        return k((HttpURLConnection) obj);
    }

    protected /* synthetic */ void j(Object obj) {
        f((HttpURLConnection) obj);
    }

    protected /* synthetic */ HttpOperation$Protocol k(Object obj) {
        return d((HttpURLConnection) obj);
    }

    public m(l lVar, URI uri, RequestMethod requestMethod, i iVar) {
        super(requestMethod, uri, iVar);
        this.g = lVar;
    }

    protected String a(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getContentEncoding();
    }

    protected String b(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getContentType();
    }

    protected int c(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getContentLength();
    }

    protected void a(HttpURLConnection httpURLConnection, int i) {
        httpURLConnection.setReadTimeout(i);
    }

    protected String d() {
        return "HttpURLConnection";
    }

    protected HttpOperation$Protocol d(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(null);
        if (headerField == null || headerField.length() < 8) {
            return null;
        }
        return HttpOperation$Protocol.a(headerField.substring(0, 8));
    }

    protected InputStream e(HttpURLConnection httpURLConnection) throws IOException {
        InputStream errorStream = httpURLConnection.getErrorStream();
        return errorStream != null ? errorStream : httpURLConnection.getInputStream();
    }

    protected HttpURLConnection t() throws IOException {
        HttpURLConnection a = this.g.a(i().toURL());
        a.setRequestMethod(h().toString());
        a("Accept-Encoding", "gzip");
        return a;
    }

    protected void f(HttpURLConnection httpURLConnection) {
        httpURLConnection.disconnect();
    }

    protected void a(HttpURLConnection httpURLConnection, String str, String str2) {
        httpURLConnection.setRequestProperty(str, str2);
    }

    protected void g(HttpURLConnection httpURLConnection) {
        httpURLConnection.disconnect();
    }

    protected HttpURLConnection h(HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.connect();
        HttpEntity e = e();
        if (e != null) {
            b(httpURLConnection, e);
        }
        return httpURLConnection;
    }

    protected Map<String, List<String>> i(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderFields();
    }

    protected int j(HttpURLConnection httpURLConnection) throws IOException {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            return httpURLConnection.getResponseCode();
        }
    }

    protected String k(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getResponseMessage();
    }

    protected String a(HttpURLConnection httpURLConnection, String str, int i) {
        Map headerFields = httpURLConnection.getHeaderFields();
        if (headerFields != null) {
            List list = (List) headerFields.get(str);
            if (list != null && list.size() > i) {
                return (String) list.get(i);
            }
        }
        return null;
    }

    protected void a(HttpURLConnection httpURLConnection, HttpEntity httpEntity) {
        if (httpEntity != null) {
            httpURLConnection.setDoOutput(true);
            Header contentType = httpEntity.getContentType();
            if (contentType != null && a("Content-Type") == null) {
                httpURLConnection.setRequestProperty("Content-Type", contentType.getValue());
            }
            if (httpEntity.isChunked()) {
                httpURLConnection.setChunkedStreamingMode(MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
                return;
            } else if (httpEntity.isStreaming()) {
                httpURLConnection.setFixedLengthStreamingMode((int) httpEntity.getContentLength());
                return;
            } else {
                a("Content-Length", String.valueOf(httpEntity.getContentLength()));
                return;
            }
        }
        httpURLConnection.setDoOutput(false);
    }

    private void b(HttpURLConnection httpURLConnection, HttpEntity httpEntity) throws IOException {
        Closeable bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        long b = this.b.b();
        httpEntity.writeTo(bufferedOutputStream);
        this.f = this.b.b() - b;
        cun.a(bufferedOutputStream);
        cun.a(httpEntity.getContent());
    }
}
