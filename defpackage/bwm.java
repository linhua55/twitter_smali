package defpackage;

import android.view.View;
import android.view.View.OnLayoutChangeListener;
import com.twitter.model.geo.d;

/* compiled from: Twttr */
/* renamed from: bwm */
class bwm implements OnLayoutChangeListener {
    final /* synthetic */ d a;
    final /* synthetic */ d b;
    final /* synthetic */ bwi c;
    final /* synthetic */ bwk d;

    bwm(bwk bwk, d dVar, d dVar2, bwi bwi) {
        this.d = bwk;
        this.a = dVar;
        this.b = dVar2;
        this.c = bwi;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.d.b.removeOnLayoutChangeListener(this);
        this.d.b(this.a, this.b, this.c);
    }
}
