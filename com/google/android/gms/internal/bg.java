package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@oi
public class bg {
    private final Object a;
    private int b;
    private List<bf> c;

    public bg() {
        this.a = new Object();
        this.c = new LinkedList();
    }

    public bf a() {
        bf bfVar = null;
        synchronized (this.a) {
            if (this.c.size() == 0) {
                b.a("Queue empty");
                return null;
            } else if (this.c.size() >= 2) {
                int i = RtlSpacingHelper.UNDEFINED;
                for (bf bfVar2 : this.c) {
                    bf bfVar3;
                    int i2;
                    int h = bfVar2.h();
                    if (h > i) {
                        int i3 = h;
                        bfVar3 = bfVar2;
                        i2 = i3;
                    } else {
                        i2 = i;
                        bfVar3 = bfVar;
                    }
                    i = i2;
                    bfVar = bfVar3;
                }
                this.c.remove(bfVar);
                return bfVar;
            } else {
                bfVar2 = (bf) this.c.get(0);
                bfVar2.d();
                return bfVar2;
            }
        }
    }

    public boolean a(bf bfVar) {
        boolean z;
        synchronized (this.a) {
            if (this.c.contains(bfVar)) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean b(bf bfVar) {
        boolean z;
        synchronized (this.a) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                bf bfVar2 = (bf) it.next();
                if (bfVar != bfVar2 && bfVar2.b().equals(bfVar.b())) {
                    it.remove();
                    z = true;
                    break;
                }
            }
            z = false;
        }
        return z;
    }

    public void c(bf bfVar) {
        synchronized (this.a) {
            if (this.c.size() >= 10) {
                b.a("Queue is full, current size = " + this.c.size());
                this.c.remove(0);
            }
            int i = this.b;
            this.b = i + 1;
            bfVar.a(i);
            this.c.add(bfVar);
        }
    }
}
