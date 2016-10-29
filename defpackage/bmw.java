package defpackage;

import android.util.SparseArray;
import com.twitter.library.util.at;
import com.twitter.util.y;
import com.twitter.util.z;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bmw */
public class bmw {
    private static final bmw a;
    private final SparseArray<at<bmx>> b;
    private final Map<String, at<bmx>> c;

    static {
        a = new bmw();
    }

    private bmw() {
        this.b = new SparseArray();
        this.c = new HashMap();
    }

    public static synchronized bmw a() {
        bmw bmw;
        synchronized (bmw.class) {
            bmw = a;
        }
        return bmw;
    }

    public synchronized void a(z<bmx> zVar, String str) {
        at atVar = (at) this.c.get(str);
        if (atVar == null) {
            atVar = new at();
            this.c.put(str, atVar);
        }
        atVar.a(zVar);
    }

    public synchronized void a(z<bmx> zVar, int i) {
        at atVar = (at) this.b.get(i);
        if (atVar == null) {
            atVar = new at();
            this.b.put(i, atVar);
        }
        atVar.a(zVar);
    }

    public synchronized void a(String str, int i, int i2) {
        a(bmx.a(str, i, i2));
    }

    public synchronized void a(bmx bmx) {
        y yVar = (y) this.c.get(bmx.a);
        if (yVar != null) {
            yVar.a((Object) bmx);
        }
        yVar = (y) this.b.get(bmx.b);
        if (yVar != null) {
            yVar.a((Object) bmx);
        }
    }

    public synchronized void b(z<bmx> zVar, String str) {
        y yVar = (y) this.c.get(str);
        if (yVar != null) {
            yVar.b(zVar);
        }
    }

    public synchronized void b(z<bmx> zVar, int i) {
        y yVar = (y) this.b.get(i);
        if (yVar != null) {
            yVar.b(zVar);
        }
    }
}
