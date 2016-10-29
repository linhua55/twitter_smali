package defpackage;

import android.os.Bundle;

/* compiled from: Twttr */
/* renamed from: cqm */
public class cqm {
    public int a;
    public int b;
    public int c;
    public int d;

    public cqm(Bundle bundle) {
        this.a = bundle.getInt("left");
        this.b = bundle.getInt("top");
        this.c = bundle.getInt("width");
        this.d = bundle.getInt("height");
    }
}
