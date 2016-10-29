package com.twitter.library.network;

import com.twitter.config.AppConfig;
import com.twitter.internal.network.f;
import com.twitter.internal.network.l;
import defpackage.bcm;
import defpackage.bcp;
import defpackage.cbe;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Twttr */
public class ae extends l {
    private final KeyStore b;
    private SSLSocketFactory c;

    public ae(KeyStore keyStore, f fVar) {
        super(fVar);
        this.c = null;
        this.b = keyStore;
        CookieHandler.setDefault(null);
    }

    public HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection a = super.a(url);
        if ("https".equals(url.getProtocol())) {
            ((HttpsURLConnection) a).setSSLSocketFactory(c());
        }
        return a;
    }

    private synchronized SSLSocketFactory c() {
        Object e;
        if (this.c == null) {
            try {
                this.c = new bcm(new bcp(this.b), cbe.b, AppConfig.m().f(), cbe.c);
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
        return this.c;
    }
}
