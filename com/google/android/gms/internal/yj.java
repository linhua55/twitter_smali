package com.google.android.gms.internal;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.io.IOException;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class yj implements ym {
    protected final HttpClient a;

    public yj(HttpClient httpClient) {
        this.a = httpClient;
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, zzk<?> com_google_android_gms_internal_zzk_) throws zza {
        byte[] o = com_google_android_gms_internal_zzk_.o();
        if (o != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(o));
        }
    }

    private static void a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, (String) map.get(str));
        }
    }

    static HttpUriRequest b(zzk<?> com_google_android_gms_internal_zzk_, Map<String, String> map) throws zza {
        HttpEntityEnclosingRequestBase httpPost;
        switch (com_google_android_gms_internal_zzk_.b()) {
            case TtmlStyle.UNSPECIFIED /*-1*/:
                byte[] k = com_google_android_gms_internal_zzk_.k();
                if (k == null) {
                    return new HttpGet(com_google_android_gms_internal_zzk_.d());
                }
                HttpUriRequest httpPost2 = new HttpPost(com_google_android_gms_internal_zzk_.d());
                httpPost2.addHeader("Content-Type", com_google_android_gms_internal_zzk_.j());
                httpPost2.setEntity(new ByteArrayEntity(k));
                return httpPost2;
            case Util.TYPE_DASH /*0*/:
                return new HttpGet(com_google_android_gms_internal_zzk_.d());
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                httpPost = new HttpPost(com_google_android_gms_internal_zzk_.d());
                httpPost.addHeader("Content-Type", com_google_android_gms_internal_zzk_.n());
                a(httpPost, (zzk) com_google_android_gms_internal_zzk_);
                return httpPost;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                httpPost = new HttpPut(com_google_android_gms_internal_zzk_.d());
                httpPost.addHeader("Content-Type", com_google_android_gms_internal_zzk_.n());
                a(httpPost, (zzk) com_google_android_gms_internal_zzk_);
                return httpPost;
            case Util.TYPE_OTHER /*3*/:
                return new HttpDelete(com_google_android_gms_internal_zzk_.d());
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return new HttpHead(com_google_android_gms_internal_zzk_.d());
            case EbmlReader.TYPE_FLOAT /*5*/:
                return new HttpOptions(com_google_android_gms_internal_zzk_.d());
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return new HttpTrace(com_google_android_gms_internal_zzk_.d());
            case C.ENCODING_DTS /*7*/:
                httpPost = new yk(com_google_android_gms_internal_zzk_.d());
                httpPost.addHeader("Content-Type", com_google_android_gms_internal_zzk_.n());
                a(httpPost, (zzk) com_google_android_gms_internal_zzk_);
                return httpPost;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    public HttpResponse a(zzk<?> com_google_android_gms_internal_zzk_, Map<String, String> map) throws IOException, zza {
        HttpUriRequest b = b(com_google_android_gms_internal_zzk_, map);
        a(b, (Map) map);
        a(b, com_google_android_gms_internal_zzk_.a());
        a(b);
        HttpParams params = b.getParams();
        int r = com_google_android_gms_internal_zzk_.r();
        HttpConnectionParams.setConnectionTimeout(params, Factory.DEFAULT_MIN_REBUFFER_MS);
        HttpConnectionParams.setSoTimeout(params, r);
        return this.a.execute(b);
    }

    protected void a(HttpUriRequest httpUriRequest) throws IOException {
    }
}
