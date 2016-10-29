package defpackage;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: di */
public class di {
    dj a;
    final float b;
    boolean c;
    boolean d;
    long e;
    float f;
    float g;

    public di(Context context) {
        this.b = (float) ViewConfiguration.get(context).getScaledTouchSlop();
        a();
    }

    public static di a(Context context) {
        return new di(context);
    }

    public void a() {
        this.a = null;
        b();
    }

    public void b() {
        this.c = false;
        this.d = false;
    }

    public void a(dj djVar) {
        this.a = djVar;
    }

    public boolean c() {
        return this.c;
    }

    public boolean a(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case p.View_android_theme /*0*/:
                this.c = true;
                this.d = true;
                this.e = motionEvent.getEventTime();
                this.f = motionEvent.getX();
                this.g = motionEvent.getY();
                break;
            case p.View_android_focusable /*1*/:
                this.c = false;
                if (Math.abs(motionEvent.getX() - this.f) > this.b || Math.abs(motionEvent.getY() - this.g) > this.b) {
                    this.d = false;
                }
                if (this.d && motionEvent.getEventTime() - this.e <= ((long) ViewConfiguration.getLongPressTimeout()) && this.a != null) {
                    this.a.j();
                }
                this.d = false;
                break;
            case p.View_paddingStart /*2*/:
                if (Math.abs(motionEvent.getX() - this.f) > this.b || Math.abs(motionEvent.getY() - this.g) > this.b) {
                    this.d = false;
                    break;
                }
            case p.View_paddingEnd /*3*/:
                this.c = false;
                this.d = false;
                break;
        }
        return true;
    }
}
