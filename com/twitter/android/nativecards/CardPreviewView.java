package com.twitter.android.nativecards;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.twitter.util.collection.MutableList;
import defpackage.cfb;
import java.util.List;

/* compiled from: Twttr */
public class CardPreviewView extends FrameLayout implements d {
    private final List<View> a;
    private e b;
    private View c;
    private CardPreviewContainer d;
    private CardPreviewContainer e;
    private View f;
    private ProgressBar g;
    private final Animation h;
    private final Animation i;
    private int j;

    public CardPreviewView(Context context) {
        this(context, null);
    }

    public CardPreviewView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CardPreviewView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = 8;
        this.a = MutableList.a();
        this.h = AnimationUtils.loadAnimation(context, 2131034147);
        this.i = AnimationUtils.loadAnimation(context, 2131034148);
        this.i.setAnimationListener(new j(this));
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.d = (CardPreviewContainer) findViewById(2131952059);
        this.e = (CardPreviewContainer) findViewById(2131952061);
        this.d.setButtonOnClickListener(new k(this));
    }

    public void setController(e eVar) {
        this.b = eVar;
    }

    public void a(ProgressBar progressBar, List<View> list) {
        this.g = progressBar;
        this.a.clear();
        this.a.addAll(list);
    }

    public void a() {
        cfb.b("CardPreview", "hideCardPreview");
        this.j = 8;
        if (this.f != null) {
            this.e.b(this.f);
            this.f = null;
            this.e.clearAnimation();
        }
        if (this.c != null) {
            this.d.b(this.c);
            this.d.setVisibility(8);
            this.e.a(this.c);
            this.e.setVisibility(0);
            this.e.startAnimation(this.i);
            this.f = this.c;
            this.c = null;
        }
    }

    public void a(View view) {
        cfb.b("CardPreview", "showCardPreview");
        this.j = 0;
        if (view != null) {
            this.h.reset();
            this.c = view;
            this.d.a(this.c);
            this.d.setVisibility(0);
            this.d.startAnimation(this.h);
            setVisibility(0);
        }
    }

    public void b() {
        if (this.g != null) {
            this.g.setVisibility(0);
        }
        for (View visibility : this.a) {
            visibility.setVisibility(8);
        }
    }

    public void c() {
        if (this.g != null) {
            this.g.setVisibility(8);
        }
        for (View visibility : this.a) {
            visibility.setVisibility(0);
        }
    }
}
