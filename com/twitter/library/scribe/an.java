package com.twitter.library.scribe;

import android.util.Pair;
import com.twitter.internal.network.b;
import com.twitter.internal.network.k;
import com.twitter.library.api.at;
import com.twitter.library.service.a;
import com.twitter.library.service.c;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.g;
import com.twitter.util.collection.CollectionUtils;
import defpackage.cun;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

/* compiled from: Twttr */
class an extends c {
    private List<Pair<String, String>> a;
    private cd b;

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        Closeable closeable = null;
        if (str == null) {
            return;
        }
        if (i == 200) {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new b(byteArrayOutputStream, null).a(i, inputStream, i2, str, str2);
            this.a = at.b(byteArrayOutputStream.toString());
            return;
        }
        try {
            closeable = at.a(inputStream);
            this.b = (cd) g.c(closeable, cd.class);
        } finally {
            cun.a(closeable);
        }
    }

    public void a(k kVar) {
        ca caVar = (ca) CollectionUtils.b(this.b);
        if (caVar != null) {
            kVar.j = caVar.b;
        }
    }

    public a a() {
        return a.a(this.b);
    }
}
