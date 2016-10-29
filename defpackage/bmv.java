package defpackage;

import com.twitter.util.z;
import java.util.BitSet;

/* compiled from: Twttr */
/* renamed from: bmv */
public class bmv extends bmu {
    private final BitSet f;

    public bmv(int i) {
        super(1, null, i, false);
        this.f = new BitSet(5);
    }

    public void a(boolean z) {
        super.a(z);
        this.e = 1;
    }

    public void b() {
        super.b();
        this.e = 1;
    }

    public void b(int i) {
        if (!this.f.get(i)) {
            this.f.set(i);
            bmw.a().a((z) this, i);
        }
    }

    public void c() {
        super.c();
        int nextSetBit = this.f.nextSetBit(0);
        while (nextSetBit >= 0) {
            bmw.a().b((z) this, nextSetBit);
            nextSetBit = this.f.nextSetBit(nextSetBit + 1);
        }
    }

    public synchronized void a(bmx bmx) {
        if (!this.c.containsKey(bmx.a)) {
            this.c.put(bmx.a, Integer.valueOf(0));
            a(this.c.size());
        }
        super.a(bmx);
        for (Integer intValue : this.c.values()) {
            if (intValue.intValue() < 10000) {
                Object obj = null;
                break;
            }
        }
        int i = 1;
        if (obj != null) {
            this.c.clear();
            this.e = 1;
        }
    }
}
