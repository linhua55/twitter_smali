package com.twitter.android.client.notifications;

import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;

/* compiled from: Twttr */
public abstract class n extends l {
    int b;
    private int h;

    protected n(ad adVar, String str, long j) {
        super(adVar, str, j);
        this.b = 2;
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
    }

    public boolean a() {
        return b().size() >= this.b;
    }

    protected boolean a(i iVar) {
        return this.h == iVar.c;
    }
}
