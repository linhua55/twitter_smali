package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.j;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public abstract class a {
    private static final Pattern b;
    protected final p a;
    private final String c;
    private final j d;
    private final HttpMethod e;
    private final String f;

    static {
        b = Pattern.compile("http(s?)://[^\\/]+", 2);
    }

    public a(p pVar, String str, String str2, j jVar, HttpMethod httpMethod) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        } else if (jVar == null) {
            throw new IllegalArgumentException("requestFactory must not be null.");
        } else {
            this.a = pVar;
            this.f = str;
            this.c = a(str2);
            this.d = jVar;
            this.e = httpMethod;
        }
    }

    protected String a() {
        return this.c;
    }

    protected HttpRequest b() {
        return a(Collections.emptyMap());
    }

    protected HttpRequest a(Map<String, String> map) {
        return this.d.a(this.e, a(), map).a(false).a(10000).a("User-Agent", "Crashlytics Android SDK/" + this.a.a()).a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    private String a(String str) {
        if (CommonUtils.c(this.f)) {
            return str;
        }
        return b.matcher(str).replaceFirst(this.f);
    }
}
