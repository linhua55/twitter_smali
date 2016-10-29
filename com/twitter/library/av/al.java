package com.twitter.library.av;

import android.graphics.Rect;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.twitter.android.mx;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.bd;
import com.twitter.util.ak;
import com.twitter.util.math.a;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class al implements OnTouchListener {
    @VisibleForTesting
    MotionEvent a;
    private final AVPlayer b;
    private final View c;
    private float d;
    private final Rect e;
    private MotionEvent f;
    private Boolean g;
    private long h;

    public al(AVPlayer aVPlayer, View view) {
        this.e = new Rect();
        this.b = aVPlayer;
        this.c = view;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = this.g == null || this.g.booleanValue();
        if (view.getParent() != null) {
            view.getParent().requestDisallowInterceptTouchEvent(z);
        }
        switch (motionEvent.getAction() & MotionEventCompat.ACTION_MASK) {
            case mx.View_android_theme /*0*/:
                this.f = MotionEvent.obtain(motionEvent);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.g == null) {
                    view.performClick();
                }
                a();
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                view.getHitRect(this.e);
                if (this.e.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    if (this.f == null) {
                        if (this.g != null && this.g.booleanValue()) {
                            b(motionEvent);
                            break;
                        }
                    }
                    float x = motionEvent.getX() - this.f.getX();
                    float y = motionEvent.getY() - this.f.getY();
                    if ((x * x) + (y * y) > ak.e()) {
                        if (Math.abs(x) > Math.abs(y)) {
                            this.g = Boolean.TRUE;
                            a(motionEvent);
                        } else {
                            this.g = Boolean.FALSE;
                        }
                        this.f = null;
                        break;
                    }
                }
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                a();
                break;
        }
        return true;
    }

    private void a() {
        if (this.g != null && this.g.booleanValue()) {
            b();
        }
        this.g = null;
    }

    @VisibleForTesting
    void a(MotionEvent motionEvent) {
        float f = 0.0f;
        bd z = this.b.z();
        this.h = z.b;
        float f2 = (float) z.c;
        float measuredWidth = ((float) this.c.getMeasuredWidth()) * 0.4f;
        if (measuredWidth > 0.0f) {
            f = f2 / measuredWidth;
        }
        this.d = f;
        this.a = MotionEvent.obtain(motionEvent);
        this.b.r();
        this.b.J();
    }

    @VisibleForTesting
    void b(MotionEvent motionEvent) {
        if (motionEvent.getEventTime() - this.a.getEventTime() >= 80) {
            long a = a.a(((long) ((motionEvent.getX() - this.a.getX()) * this.d)) + this.b.z().b, 0, this.b.z().c);
            if (a != this.h) {
                this.b.a(a);
                this.h = a;
            }
            this.a = MotionEvent.obtain(motionEvent);
        }
    }

    private void b() {
        this.b.K();
        this.b.b(false);
    }
}
