package com.twitter.library.network;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import asp;
import bbl;
import bbn;
import bvj;
import com.squareup.okhttp.v_1_5_1.internal.http.Origin;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation$Protocol;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.f;
import com.twitter.internal.network.i;
import com.twitter.internal.network.o;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bcm;
import defpackage.bcp;
import defpackage.cbe;
import java.net.URI;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Twttr */
public class af extends o implements OnSharedPreferenceChangeListener, asp {
    private static final Set<String> c;
    private final KeyStore d;
    private SSLSocketFactory e;
    private final v f;
    private volatile Set<Origin> g;
    private volatile Map<Origin, Origin> h;

    static {
        c = new HashSet();
        c.add("/1.1/help/settings.json");
    }

    public af(KeyStore keyStore, f fVar, SharedPreferences sharedPreferences) {
        super(fVar);
        this.e = null;
        this.g = new HashSet();
        this.h = new HashMap();
        this.d = keyStore;
        this.f = v.a();
        this.b.setCookieHandler(null);
        this.b.setSslSocketFactory(c());
        a(this.f);
        bvj.a(this);
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
    }

    public void a() {
        bvj.b(this);
        super.a();
    }

    protected synchronized SSLSocketFactory c() {
        Object e;
        if (this.e == null) {
            try {
                this.e = new bcm(new bcp(this.d), cbe.b, AppConfig.m().f(), cbe.c);
            } catch (KeyManagementException e2) {
                e = e2;
                throw new AssertionError(e);
            } catch (UnrecoverableKeyException e3) {
                e = e3;
                throw new AssertionError(e);
            } catch (NoSuchAlgorithmException e4) {
                e = e4;
                throw new AssertionError(e);
            } catch (KeyStoreException e5) {
                e = e5;
                throw new AssertionError(e);
            }
        }
        return this.e;
    }

    public HttpOperation a(RequestMethod requestMethod, URI uri, i iVar) {
        HttpOperation a = super.a(requestMethod, uri, iVar);
        if (a(uri)) {
            a.b(HttpOperation$Protocol.SPDY_3_1);
        }
        return a;
    }

    private boolean a(URI uri) {
        int port = uri.getPort();
        if (port == -1) {
            port = "https".equals(uri.getScheme()) ? 443 : 80;
        }
        Origin origin = new Origin(uri.getScheme(), uri.getHost(), port);
        return (this.g.contains(origin) || this.h.containsKey(origin)) && !c.contains(uri.getPath());
    }

    private void a(v vVar) {
        Set hashSet = new HashSet();
        Object c = d.c("spdy_origins");
        if (!CollectionUtils.b(c)) {
            for (Object next : c) {
                try {
                    URI uri = new URI((String) next);
                    hashSet.add(new Origin(uri.getScheme(), uri.getHost(), uri.getPort()));
                } catch (Throwable e) {
                    bbn.a(new bbl(e).a("message", "Failure in parsing SPDY origin " + next));
                }
            }
        }
        this.g = hashSet;
        Map emptyMap = Collections.emptyMap();
        if (d.a("spdy_aliases_enabled") || vVar.c()) {
            List c2 = d.c("spdy_origin_aliases");
            Map hashMap = new HashMap();
            for (Object next2 : c2) {
                String[] split = ((String) next2).split("\\|");
                if (split.length == 2) {
                    try {
                        uri = new URI(split[0]);
                        URI uri2 = new URI(split[1]);
                        hashMap.put(new Origin(uri.getScheme(), uri.getHost(), uri.getPort()), new Origin(uri2.getScheme(), uri2.getHost(), uri2.getPort()));
                    } catch (Throwable e2) {
                        bbn.a(new bbl(e2).a("message", "Failure in parsing SPDY origin " + next2));
                    }
                } else {
                    bbn.a(new bbl().a("message", "Failure in parsing SPDY origins " + next2));
                }
            }
            emptyMap = hashMap;
        }
        synchronized (this) {
            if (!emptyMap.equals(this.h)) {
                this.h = emptyMap;
                this.b.updateOriginAliases(this.h);
            }
        }
    }

    public void a(long j) {
        a(this.f);
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (this.f.a(str)) {
            a(this.f);
        }
    }
}
