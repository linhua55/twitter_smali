package defpackage;

import bbn;
import com.twitter.config.g;
import com.twitter.config.h;

/* compiled from: Twttr */
/* renamed from: aso */
public class aso implements g {
    private final ciq a;

    public aso(ciq ciq) {
        this.a = ciq;
    }

    public Object a(long j, String str, long j2) {
        cil a = this.a.a(str);
        return a != null ? a.a() : null;
    }

    public Object a(long j, String str) {
        return a(j, str, -1);
    }

    public void a(String str, Exception exception) {
        bbn.a(new IllegalStateException(str, exception));
    }

    public void a(h hVar) {
    }
}
