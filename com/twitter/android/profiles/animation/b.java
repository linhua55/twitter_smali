package com.twitter.android.profiles.animation;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.twitter.library.util.al;
import com.twitter.library.util.am;
import com.twitter.library.widget.af;

/* compiled from: Twttr */
class b implements h {
    final /* synthetic */ BalloonSetAnimationView a;
    private final Drawable b;
    private int[] c;
    private int d;
    private final al e;

    b(BalloonSetAnimationView balloonSetAnimationView, int[] iArr) {
        this.a = balloonSetAnimationView;
        this.c = new int[]{-9712641, -42624, -4041985, -11534396, -275712};
        this.e = new al(5, 5, 25);
        this.b = balloonSetAnimationView.getContext().getResources().getDrawable(2130840111);
        if (iArr != null) {
            this.c = iArr;
        }
    }

    public Drawable a() {
        af afVar = new af((BitmapDrawable) this.b, this.e, new am(), 10);
        int[] iArr = this.c;
        int i = this.d;
        this.d = i + 1;
        return BalloonSetAnimationView.a(afVar, iArr[i % this.c.length]);
    }
}
