package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PointF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.RelativeLayout;
import com.twitter.android.av.al;
import com.twitter.android.mx;
import com.twitter.util.d;
import cri;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ExpandableViewHost extends RelativeLayout implements OnTouchListener {
    final Interpolator a;
    final Interpolator b;
    final Interpolator c;
    final Interpolator d;
    int e;
    private final PointF f;
    private ao g;
    private View h;
    private View i;
    private int j;
    private int k;
    private int l;
    private aq m;
    private al n;

    public ExpandableViewHost(Context context) {
        super(context);
        this.a = new cri(1.5f);
        this.b = new cri(1.125f);
        this.c = new DecelerateInterpolator();
        this.d = this.c;
        this.f = new PointF();
        a(context, null, 0);
    }

    public ExpandableViewHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new cri(1.5f);
        this.b = new cri(1.125f);
        this.c = new DecelerateInterpolator();
        this.d = this.c;
        this.f = new PointF();
        a(context, attributeSet, 0);
    }

    public ExpandableViewHost(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new cri(1.5f);
        this.b = new cri(1.125f);
        this.c = new DecelerateInterpolator();
        this.d = this.c;
        this.f = new PointF();
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray typedArray = null;
            try {
                typedArray = context.getTheme().obtainStyledAttributes(attributeSet, mx.ExpandableViewHost, i, 0);
                this.j = typedArray.getResourceId(2, 0);
                this.k = typedArray.getResourceId(0, 0);
                this.l = typedArray.getResourceId(1, 0);
                this.e = typedArray.getColor(3, getResources().getColor(2131886211));
            } finally {
                if (typedArray != null) {
                    typedArray.recycle();
                }
            }
        }
        this.n = new al(this.a, this.b, 699, 499);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.j != 0) {
            this.h = findViewById(this.j);
            if (this.h != null) {
                this.h.setOnTouchListener(this);
            }
        }
        if (this.l != 0) {
            this.i = findViewById(this.l);
        }
        if (this.k != 0) {
            this.g = (ao) findViewById(this.k);
        }
        if (this.g == null) {
            throw new IllegalArgumentException(getClass().getSimpleName() + " requires an " + "expandableView child. Its id can be specified in the expandableViewId attr.");
        }
    }

    public void setListener(aq aqVar) {
        this.m = aqVar;
    }

    public void a(Runnable runnable) {
        a(runnable, 1);
    }

    public void b(Runnable runnable) {
        a(runnable, -1);
    }

    private void a(Runnable runnable, int i) {
        View contentView = this.g.getContentView();
        d.b(contentView, 0.0f, i == 1 ? (float) (-getHeight()) : (float) getHeight(), 266, this.c);
        if (i == 1) {
            d.a(contentView, -5.0f, 266, this.c);
        }
        if (this.i != null) {
            d.b(this.i, 0.0f, (float) this.i.getHeight(), 266, this.c);
        }
        postDelayed(new ap(this, runnable), 266);
    }

    public void a(PointF pointF, PointF pointF2, Runnable runnable) {
        if (runnable != null) {
            post(runnable);
        }
        if (pointF != null && pointF2 != null) {
            this.n.b(this.g, pointF);
            View contentView = this.g.getContentView();
            PointF pointF3 = new PointF();
            pointF3.x = pointF2.x - ((float) contentView.getLeft());
            pointF3.y = pointF2.y - ((float) contentView.getTop());
            d.b(contentView, pointF3.x, pointF3.y, 699, this.a);
            if (this.i != null) {
                d.b(this.i, 0.0f, 0.0f, 266, this.c);
            }
            int i = ViewCompat.MEASURED_SIZE_MASK & this.e;
            setBackgroundColor(i);
            d.a(this, i, Color.alpha(this.e), 266, 199, this.d);
        }
    }

    public void c(Runnable runnable) {
        View contentView = this.g.getContentView();
        a(new PointF((float) contentView.getWidth(), (float) contentView.getHeight()), new PointF((float) contentView.getLeft(), (float) contentView.getTop()), runnable);
    }

    public void b(PointF pointF, PointF pointF2, Runnable runnable) {
        if (pointF != null && pointF2 != null) {
            if (this.i != null) {
                this.i.setTranslationY((float) this.i.getHeight());
            }
            View contentView = this.g.getContentView();
            float top = pointF.y - ((float) contentView.getTop());
            contentView.setTranslationX(pointF.x - ((float) contentView.getLeft()));
            contentView.setTranslationY(top);
            this.n.a(this.g, pointF2);
            c(runnable);
        } else if (runnable != null) {
            post(runnable);
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        float rawY = motionEvent.getRawY() - this.f.y;
        switch (motionEvent.getAction()) {
            case mx.View_android_theme /*0*/:
                this.f.set(motionEvent.getRawX(), motionEvent.getRawY());
                break;
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                float height = ((float) getHeight()) * 0.225f;
                if (this.m != null && Math.abs(rawY) >= height) {
                    if (rawY >= 0.0f) {
                        this.m.b(this);
                        break;
                    }
                    this.m.a(this);
                    break;
                }
                a();
                break;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                this.g.getContentView().setTranslationY(rawY);
                this.i.setTranslationY(Math.max(0.0f, rawY));
                break;
        }
        return true;
    }

    public void a() {
        d.b(this.g.getContentView(), 0.0f, 0.0f, 699, this.a);
        d.b(this.i, 0.0f, 0.0f, 699, this.a);
    }

    public void b() {
        setBackgroundColor(this.e);
    }
}
