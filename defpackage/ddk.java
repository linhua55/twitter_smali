package defpackage;

import java.net.HttpCookie;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: ddk */
public class ddk {
    private final Map<String, Set<HttpCookie>> a;
    private final Object b;

    public ddk() {
        this.a = new HashMap();
        this.b = new Object();
    }

    public void a(HttpCookie httpCookie, URL url) {
        if (httpCookie == null) {
            throw new IllegalArgumentException("cookie must be non-null");
        } else if (url == null) {
            throw new IllegalArgumentException("url must be non-null");
        } else {
            Object a;
            if (httpCookie.getDomain() != null) {
                a = ddk.a(httpCookie);
            } else {
                String host = url.getHost();
            }
            synchronized (this.b) {
                Set set = (Set) this.a.get(a);
                if (set == null) {
                    set = new HashSet(1);
                    this.a.put(a, set);
                }
                set.add(httpCookie);
            }
        }
    }

    public List<HttpCookie> a(URL url) {
        if (url == null) {
            throw new IllegalArgumentException("url must be non-null");
        }
        List<HttpCookie> arrayList = new ArrayList();
        synchronized (this.b) {
            for (Entry entry : this.a.entrySet()) {
                if (HttpCookie.domainMatches((String) entry.getKey(), url.getHost())) {
                    Set set = (Set) entry.getValue();
                    ddk.a(set);
                    arrayList.addAll(set);
                }
            }
        }
        return arrayList;
    }

    private static void a(Set<HttpCookie> set) {
        for (HttpCookie httpCookie : set) {
            if (httpCookie.hasExpired()) {
                set.remove(httpCookie);
            }
        }
    }

    static String a(HttpCookie httpCookie) {
        String domain = httpCookie.getDomain();
        String str = ".";
        return domain.startsWith(".") ? domain : "." + domain;
    }
}
