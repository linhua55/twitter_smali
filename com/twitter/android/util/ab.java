package com.twitter.android.util;

import com.twitter.internal.android.service.ac;
import com.twitter.internal.android.service.u;
import com.twitter.library.network.h;

/* compiled from: Twttr */
class ab extends ac<h> {
    final /* synthetic */ y a;
    private int b;

    private ab(y yVar) {
        this.a = yVar;
        this.b = 0;
    }

    public boolean a(com.twitter.internal.android.service.ab<h> abVar) {
        if (abVar.b() == null) {
            int i = this.b + 1;
            this.b = i;
            if (i <= 1) {
                return true;
            }
        }
        return false;
    }

    public boolean a(u uVar, com.twitter.internal.android.service.ab<h> abVar) {
        return true;
    }

    public long b(com.twitter.internal.android.service.ab<h> abVar) {
        return 0;
    }
}
