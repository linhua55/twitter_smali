package com.twitter.library.network;

import android.support.v7.recyclerview.BuildConfig;
import android.util.Pair;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.model.account.OAuthToken;
import com.twitter.util.aj;
import com.twitter.util.m;
import com.twitter.util.n;
import cxs;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class w extends a<OAuthToken> {
    public static final byte[] a;
    public static final byte[] b;
    public static final String c;
    public static final String d;
    public static final byte[] e;
    public static final String f;
    public static final byte[] g;
    public static final byte[] h;
    public static final String i;
    public static final String j;
    private static final SecureRandom k;
    private static final Comparator<Pair<String, String>> l;
    private static final Comparator<Pair<String, String>> m;
    private final OAuthToken n;
    private final int o;
    private final String p;
    private final String q;
    private final String r;

    public /* synthetic */ Object a() {
        return b();
    }

    static {
        a = new byte[]{(byte) -29, (byte) -88, (byte) -64, (byte) -95, (byte) -61, (byte) -89, (byte) -44, (byte) -68, (byte) -88, (byte) -98, (byte) -32, (byte) -63, (byte) -30, (byte) -96, (byte) -100, (byte) -63, (byte) -98, (byte) -80, (byte) -31, (byte) -97};
        b = new byte[]{(byte) -44, (byte) -77, (byte) -93, (byte) -31, (byte) -35, (byte) -47, (byte) -48, (byte) -76, (byte) -76, (byte) -93, (byte) -78, (byte) -48, (byte) -32, (byte) -61, (byte) -86, (byte) -35, (byte) -56, (byte) -81, (byte) -33, (byte) -27, (byte) -93, (byte) -87, (byte) -81, (byte) -61, (byte) -94, (byte) -65, (byte) -47, (byte) -49, (byte) -97, (byte) -66, (byte) -66, (byte) -53, (byte) -61, (byte) -84, (byte) -67, (byte) -96, (byte) -58, (byte) -64, (byte) -94, (byte) -33, (byte) -91, (byte) -99, (byte) -93};
        c = a.a((byte) 22, a);
        d = a.a((byte) 22, b);
        e = new byte[]{(byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -48, (byte) -66, (byte) -100, (byte) -43, (byte) -97, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -43, (byte) -93, (byte) -78, (byte) -33, (byte) -59, (byte) -47, (byte) -86, (byte) -83, (byte) -43, (byte) -15, (byte) -28, (byte) -48, (byte) -87, (byte) -100, (byte) -78, (byte) -64, (byte) -91, (byte) -97, (byte) -51, (byte) -93, (byte) -44, (byte) -65, (byte) -43, (byte) -32, (byte) -85, (byte) -87, (byte) -87, (byte) -98, (byte) -63, (byte) -89, (byte) -15, (byte) -29, (byte) -46, (byte) -60, (byte) -100, (byte) -97, (byte) -66, (byte) -32, (byte) -64, (byte) -64, (byte) -31, (byte) -93, (byte) -29, (byte) -44, (byte) -77, (byte) -66, (byte) -97, (byte) -87, (byte) -90, (byte) -48, (byte) -56, (byte) -92, (byte) -86, (byte) -66, (byte) -51, (byte) -99, (byte) -92, (byte) -79, (byte) -54, (byte) -32, (byte) -44, (byte) -77, (byte) -84, (byte) -62, (byte) -51, (byte) -49, (byte) -67, (byte) -61, (byte) -92, (byte) -29, (byte) -43, (byte) -65, (byte) -86, (byte) -45, (byte) -63, (byte) -77};
        f = a.a((byte) 22, e);
        g = new byte[]{(byte) -110, (byte) -93, (byte) -103, (byte) -108, (byte) -92, (byte) -42, (byte) -66, (byte) -58, (byte) -114, (byte) -77, (byte) -74, (byte) -103, (byte) -100, (byte) -99, (byte) -41, (byte) -68, (byte) -73, (byte) -95, (byte) -83, (byte) -95, (byte) -95, (byte) -91, (byte) -50, (byte) -110, (byte) -108, (byte) -83, (byte) -47, (byte) -83, (byte) -106, (byte) -79, (byte) -104, (byte) -81, (byte) -92, (byte) -93, (byte) -61, (byte) -44, (byte) -104, (byte) -113, (byte) -66, (byte) -79, (byte) -104};
        h = new byte[]{(byte) -102, (byte) -50, (byte) -74, (byte) -108, (byte) -107, (byte) -107, (byte) -102, (byte) -67, (byte) -104, (byte) -58, (byte) -71, (byte) -64, (byte) -75, (byte) -72, (byte) -58, (byte) -98, (byte) -71, (byte) -68, (byte) -90, (byte) -60, (byte) -49, (byte) -96};
        i = a.a((byte) 7, h);
        j = a.a((byte) 7, g);
        k = new SecureRandom();
        l = new x();
        m = new y();
    }

    public w(OAuthToken oAuthToken) {
        this(oAuthToken, 1, null, c, d);
    }

    public w(OAuthToken oAuthToken, String str, String str2) {
        this(oAuthToken, 1, null, str, str2);
    }

    public w(int i) {
        this(null, i, null, c, d);
    }

    private w(OAuthToken oAuthToken, int i, String str, String str2, String str3) {
        this.n = oAuthToken;
        this.o = i;
        this.p = str;
        this.q = str2;
        this.r = str3;
    }

    public void a(HttpOperation httpOperation, long j) {
        switch (this.o) {
            case WireMessage.WIRE_CHAT /*1*/:
                httpOperation.a("Authorization", a(httpOperation.h(), httpOperation.i(), httpOperation.e(), j));
            case WireMessage.WIRE_CONTROL /*2*/:
                String str = this.p;
                String a = a(httpOperation.h(), httpOperation.i(), httpOperation.e(), j);
                httpOperation.a("X-Auth-Service-Provider", str);
                httpOperation.a("X-Verify-Credentials-Authorization", a);
            default:
        }
    }

    public OAuthToken b() {
        return this.n;
    }

    public String a(RequestMethod requestMethod, URI uri, HttpEntity httpEntity, long j) {
        String str;
        String str2;
        if (this.n != null) {
            str = this.n.b;
            str2 = this.n.a;
        } else {
            str2 = null;
            str = null;
        }
        String str3 = String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(k.nextLong()));
        String l = Long.toString((m.b() + j) / 1000);
        return a(a(a(requestMethod, uri, httpEntity, this.q, str, str3, l), this.r, str2), this.q, str3, l, str);
    }

    public static String a(URI uri) {
        return uri.getScheme() + "://" + uri.getHost() + uri.getRawPath();
    }

    public static String a(RequestMethod requestMethod, URI uri, HttpEntity httpEntity, String str, String str2, String str3, String str4) {
        String rawQuery = uri.getRawQuery();
        CharSequence stringBuilder = new StringBuilder();
        if (rawQuery != null) {
            stringBuilder.append(rawQuery);
        }
        if (httpEntity != null) {
            Header contentType = httpEntity.getContentType();
            if (contentType != null && "application/x-www-form-urlencoded".equals(contentType.getValue())) {
                try {
                    rawQuery = EntityUtils.toString(httpEntity);
                    if (aj.b(stringBuilder)) {
                        stringBuilder.append("&");
                    }
                    stringBuilder.append(rawQuery);
                } catch (IOException e) {
                }
            }
        }
        List<Pair> b = b(stringBuilder.toString(), true);
        b.add(new Pair("oauth_consumer_key", str));
        b.add(new Pair("oauth_nonce", str3));
        b.add(new Pair("oauth_signature_method", "HMAC-SHA1"));
        b.add(new Pair("oauth_timestamp", str4));
        b.add(new Pair("oauth_version", "1.0"));
        if (str2 != null) {
            b.add(new Pair("oauth_token", str2));
        }
        Collections.sort(b, l);
        StringBuilder stringBuilder2 = new StringBuilder(requestMethod.toString());
        stringBuilder2.append("&").append(a.a(a(uri))).append("&");
        int size = b.size();
        int i = 0;
        for (Pair pair : b) {
            stringBuilder2.append(a.a(a.a((String) pair.first))).append("%3D").append(a.a(a.a((String) pair.second)));
            int i2 = i + 1;
            if (i2 < size) {
                stringBuilder2.append("%26");
            }
            i = i2;
        }
        return stringBuilder2.toString();
    }

    public static String a(String str, String str2, String str3, String str4, String str5) {
        if (str5 == null) {
            String str6 = "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\"";
            return String.format("OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\"", new Object[]{"http://api.twitter.com/", "1.0", str3, str4, str, str2, "HMAC-SHA1"});
        }
        str6 = "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\"";
        return String.format("OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\"", new Object[]{"http://api.twitter.com/", "1.0", str5, str3, str4, str, str2, "HMAC-SHA1"});
    }

    public static String a(String str, String str2, String str3) {
        if (str3 == null) {
            try {
                str3 = BuildConfig.VERSION_NAME;
            } catch (InvalidKeyException e) {
                return BuildConfig.VERSION_NAME;
            } catch (NoSuchAlgorithmException e2) {
                return BuildConfig.VERSION_NAME;
            } catch (UnsupportedEncodingException e3) {
                return BuildConfig.VERSION_NAME;
            }
        }
        Key secretKeySpec = new SecretKeySpec((n.a(str2, "UTF8") + '&' + n.a(str3, "UTF8")).getBytes("UTF8"), "HmacSHA1");
        Mac instance = Mac.getInstance("HmacSHA1");
        instance.init(secretKeySpec);
        return n.a(new String(cxs.a(instance.doFinal(str.getBytes("UTF8"))), "UTF8"), "UTF8");
    }

    public static List<Pair<String, String>> a(String str, boolean z) {
        List<Pair<String, String>> b = b(str, z);
        Collections.sort(b, l);
        return b;
    }

    private static List<Pair<String, String>> b(String str, boolean z) {
        List<Pair<String, String>> arrayList = new ArrayList();
        if (str != null) {
            for (String split : str.split("&")) {
                Object b;
                Object b2;
                String[] split2 = split.split("=");
                if (split2.length == 2) {
                    if (z) {
                        b = n.b(split2[0], "UTF8");
                        b2 = n.b(split2[1], "UTF8");
                    } else {
                        b = split2[0];
                        b2 = split2[1];
                    }
                } else if (!aj.b(split2[0])) {
                    b2 = null;
                    b = null;
                } else if (z) {
                    b = n.b(split2[0], "UTF8");
                    b2 = BuildConfig.VERSION_NAME;
                } else {
                    b = split2[0];
                    b2 = BuildConfig.VERSION_NAME;
                }
                if (!(b == null || b2 == null)) {
                    arrayList.add(new Pair(b, b2));
                }
            }
        }
        return arrayList;
    }

    public static String a(List<Pair<String, String>> list, String str) {
        int binarySearch = Collections.binarySearch(list, new Pair(str, null), m);
        if (binarySearch < 0 || binarySearch >= list.size() || !((String) ((Pair) list.get(binarySearch)).first).equals(str)) {
            return null;
        }
        return (String) ((Pair) list.get(binarySearch)).second;
    }
}
