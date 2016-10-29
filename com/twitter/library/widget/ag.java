package com.twitter.library.widget;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import com.twitter.library.util.al;
import com.twitter.library.util.an;

/* compiled from: Twttr */
final class ag extends ConstantState {
    final BitmapDrawable a;
    final al b;
    final an c;
    final Paint d;
    long e;

    ag(BitmapDrawable bitmapDrawable, al alVar, an anVar, Paint paint, long j) {
        this.a = bitmapDrawable;
        this.b = alVar;
        this.c = anVar;
        this.d = paint;
        this.e = j;
    }

    ag(ag agVar) {
        this.a = agVar.a;
        this.b = agVar.b;
        this.c = agVar.c;
        this.d = new Paint(agVar.d);
        this.e = agVar.e;
    }

    public boolean canApplyTheme() {
        return false;
    }

    public Drawable newDrawable() {
        return new af(this);
    }

    public Drawable newDrawable(Resources resources) {
        return new af(this);
    }

    public Drawable newDrawable(Resources resources, Theme theme) {
        return new af(this);
    }

    public int getChangingConfigurations() {
        return 0;
    }
}
