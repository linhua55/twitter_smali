package com.twitter.android.util;

import com.twitter.android.client.u;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import defpackage.bus;
import defpackage.bym;
import defpackage.cbj;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class af {
    private final List<Integer> a;
    private final List<Integer> b;
    private long c;
    private boolean d;
    private boolean e;
    private boolean f;

    public af(long j) {
        this.a = new ArrayList();
        this.b = new ArrayList();
        a(j);
    }

    public void a(long j) {
        this.c = j;
        this.d = bym.a();
        this.e = cbj.g(this.c);
    }

    public int a() {
        if (bus.a().e()) {
            if (this.d) {
                return 1;
            }
            if (this.e) {
                return 2;
            }
        }
        return 0;
    }

    public void a(w wVar) {
        this.f = false;
        a(this.d, true, 2131953443, 0);
        if (a() == 1) {
            this.f = true;
        }
        a(this.e, true, 2131953230, 2131953445);
        if (a() == 2) {
            this.f = true;
        }
        if (bus.a().c()) {
            this.f = true;
        }
        a(true, true, 2131953440, 2131953447);
        for (Integer num : this.a) {
            ac b;
            if (num.intValue() != 0) {
                b = wVar.b(num.intValue());
                if (b != null) {
                    b.f(false);
                }
            }
        }
        for (Integer num2 : this.b) {
            if (num2.intValue() != 0) {
                b = wVar.b(num2.intValue());
                if (b != null) {
                    b.f(true);
                }
            }
        }
        this.a.clear();
        this.b.clear();
    }

    private void a(boolean z, boolean z2, int i, int i2) {
        boolean z3 = z2 && !this.f;
        if (!z) {
            this.a.add(Integer.valueOf(i));
            this.a.add(Integer.valueOf(i2));
        } else if (z3) {
            this.a.add(Integer.valueOf(i2));
            this.b.add(Integer.valueOf(i));
            this.f = true;
        } else {
            this.a.add(Integer.valueOf(i));
            this.b.add(Integer.valueOf(i2));
        }
    }

    public void a(ToolBar toolBar, u uVar) {
        toolBar.post(new ag(this, toolBar, uVar));
    }
}
