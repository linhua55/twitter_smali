package com.google.android.gms.internal;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public class yn implements ym {
    private final yo a;
    private final SSLSocketFactory b;

    public yn() {
        this(null);
    }

    public yn(yo yoVar) {
        this(yoVar, null);
    }

    public yn(yo yoVar, SSLSocketFactory sSLSocketFactory) {
        this.a = yoVar;
        this.b = sSLSocketFactory;
    }

    private HttpURLConnection a(URL url, zzk<?> com_google_android_gms_internal_zzk_) throws IOException {
        HttpURLConnection a = a(url);
        int r = com_google_android_gms_internal_zzk_.r();
        a.setConnectTimeout(r);
        a.setReadTimeout(r);
        a.setUseCaches(false);
        a.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.b != null) {
            ((HttpsURLConnection) a).setSSLSocketFactory(this.b);
        }
        return a;
    }

    private static HttpEntity a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        HttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(inputStream);
        basicHttpEntity.setContentLength((long) httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    static void a(HttpURLConnection httpURLConnection, zzk<?> com_google_android_gms_internal_zzk_) throws IOException, zza {
        switch (com_google_android_gms_internal_zzk_.b()) {
            case TtmlStyle.UNSPECIFIED /*-1*/:
                byte[] k = com_google_android_gms_internal_zzk_.k();
                if (k != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", com_google_android_gms_internal_zzk_.j());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(k);
                    dataOutputStream.close();
                }
            case Util.TYPE_DASH /*0*/:
                httpURLConnection.setRequestMethod("GET");
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                httpURLConnection.setRequestMethod("POST");
                b(httpURLConnection, com_google_android_gms_internal_zzk_);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                httpURLConnection.setRequestMethod("PUT");
                b(httpURLConnection, com_google_android_gms_internal_zzk_);
            case Util.TYPE_OTHER /*3*/:
                httpURLConnection.setRequestMethod("DELETE");
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                httpURLConnection.setRequestMethod("HEAD");
            case EbmlReader.TYPE_FLOAT /*5*/:
                httpURLConnection.setRequestMethod("OPTIONS");
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                httpURLConnection.setRequestMethod("TRACE");
            case C.ENCODING_DTS /*7*/:
                httpURLConnection.setRequestMethod("PATCH");
                b(httpURLConnection, com_google_android_gms_internal_zzk_);
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static void b(HttpURLConnection httpURLConnection, zzk<?> com_google_android_gms_internal_zzk_) throws IOException, zza {
        byte[] o = com_google_android_gms_internal_zzk_.o();
        if (o != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", com_google_android_gms_internal_zzk_.n());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(o);
            dataOutputStream.close();
        }
    }

    protected HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    public HttpResponse a(zzk<?> com_google_android_gms_internal_zzk_, Map<String, String> map) throws IOException, zza {
        String a;
        String d = com_google_android_gms_internal_zzk_.d();
        HashMap hashMap = new HashMap();
        hashMap.putAll(com_google_android_gms_internal_zzk_.a());
        hashMap.putAll(map);
        if (this.a != null) {
            a = this.a.a(d);
            if (a == null) {
                throw new IOException("URL blocked by rewriter: " + d);
            }
        }
        a = d;
        HttpURLConnection a2 = a(new URL(a), (zzk) com_google_android_gms_internal_zzk_);
        for (String a3 : hashMap.keySet()) {
            a2.addRequestProperty(a3, (String) hashMap.get(a3));
        }
        a(a2, (zzk) com_google_android_gms_internal_zzk_);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (a2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        HttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(protocolVersion, a2.getResponseCode(), a2.getResponseMessage()));
        basicHttpResponse.setEntity(a(a2));
        for (Entry entry : a2.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader((String) entry.getKey(), (String) ((List) entry.getValue()).get(0)));
            }
        }
        return basicHttpResponse;
    }
}
