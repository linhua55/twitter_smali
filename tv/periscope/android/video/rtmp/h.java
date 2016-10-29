package tv.periscope.android.video.rtmp;

import defpackage.dcv;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Twttr */
public class h {
    private final int[] a;
    private List<i> b;
    private List<i> c;
    private List<i> d;
    private int e;
    private int f;

    public h() {
        this.a = new int[]{0, 32, 4096};
        this.b = new LinkedList();
        this.c = new LinkedList();
        this.d = new LinkedList();
        this.e = 0;
        this.f = 0;
    }

    List<i> a(int i) {
        List<i> list = this.b;
        if (i > this.a[2]) {
            return this.d;
        }
        if (i > this.a[1]) {
            return this.c;
        }
        return list;
    }

    public i b(int i) {
        i iVar;
        synchronized (this) {
            List a = a(i);
            if (a.size() > 0) {
                iVar = (i) a.remove(0);
            } else {
                iVar = null;
            }
            if (iVar == null) {
                iVar = new i();
                iVar.a(this);
                this.e++;
            }
            try {
                iVar.a(i);
                this.f++;
            } catch (OutOfMemoryError e) {
                a.add(iVar);
                return null;
            }
        }
        return iVar;
    }

    public void a(i iVar) {
        if (iVar.a() != this) {
            dcv.e("NetBufferPool", "Pool anomaly");
        }
        List a = a(iVar.a.length);
        iVar.b = 0;
        synchronized (this) {
            this.f--;
            a.add(iVar);
        }
    }

    public void a() {
        dcv.e("NetBufferPool", "Buffer pool: " + this.f + " / " + this.e);
    }
}
