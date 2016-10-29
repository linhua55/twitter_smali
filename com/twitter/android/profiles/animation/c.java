package com.twitter.android.profiles.animation;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
class c implements h {
    final /* synthetic */ BalloonSetAnimationView a;
    private final List<Drawable> b;
    private int c;
    private int[] d;

    c(BalloonSetAnimationView balloonSetAnimationView, String[] strArr) {
        int i = 0;
        this.a = balloonSetAnimationView;
        this.d = new int[]{2130840110, 2130840112, 2130840113, 2130840114, 2130840115};
        Context context = balloonSetAnimationView.getContext();
        Resources resources = context.getResources();
        if (strArr != null) {
            this.d = new int[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                this.d[i2] = resources.getIdentifier(strArr[i2], "drawable", context.getPackageName());
            }
        }
        n d = n.d();
        int[] iArr = this.d;
        int length = iArr.length;
        while (i < length) {
            d.c(resources.getDrawable(iArr[i]));
            i++;
        }
        this.b = (List) d.q();
    }

    public Drawable a() {
        List list = this.b;
        int i = this.c;
        this.c = i + 1;
        return (Drawable) list.get(i % this.b.size());
    }
}
