package defpackage;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

/* compiled from: Twttr */
/* renamed from: bwn */
class bwn implements OnLayoutChangeListener {
    final /* synthetic */ String a;
    final /* synthetic */ bwi b;
    final /* synthetic */ bwk c;

    bwn(bwk bwk, String str, bwi bwi) {
        this.c = bwk;
        this.a = str;
        this.b = bwi;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.c.b.removeOnLayoutChangeListener(this);
        this.c.b(this.a, this.b);
    }
}
