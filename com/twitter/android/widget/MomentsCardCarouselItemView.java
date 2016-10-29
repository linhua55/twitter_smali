package com.twitter.android.widget;

import ael;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.twitter.library.widget.a;
import com.twitter.library.widget.c;
import cym;
import cyr;

/* compiled from: Twttr */
public class MomentsCardCarouselItemView extends FrameLayout implements c {
    private ael a;
    private cp b;

    public MomentsCardCarouselItemView(Context context) {
        this(context, new cr(cym.a()));
    }

    public MomentsCardCarouselItemView(Context context, cr crVar) {
        super(context);
        this.b = crVar.a(a());
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b.c();
    }

    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        this.b.b();
    }

    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        this.b.a();
    }

    private cyr a() {
        return new co(this);
    }

    public void a(ael ael) {
        this.b.d();
        if (this.a != ael) {
            b();
            this.a = ael;
            a(this.a.e());
        }
    }

    public a getAutoPlayableItem() {
        return this.a != null ? this.a.d() : a.j;
    }

    private void a(View view) {
        removeAllViews();
        addView(view);
    }

    private void b() {
        if (this.a != null) {
            this.a.c();
            this.a = null;
        }
    }

    public long getBoundMomentId() {
        return this.a != null ? this.a.a() : 0;
    }
}
