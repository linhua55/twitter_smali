package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.oi;

@oi
public class l {
    private m a;
    private boolean b;
    private boolean c;

    public l() {
        this.c = ((Boolean) cj.i.c()).booleanValue();
    }

    public l(boolean z) {
        this.c = z;
    }

    public void a() {
        this.b = true;
    }

    public void a(m mVar) {
        this.a = mVar;
    }

    public void a(String str) {
        b.a("Action was blocked because no click was detected.");
        if (this.a != null) {
            this.a.a(str);
        }
    }

    public boolean b() {
        return !this.c || this.b;
    }
}
