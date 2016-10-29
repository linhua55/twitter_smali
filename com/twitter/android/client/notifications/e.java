package com.twitter.android.client.notifications;

import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class e extends l {
    private final int b;
    private int h;
    private final int[] i;
    private final int[] j;
    private int k;

    public e(ad adVar, String str, long j, int i, int[] iArr, int[] iArr2, int i2) {
        super(adVar, str, j);
        this.h = -1;
        for (i iVar : adVar.v) {
            if (iVar.d == adVar.r) {
                this.h = iVar.c;
                break;
            }
        }
        if (this.h == -1) {
            throw new IllegalStateException("Couldn't find notification id: " + adVar.r + " inside inbox");
        }
        this.b = i2;
        this.a = i;
        this.i = iArr;
        this.j = iArr2;
        this.k = -1;
    }

    public void a(int i) {
        this.k = i;
    }

    public List<i> b() {
        List<i> b = super.b();
        if (this.k < 0 || b.isEmpty()) {
            return b;
        }
        n a = n.a(b.size());
        for (i iVar : b) {
            if (iVar.c == this.k) {
                a.c(iVar);
            }
        }
        for (i iVar2 : b) {
            if (iVar2.c != this.k) {
                a.c(iVar2);
            }
        }
        return (List) a.q();
    }

    public boolean a() {
        return b().size() >= this.b;
    }

    protected boolean a(i iVar) {
        if (!m.b(iVar.c)) {
            return false;
        }
        if (this.i == null || this.i.length <= 0) {
            if (this.j != null && this.j.length > 0) {
                for (int i : this.j) {
                    if (iVar.c == i) {
                        return false;
                    }
                }
            }
            return true;
        }
        for (int i2 : this.i) {
            if (iVar.c == i2) {
                return true;
            }
        }
        return false;
    }
}
