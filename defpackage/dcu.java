package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import tv.periscope.android.view.p;

/* compiled from: Twttr */
/* renamed from: dcu */
final class dcu extends p {
    final /* synthetic */ OnClickListener[] a;
    final /* synthetic */ int b;

    dcu(int i, OnClickListener[] onClickListenerArr, int i2) {
        this.a = onClickListenerArr;
        this.b = i2;
        super(i);
    }

    public void onClick(View view) {
        this.a[this.b].onClick(view);
    }
}
