package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import rx.w;

/* compiled from: Twttr */
/* renamed from: agn */
public class agn {
    private final int a;
    private final View b;
    @ColorInt
    private final int c;
    private final agt d;
    @ColorInt
    private int e;
    private ValueAnimator f;
    private boolean g;

    public static agn a(ViewGroup viewGroup, Context context, afc afc, boolean z) {
        return z ? agn.a(viewGroup, context, afc) : agn.a((View) viewGroup, context);
    }

    public static agn a(View view, Context context) {
        return new agn(view, ContextCompat.getColor(context, 2131886115), new agt(), 0);
    }

    public static agn a(View view, Context context, afc afc) {
        return new agn(view, ContextCompat.getColor(context, 2131886115), new agt(), afc.b());
    }

    public agn(View view, @ColorInt int i, agt agt, int i2) {
        this.g = true;
        this.b = view;
        this.c = i;
        this.d = agt;
        this.a = i2;
    }

    public w<Integer> a(Bitmap bitmap) {
        return this.d.a(bitmap, this.c).b(c());
    }

    private cys<? super Integer> c() {
        return new ago(this);
    }

    public void a() {
        if (this.f != null) {
            this.f.start();
        }
        this.g = false;
    }

    public void b() {
        if (this.f != null) {
            this.f.reverse();
        }
        this.g = true;
    }
}
