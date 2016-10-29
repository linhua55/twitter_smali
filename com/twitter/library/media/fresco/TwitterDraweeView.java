package com.twitter.library.media.fresco;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.GenericDraweeView;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.media.ui.image.config.a;
import com.twitter.media.ui.image.config.e;
import com.twitter.media.ui.image.config.f;
import com.twitter.media.ui.image.config.g;
import defpackage.bcu;
import defpackage.bul;

/* compiled from: Twttr */
public class TwitterDraweeView extends GenericDraweeView implements a, e {
    private f a;
    private g b;

    public TwitterDraweeView(Context context) {
        super(context);
        this.a = f.a;
        this.b = CommonRoundingStrategy.a;
        a(context);
    }

    public TwitterDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = f.a;
        this.b = CommonRoundingStrategy.a;
        a(context);
    }

    public TwitterDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = f.a;
        this.b = CommonRoundingStrategy.a;
        a(context);
    }

    private void a(Context context) {
        ((com.facebook.drawee.generic.a) getHierarchy()).b(new ColorDrawable(context.getResources().getColor(bcu.placeholder_bg)));
    }

    private void a() {
        RoundingParams b;
        float b2 = this.b.b(this.a);
        float c = this.b.c(this.a);
        float d = this.b.d(this.a);
        float e = this.b.e(this.a);
        RoundingParams c2 = ((com.facebook.drawee.generic.a) getHierarchy()).c();
        if (c2 == null) {
            b = RoundingParams.b(b2, c, d, e);
        } else {
            c2.a(b2, c, d, e);
            b = c2;
        }
        if (bul.d()) {
            b.a(getResources().getColor(bcu.app_background));
        }
        ((com.facebook.drawee.generic.a) getHierarchy()).a(b);
    }

    public void a(int i, float f) {
        RoundingParams b;
        RoundingParams c = ((com.facebook.drawee.generic.a) getHierarchy()).c();
        if (c == null) {
            b = RoundingParams.b(0.0f);
        } else {
            b = c;
        }
        b.a(i, f);
        ((com.facebook.drawee.generic.a) getHierarchy()).a(b);
    }

    public float[] getCornerRadii() {
        RoundingParams c = ((com.facebook.drawee.generic.a) getHierarchy()).c();
        return c != null ? c.b() : null;
    }

    public void setRoundingStrategy(g gVar) {
        this.b = gVar;
        a();
    }

    public void setRoundingConfig(f fVar) {
        this.a = fVar;
        a();
    }
}
