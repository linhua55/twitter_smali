package io.fabric.sdk.android.services.common;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class z implements ac {
    boolean a;
    final /* synthetic */ StringBuilder b;
    final /* synthetic */ y c;

    z(y yVar, StringBuilder stringBuilder) {
        this.c = yVar;
        this.b = stringBuilder;
        this.a = true;
    }

    public void a(InputStream inputStream, int i) throws IOException {
        if (this.a) {
            this.a = false;
        } else {
            this.b.append(", ");
        }
        this.b.append(i);
    }
}
