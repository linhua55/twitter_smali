package com.twitter.android;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class nz {
    final /* synthetic */ ScrollingHeaderActivity a;
    private boolean b;
    private boolean c;

    protected nz(ScrollingHeaderActivity scrollingHeaderActivity) {
        this.a = scrollingHeaderActivity;
    }

    private void a(int i) {
        if (this.a.j() + i <= 0) {
            a(true);
        } else {
            b();
        }
        if (this.a.i() + i <= 0) {
            b(true);
        } else {
            c();
        }
    }

    protected void a() {
        if (this.c) {
            c();
            b(false);
        }
    }

    public void a(boolean z) {
        if (!this.b) {
            CharSequence a = this.a.a();
            if (aj.b(a)) {
                this.a.Y().a(a, z);
                this.b = true;
            }
        }
    }

    public void b() {
        this.a.Y().a(BuildConfig.VERSION_NAME, true);
        this.b = false;
    }

    public void b(boolean z) {
        if (!this.c) {
            CharSequence c = this.a.c();
            if (aj.b(c)) {
                this.a.a(c, z);
            }
            this.c = true;
        }
    }

    public void c() {
        this.a.a(null, true);
        this.c = false;
    }
}
