package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.View;
import android.view.View.OnTouchListener;
import bym;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.moments.ui.fullscreen.Event.EventType;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.j;
import com.twitter.model.moments.viewmodels.v;
import com.twitter.util.object.b;
import com.twitter.util.y;

/* compiled from: Twttr */
public class dg extends SimpleOnGestureListener implements OnPageChangeListener, OnTouchListener {
    private final boolean a;
    private boolean b;
    private final j c;
    private final GestureDetector d;
    private final ScaleGestureDetector e;
    private final y<Event> f;
    private final Handler g;
    private final Runnable h;
    private final cd i;
    private final Event j;
    private final fb k;
    private final float l;
    private final int m;
    private boolean n;
    private final Runnable o;
    private float p;
    private final OnScaleGestureListener q;
    private int r;
    private int s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;

    static /* synthetic */ float a(dg dgVar, float f) {
        float f2 = dgVar.p + f;
        dgVar.p = f2;
        return f2;
    }

    public static dg a(Context context, j jVar, y<Event> yVar, cd cdVar, fb fbVar) {
        return new dg(context, jVar, yVar, cdVar, new dj(context), fbVar);
    }

    dg(Context context, j jVar, y<Event> yVar, cd cdVar, b<OnScaleGestureListener, ScaleGestureDetector> bVar, fb fbVar) {
        this.j = new Event(EventType.ZOOM);
        this.o = new dh(this);
        this.q = new di(this);
        this.r = 2;
        this.s = 1;
        this.i = cdVar;
        this.d = new GestureDetector(context, this);
        this.c = jVar;
        this.f = yVar;
        this.g = new Handler(Looper.getMainLooper());
        this.h = new dk(this);
        this.m = context.getResources().getInteger(2131755060);
        this.e = (ScaleGestureDetector) bVar.a(this.q);
        this.a = bym.e();
        this.l = ((float) context.getResources().getDisplayMetrics().widthPixels) * DefaultLoadControl.DEFAULT_LOW_BUFFER_LOAD;
        this.k = fbVar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.k.a()) {
            if (this.a) {
                this.e.onTouchEvent(motionEvent);
            }
            if (this.e.isInProgress()) {
                this.b = true;
                return true;
            } else if (!this.b || motionEvent.getActionMasked() != 1 || !c()) {
                return this.d.onTouchEvent(motionEvent);
            } else {
                if (this.n) {
                    a(2);
                    b(1);
                } else {
                    a(1);
                    b(2);
                }
                this.g.removeCallbacks(this.o);
                this.g.postDelayed(this.o, 100);
                this.b = false;
                this.p = 0.0f;
                return true;
            }
        } else if (motionEvent.getActionMasked() != 1) {
            return true;
        } else {
            this.f.a(new Event(EventType.TAP));
            return true;
        }
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        if (!this.a) {
            this.g.removeCallbacks(this.h);
            this.g.postDelayed(this.h, (long) this.m);
        }
        return false;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.a && this.t == 0) {
            if (motionEvent.getX() < this.l) {
                this.f.a(new Event(EventType.PREVIOUS_PAGE));
            } else {
                this.f.a(new Event(EventType.NEXT_PAGE));
            }
        }
        return false;
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1) {
            if (this.a) {
                b();
            } else {
                this.f.a(new Event(EventType.DOUBLE_TAP));
                this.g.removeCallbacks(this.h);
            }
        }
        return false;
    }

    public boolean onDown(MotionEvent motionEvent) {
        this.f.a(new Event(EventType.TOUCH_DOWN));
        return false;
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (this.t == 1) {
            b(1);
        }
        if (this.w && !this.v && this.r == 1) {
            b(2);
            this.w = false;
        }
    }

    public void onPageSelected(int i) {
        this.u = i;
        a(2);
        b(1);
        this.v = true;
        this.i.b();
    }

    public void onPageScrollStateChanged(int i) {
        boolean z;
        this.t = i;
        if (i == 2) {
            z = true;
        } else {
            z = false;
        }
        this.w = z;
        if (i == 0) {
            this.v = false;
        }
    }

    public void a(Bundle bundle) {
        bundle.putInt("state_chrome_mode", this.s);
        bundle.putInt("state_scale_mode", this.r);
    }

    public void b(Bundle bundle) {
        this.r = bundle.getInt("state_scale_mode", 2);
        if (this.r == 1) {
            this.f.a(new Event(EventType.SCALE_MODE_FIT_NO_ANIM));
        }
        this.s = bundle.getInt("state_chrome_mode", 1);
        if (this.s == 2) {
            this.f.a(new Event(EventType.CHROME_MODE_LOCAL_NO_ANIM));
        }
    }

    void a() {
        this.f.a(new Event(EventType.TAP));
        b();
    }

    private void b() {
        if (!c()) {
            return;
        }
        if (this.r == 2) {
            a(1);
            b(2);
            return;
        }
        a(2);
        b(1);
    }

    private void a(int i) {
        if (this.r != i) {
            this.r = i;
            switch (i) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.f.a(new Event(EventType.SCALE_MODE_FIT));
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.f.a(new Event(EventType.SCALE_MODE_FILL));
                default:
            }
        }
    }

    private void b(int i) {
        if (this.s != i) {
            this.s = i;
            switch (i) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.f.a(new Event(EventType.CHROME_MODE_GLOBAL));
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.f.a(new Event(EventType.CHROME_MODE_LOCAL));
                default:
            }
        }
    }

    private boolean c() {
        MomentPage c = this.c.c(this.u);
        return (this.t != 0 || this.k.a() || c == null || c.i() || c.j() || (c instanceof v)) ? false : true;
    }
}
