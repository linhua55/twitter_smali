package com.twitter.library.service;

import android.content.Context;
import android.net.Uri;
import android.util.Pair;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.network.a;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.bve;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public final class e {
    final ArrayList<BasicNameValuePair> a;
    private final ArrayList<Pair<String, String>> b;
    private final Context c;
    private HttpEntity d;
    private String e;
    private final StringBuilder f;
    private RequestMethod g;
    private String h;
    private a i;
    private String j;
    private boolean k;

    e(Context context) {
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.d = null;
        this.k = true;
        this.j = "https";
        this.h = "api.twitter.com";
        this.e = "1.1";
        this.f = new StringBuilder();
        this.g = RequestMethod.a;
        this.c = context.getApplicationContext();
    }

    public e a(Object... objArr) {
        b(objArr);
        this.f.append(".json");
        return this;
    }

    public e b(Object... objArr) {
        if (objArr != null) {
            for (Object obj : objArr) {
                if (obj.toString().charAt(0) != '/') {
                    this.f.append('/');
                }
                this.f.append(Uri.encode(obj.toString(), "/"));
            }
        }
        return this;
    }

    public e a(String str) {
        this.e = str;
        return this;
    }

    public e a(RequestMethod requestMethod) {
        if (requestMethod != null) {
            this.g = requestMethod;
        }
        return this;
    }

    public e a(a aVar) {
        this.i = aVar;
        return this;
    }

    public e a(String str, String str2) {
        this.a.add(new BasicNameValuePair(str, str2));
        return this;
    }

    public e a(String str, boolean z) {
        a(str, String.valueOf(z));
        return this;
    }

    public e a(String str, long j) {
        a(str, String.valueOf(j));
        return this;
    }

    public e a(String str, String[] strArr) {
        a(str, aj.a(",", strArr));
        return this;
    }

    public e a(String str, long[] jArr) {
        int length = jArr.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = String.valueOf(jArr[i]);
        }
        a(str, strArr);
        return this;
    }

    public e a(String str, Collection<?> collection) {
        String[] strArr = new String[collection.size()];
        int i = 0;
        for (Object valueOf : collection) {
            strArr[i] = String.valueOf(valueOf);
            i++;
        }
        a(str, strArr);
        return this;
    }

    public e a(String str, double d) {
        a(str, String.valueOf(d));
        return this;
    }

    public e b(String str, String str2) {
        this.b.add(new Pair(str, str2));
        return this;
    }

    public e b(String str) {
        if (aj.a(str)) {
            throw new IllegalArgumentException("host cannot be null");
        } else if (str.indexOf(47) != -1) {
            throw new IllegalArgumentException("Invalid host: " + str);
        } else {
            this.h = str;
            return this;
        }
    }

    public e a(HttpEntity httpEntity) {
        this.d = httpEntity;
        return this;
    }

    public d a() {
        HttpEntity httpEntity;
        StringBuilder append = new StringBuilder().append(this.j).append("://").append(this.h);
        if (aj.b(this.e)) {
            append.append('/').append(this.e);
        }
        append.append(this.f);
        if (this.g.a()) {
            if (this.d != null) {
                HttpEntity httpEntity2 = this.d;
                if (this.a.isEmpty()) {
                    httpEntity = httpEntity2;
                } else {
                    a(append, this.a);
                    httpEntity = httpEntity2;
                }
            } else {
                if (!this.a.isEmpty()) {
                    StringEntity stringEntity;
                    String a = aq.a(this.a);
                    if (a != null) {
                        try {
                            stringEntity = new StringEntity(a, Util.UTF_8);
                            stringEntity.setContentType("application/x-www-form-urlencoded");
                        } catch (UnsupportedEncodingException e) {
                            stringEntity = null;
                        }
                    } else {
                        stringEntity = null;
                    }
                    Object obj = stringEntity;
                }
                httpEntity = null;
            }
        } else if (this.d != null) {
            throw new UnsupportedOperationException("HttpEntity not allowed in GET");
        } else {
            if (!this.a.isEmpty()) {
                a(append, this.a);
            }
            httpEntity = null;
        }
        return new d(append, this.g, httpEntity, this.b, this.i, this.k);
    }

    public e c(String str) {
        if (aj.a(str)) {
            throw new IllegalArgumentException("scheme cannot be empty or null");
        } else if (str.indexOf(47) == -1 && str.indexOf(58) == -1) {
            this.j = str;
            return this;
        } else {
            throw new IllegalArgumentException("Invalid scheme: " + str);
        }
    }

    public e b() {
        a("include_cards", true);
        a("cards_platform", "Android-12");
        return this;
    }

    public e c() {
        if (bve.b().d()) {
            a("tweet_mode", "extended");
        }
        return this;
    }

    public e d() {
        if (d.a("include_blocked_by_and_blocking_in_requests_enabled")) {
            a("include_blocking", true);
            a("include_blocked_by", true);
        }
        return this;
    }

    public e e() {
        n d = n.d();
        d.c("stickerInfo");
        d.c("mediaRestrictions");
        d.c("altText");
        a("ext", (Collection) d.q());
        return this;
    }

    private void a(StringBuilder stringBuilder, ArrayList<BasicNameValuePair> arrayList) {
        stringBuilder.append('?');
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            BasicNameValuePair basicNameValuePair = (BasicNameValuePair) this.a.get(i);
            stringBuilder.append(a.a(basicNameValuePair.getName())).append('=').append(a.a(basicNameValuePair.getValue()));
            if (i < size - 1) {
                stringBuilder.append('&');
            }
        }
    }
}
