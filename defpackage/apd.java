package defpackage;

import android.content.Intent;

/* compiled from: Twttr */
/* renamed from: apd */
public abstract class apd {
    protected final Intent b;

    protected apd() {
        this(new Intent());
    }

    protected apd(Intent intent) {
        this.b = intent;
    }

    Intent w() {
        return this.b;
    }
}
