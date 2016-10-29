package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URI;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.zip.GZIPInputStream;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class HttpRequest {
    private static final String[] b;
    private static f c;
    public final URL a;
    private HttpURLConnection d;
    private final String e;
    private i f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;
    private String k;
    private int l;

    /* compiled from: Twttr */
    public class HttpRequestException extends RuntimeException {
        private static final long serialVersionUID = -1170466989781746231L;

        public /* synthetic */ Throwable getCause() {
            return a();
        }

        protected HttpRequestException(IOException iOException) {
            super(iOException);
        }

        public IOException a() {
            return (IOException) super.getCause();
        }
    }

    static {
        b = new String[0];
        c = f.a;
    }

    private static String f(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    private static StringBuilder a(String str, StringBuilder stringBuilder) {
        if (str.indexOf(58) + 2 == str.lastIndexOf(47)) {
            stringBuilder.append('/');
        }
        return stringBuilder;
    }

    private static StringBuilder b(String str, StringBuilder stringBuilder) {
        int indexOf = str.indexOf(63);
        int length = stringBuilder.length() - 1;
        if (indexOf == -1) {
            stringBuilder.append('?');
        } else if (indexOf < length && str.charAt(length) != '&') {
            stringBuilder.append('&');
        }
        return stringBuilder;
    }

    public static String a(CharSequence charSequence) throws HttpRequestException {
        try {
            URL url = new URL(charSequence.toString());
            String host = url.getHost();
            int port = url.getPort();
            if (port != -1) {
                host = host + ':' + Integer.toString(port);
            }
            try {
                String toASCIIString = new URI(url.getProtocol(), host, url.getPath(), url.getQuery(), null).toASCIIString();
                int indexOf = toASCIIString.indexOf(63);
                if (indexOf > 0 && indexOf + 1 < toASCIIString.length()) {
                    toASCIIString = toASCIIString.substring(0, indexOf + 1) + toASCIIString.substring(indexOf + 1).replace("+", "%2B");
                }
                return toASCIIString;
            } catch (Throwable e) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(e);
                throw new HttpRequestException(iOException);
            }
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public static String a(CharSequence charSequence, Map<?, ?> map) {
        String charSequence2 = charSequence.toString();
        if (map == null || map.isEmpty()) {
            return charSequence2;
        }
        StringBuilder stringBuilder = new StringBuilder(charSequence2);
        a(charSequence2, stringBuilder);
        b(charSequence2, stringBuilder);
        Iterator it = map.entrySet().iterator();
        Entry entry = (Entry) it.next();
        stringBuilder.append(entry.getKey().toString());
        stringBuilder.append('=');
        Object value = entry.getValue();
        if (value != null) {
            stringBuilder.append(value);
        }
        while (it.hasNext()) {
            stringBuilder.append('&');
            entry = (Entry) it.next();
            stringBuilder.append(entry.getKey().toString());
            stringBuilder.append('=');
            value = entry.getValue();
            if (value != null) {
                stringBuilder.append(value);
            }
        }
        return stringBuilder.toString();
    }

    public static HttpRequest b(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "GET");
    }

    public static HttpRequest a(CharSequence charSequence, Map<?, ?> map, boolean z) {
        CharSequence a = a(charSequence, (Map) map);
        if (z) {
            a = a(a);
        }
        return b(a);
    }

    public static HttpRequest c(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "POST");
    }

    public static HttpRequest b(CharSequence charSequence, Map<?, ?> map, boolean z) {
        CharSequence a = a(charSequence, (Map) map);
        if (z) {
            a = a(a);
        }
        return c(a);
    }

    public static HttpRequest d(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "PUT");
    }

    public static HttpRequest e(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "DELETE");
    }

    public HttpRequest(CharSequence charSequence, String str) throws HttpRequestException {
        this.d = null;
        this.h = true;
        this.i = false;
        this.j = 8192;
        try {
            this.a = new URL(charSequence.toString());
            this.e = str;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    private Proxy q() {
        return new Proxy(Type.HTTP, new InetSocketAddress(this.k, this.l));
    }

    private HttpURLConnection r() {
        try {
            HttpURLConnection a;
            if (this.k != null) {
                a = c.a(this.a, q());
            } else {
                a = c.a(this.a);
            }
            a.setRequestMethod(this.e);
            return a;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public String toString() {
        return p() + ' ' + o();
    }

    public HttpURLConnection a() {
        if (this.d == null) {
            this.d = r();
        }
        return this.d;
    }

    public int b() throws HttpRequestException {
        try {
            k();
            return a().getResponseCode();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public boolean c() throws HttpRequestException {
        return ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS == b();
    }

    protected ByteArrayOutputStream d() {
        int j = j();
        if (j > 0) {
            return new ByteArrayOutputStream(j);
        }
        return new ByteArrayOutputStream();
    }

    public String a(String str) throws HttpRequestException {
        OutputStream d = d();
        try {
            a(f(), d);
            return d.toString(f(str));
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public String e() throws HttpRequestException {
        return a(h());
    }

    public BufferedInputStream f() throws HttpRequestException {
        return new BufferedInputStream(g(), this.j);
    }

    public InputStream g() throws HttpRequestException {
        if (b() < 400) {
            try {
                InputStream inputStream = a().getInputStream();
            } catch (IOException e) {
                throw new HttpRequestException(e);
            }
        }
        inputStream = a().getErrorStream();
        if (inputStream == null) {
            try {
                inputStream = a().getInputStream();
            } catch (IOException e2) {
                throw new HttpRequestException(e2);
            }
        }
        if (!this.i || !"gzip".equals(i())) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e22) {
            throw new HttpRequestException(e22);
        }
    }

    public HttpRequest a(int i) {
        a().setConnectTimeout(i);
        return this;
    }

    public HttpRequest a(String str, String str2) {
        a().setRequestProperty(str, str2);
        return this;
    }

    public HttpRequest a(Entry<String, String> entry) {
        return a((String) entry.getKey(), (String) entry.getValue());
    }

    public String b(String str) throws HttpRequestException {
        l();
        return a().getHeaderField(str);
    }

    public int c(String str) throws HttpRequestException {
        return a(str, -1);
    }

    public int a(String str, int i) throws HttpRequestException {
        l();
        return a().getHeaderFieldInt(str, i);
    }

    public String b(String str, String str2) {
        return c(b(str), str2);
    }

    protected String c(String str, String str2) {
        if (str == null || str.length() == 0) {
            return null;
        }
        int length = str.length();
        int indexOf = str.indexOf(59) + 1;
        if (indexOf == 0 || indexOf == length) {
            return null;
        }
        int indexOf2 = str.indexOf(59, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = indexOf;
            indexOf = length;
        } else {
            int i = indexOf2;
            indexOf2 = indexOf;
            indexOf = i;
        }
        while (indexOf2 < indexOf) {
            int indexOf3 = str.indexOf(61, indexOf2);
            if (indexOf3 != -1 && indexOf3 < indexOf && str2.equals(str.substring(indexOf2, indexOf3).trim())) {
                String trim = str.substring(indexOf3 + 1, indexOf).trim();
                indexOf3 = trim.length();
                if (indexOf3 != 0) {
                    if (indexOf3 > 2 && '\"' == trim.charAt(0) && '\"' == trim.charAt(indexOf3 - 1)) {
                        return trim.substring(1, indexOf3 - 1);
                    }
                    return trim;
                }
            }
            indexOf++;
            indexOf2 = str.indexOf(59, indexOf);
            if (indexOf2 == -1) {
                indexOf2 = length;
            }
            i = indexOf2;
            indexOf2 = indexOf;
            indexOf = i;
        }
        return null;
    }

    public String h() {
        return b("Content-Type", "charset");
    }

    public HttpRequest a(boolean z) {
        a().setUseCaches(z);
        return this;
    }

    public String i() {
        return b("Content-Encoding");
    }

    public HttpRequest d(String str) {
        return d(str, null);
    }

    public HttpRequest d(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return a("Content-Type", str);
        }
        String str3 = "; charset=";
        return a("Content-Type", str + "; charset=" + str2);
    }

    public int j() {
        return c("Content-Length");
    }

    protected HttpRequest a(InputStream inputStream, OutputStream outputStream) throws IOException {
        return (HttpRequest) new d(this, inputStream, this.h, inputStream, outputStream).call();
    }

    protected HttpRequest k() throws IOException {
        if (this.f != null) {
            if (this.g) {
                this.f.a("\r\n--00content0boundary00--\r\n");
            }
            if (this.h) {
                try {
                    this.f.close();
                } catch (IOException e) {
                }
            } else {
                this.f.close();
            }
            this.f = null;
        }
        return this;
    }

    protected HttpRequest l() throws HttpRequestException {
        try {
            return k();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    protected HttpRequest m() throws IOException {
        if (this.f == null) {
            a().setDoOutput(true);
            this.f = new i(a().getOutputStream(), c(a().getRequestProperty("Content-Type"), "charset"), this.j);
        }
        return this;
    }

    protected HttpRequest n() throws IOException {
        if (this.g) {
            this.f.a("\r\n--00content0boundary00\r\n");
        } else {
            this.g = true;
            d("multipart/form-data; boundary=00content0boundary00").m();
            this.f.a("--00content0boundary00\r\n");
        }
        return this;
    }

    protected HttpRequest a(String str, String str2, String str3) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("form-data; name=\"").append(str);
        if (str2 != null) {
            stringBuilder.append("\"; filename=\"").append(str2);
        }
        stringBuilder.append('\"');
        f("Content-Disposition", stringBuilder.toString());
        if (str3 != null) {
            f("Content-Type", str3);
        }
        return f((CharSequence) "\r\n");
    }

    public HttpRequest e(String str, String str2) {
        return b(str, null, str2);
    }

    public HttpRequest b(String str, String str2, String str3) throws HttpRequestException {
        return a(str, str2, null, str3);
    }

    public HttpRequest a(String str, String str2, String str3, String str4) throws HttpRequestException {
        try {
            n();
            a(str, str2, str3);
            this.f.a(str4);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest a(String str, Number number) throws HttpRequestException {
        return a(str, null, number);
    }

    public HttpRequest a(String str, String str2, Number number) throws HttpRequestException {
        return b(str, str2, number != null ? number.toString() : null);
    }

    public HttpRequest a(String str, String str2, String str3, File file) throws HttpRequestException {
        IOException e;
        Throwable th;
        InputStream bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                HttpRequest a = a(str, str2, str3, bufferedInputStream);
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e2) {
                    }
                }
                return a;
            } catch (IOException e3) {
                e = e3;
                try {
                    throw new HttpRequestException(e);
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e5) {
            e = e5;
            bufferedInputStream = null;
            throw new HttpRequestException(e);
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            throw th;
        }
    }

    public HttpRequest a(String str, String str2, String str3, InputStream inputStream) throws HttpRequestException {
        try {
            n();
            a(str, str2, str3);
            a(inputStream, this.f);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest f(String str, String str2) throws HttpRequestException {
        return f((CharSequence) str).f((CharSequence) ": ").f((CharSequence) str2).f((CharSequence) "\r\n");
    }

    public HttpRequest f(CharSequence charSequence) throws HttpRequestException {
        try {
            m();
            this.f.a(charSequence.toString());
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public URL o() {
        return a().getURL();
    }

    public String p() {
        return a().getRequestMethod();
    }
}
