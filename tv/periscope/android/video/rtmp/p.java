package tv.periscope.android.video.rtmp;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Twttr */
public class p {
    byte[] a;
    private final int b;
    private int c;
    private int d;
    private final j e;
    private HashMap<Integer, c> f;
    private HashMap<Integer, b> g;
    private b h;
    private final int i;
    private int j;
    private int k;
    private List<n> l;
    private h m;

    public p(j jVar) {
        this.b = 128;
        this.c = 128;
        this.d = 128;
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = null;
        this.i = 15;
        this.a = new byte[15];
        this.j = 0;
        this.k = 0;
        this.l = new LinkedList();
        this.m = new h();
        this.e = jVar;
    }

    public synchronized n a(int i, int i2, int i3, int i4) {
        n nVar;
        if (this.l.size() > 0) {
            nVar = (n) this.l.remove(0);
            nVar.a(i, i2, i3);
        } else {
            nVar = new n(i, i2, i3);
        }
        if (i4 > 0) {
            i b;
            while (true) {
                b = this.m.b(i4);
                if (b != null) {
                    break;
                }
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                }
            }
            nVar.a(b);
        }
        return nVar;
    }

    public synchronized void a(n nVar) {
        i f = nVar.f();
        this.l.add(nVar);
        this.m.a(f);
    }

    public boolean b(n nVar) {
        c cVar = (c) this.f.get(Integer.valueOf(nVar.a()));
        if (cVar == null) {
            cVar = new c(nVar.a(), this.d);
            this.f.put(Integer.valueOf(nVar.a()), cVar);
        }
        return cVar.a(nVar, this.e);
    }

    public int a() {
        if (this.h != null) {
            return this.h.b();
        }
        if (this.k == 0) {
            return 1;
        }
        if (this.j < this.k) {
            return this.k - this.j;
        }
        this.k = 0;
        return 1;
    }

    public n a(byte[] bArr, int i, int i2) {
        int i3 = 2;
        if (i2 != a()) {
            return null;
        }
        if (this.h != null) {
            n a = this.h.a(bArr, i, i2);
            if (this.h.a()) {
                this.h = null;
                this.k = 0;
            }
            return a;
        }
        if (this.k == 0) {
            int i4 = i + 1;
            this.a[0] = bArr[i];
            this.j = 1;
            this.k = 1;
            if ((this.a[0] & 63) == 0) {
                this.k++;
            } else if ((this.a[0] & 63) == 1) {
                this.k += 2;
            }
            switch ((this.a[0] >> 6) & 3) {
                case tv.periscope.android.library.p.View_android_theme /*0*/:
                    this.k += 11;
                    break;
                case tv.periscope.android.library.p.View_android_focusable /*1*/:
                    this.k += 7;
                    break;
                case tv.periscope.android.library.p.View_paddingStart /*2*/:
                    this.k += 3;
                    break;
            }
        } else if (this.j < this.k) {
            int i5 = this.k - this.j;
            System.arraycopy(bArr, i, this.a, this.j, i5);
            this.j = i5 + this.j;
        }
        if (this.j != this.k) {
            return null;
        }
        i5 = (this.a[0] >> 6) & 3;
        int i6 = this.a[0] & 63;
        if (i6 == 0) {
            i6 = this.a[1] + 64;
        } else if (i6 == 1) {
            i6 = (this.a[1] << 8) + this.a[2];
            i3 = 3;
        } else {
            i3 = 1;
        }
        this.h = b(i6);
        return this.h.a(this.a, i3, this.j - i3, i5);
    }

    private b b(int i) {
        b bVar = (b) this.g.get(Integer.valueOf(i));
        if (bVar != null) {
            return bVar;
        }
        bVar = new b(i, this.c, this);
        this.g.put(Integer.valueOf(i), bVar);
        return bVar;
    }

    public void a(int i) {
        this.c = i;
        for (b a : this.g.values()) {
            a.a(i);
        }
    }
}
