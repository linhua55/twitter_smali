package defpackage;

import com.facebook.cache.common.e;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
/* renamed from: ef */
class ef implements e {
    final /* synthetic */ gj a;
    final /* synthetic */ eb b;

    ef(eb ebVar, gj gjVar) {
        this.b = ebVar;
        this.a = gjVar;
    }

    public void a(OutputStream outputStream) throws IOException {
        this.b.d.a(this.a.d(), outputStream);
    }
}
