package defpackage;

import android.content.Context;
import cmb;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: bzf */
public class bzf extends bzy<bzg, byx<cmb>> implements byv {
    private static bzf c;

    bzf() {
    }

    public static synchronized bzf a() {
        bzf bzf;
        synchronized (bzf.class) {
            if (c == null) {
                c = new bzf();
            }
            bzf = c;
        }
        return bzf;
    }

    protected void a(bzg bzg, long j, byx<cmb> byx_cmb) {
        bzg.a(j, byx_cmb.a, (cmb) byx_cmb.b);
    }

    public byu a(Context context) {
        return new bzc(context, this);
    }

    public void a(long j, int i, cmb cmb) {
        c(j, new byx(i, cmb));
    }

    public void a(long j, int i) {
        bzz bzz = (bzz) this.a.get(Long.valueOf(j));
        if (bzz != null) {
            Iterator it = bzz.a.iterator();
            while (it.hasNext()) {
                ((bzg) it.next()).a(j, i);
            }
        }
    }
}
