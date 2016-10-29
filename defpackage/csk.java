package defpackage;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

/* compiled from: Twttr */
/* renamed from: csk */
class csk extends ConstantState {
    int a;
    float b;

    csk() {
    }

    csk(csk csk) {
        this.a = csk.a;
        this.b = csk.b;
    }

    public Drawable newDrawable() {
        return new csg(this);
    }

    public int getChangingConfigurations() {
        return 0;
    }
}
