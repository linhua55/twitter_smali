package com.twitter.library.api;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.internal.network.k;
import com.twitter.library.service.a;
import com.twitter.library.service.c;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.util.collection.CollectionUtils;
import defpackage.cun;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public abstract class t<T, U> extends c {
    private T a;
    private U b;

    protected abstract T a(JsonParser jsonParser) throws IOException;

    protected abstract U a(JsonParser jsonParser, int i) throws IOException;

    protected t() {
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        if (i != 304 && str != null) {
            if (a(str, str2)) {
                Closeable closeable = null;
                try {
                    closeable = at.a.a(inputStream);
                    closeable.a();
                    if (k.a(i)) {
                        this.a = a((JsonParser) closeable);
                    } else {
                        this.b = a((JsonParser) closeable, i);
                    }
                    cun.a(closeable);
                } catch (Throwable th) {
                    cun.a(closeable);
                }
            } else {
                throw new IOException("Reader could not validate. content-type=[" + str + "], or encoding=[" + str2 + "]");
            }
        }
    }

    public void a(k kVar) {
        if (this.b instanceof cd) {
            ca caVar = (ca) CollectionUtils.b((cd) this.b);
            if (caVar != null) {
                kVar.j = caVar.b;
            }
        }
    }

    public a a() {
        return this.b instanceof cd ? a.a((cd) this.b) : null;
    }

    protected boolean a(String str, String str2) throws IOException {
        return str.startsWith("application/json");
    }

    public T b() {
        return this.a;
    }

    public U c() {
        return this.b;
    }
}
