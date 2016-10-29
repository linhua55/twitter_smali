package com.twitter.library.media.manager;

import com.twitter.internal.network.i;
import com.twitter.internal.network.k;
import cus;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class aa implements i {
    final /* synthetic */ cus a;
    final /* synthetic */ String b;
    final /* synthetic */ v c;

    aa(v vVar, cus cus, String str) {
        this.c = vVar;
        this.a = cus;
        this.b = str;
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        this.a.a(this.b, inputStream);
    }

    public void a(k kVar) {
    }
}
