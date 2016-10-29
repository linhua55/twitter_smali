package defpackage;

import android.animation.ObjectAnimator;
import android.support.annotation.VisibleForTesting;
import android.view.MotionEvent;
import android.view.View;
import com.twitter.android.mx;
import cqo;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: cqn */
public abstract class cqn {
    private final float a;
    private final float b;
    private cqp c;
    private float d;
    protected final int e;
    protected float f;
    private float g;
    private int h;
    private boolean i;

    public cqn(cqp cqp, int i, float f, float f2) {
        a(cqp);
        this.e = i;
        this.a = f;
        this.b = f2;
    }

    @VisibleForTesting
    public boolean a(View view, MotionEvent motionEvent) {
        float rawY;
        switch (motionEvent.getActionMasked()) {
            case mx.View_android_theme /*0*/:
                this.d = motionEvent.getRawX();
                rawY = motionEvent.getRawY();
                this.g = rawY;
                this.f = rawY;
                this.i = false;
                this.h = motionEvent.getPointerId(motionEvent.getPointerCount() - 1);
                return false;
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                boolean a;
                if (a(motionEvent) && this.i) {
                    a = a(view);
                } else {
                    a = false;
                }
                this.i = false;
                return a;
            case WireMessage.WIRE_CONTROL /*2*/:
                rawY = motionEvent.getRawX();
                float rawY2 = motionEvent.getRawY();
                float f = rawY2 - this.f;
                float f2 = rawY - this.d;
                float f3 = rawY2 - this.g;
                this.d = rawY;
                this.g = rawY2;
                if (!a(motionEvent)) {
                    return false;
                }
                if (!this.i && (!a(f) || !a(f2, f3))) {
                    return false;
                }
                this.i = true;
                a(view, f3);
                return false;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                b(view);
                this.i = false;
                this.h = -1;
                return false;
            default:
                return false;
        }
    }

    protected boolean a(float f) {
        return Math.abs(f) > ((float) this.e);
    }

    private boolean a(float f, float f2) {
        return Math.abs(f2) > Math.abs(f);
    }

    @VisibleForTesting
    public boolean a() {
        return this.i;
    }

    private boolean a(MotionEvent motionEvent) {
        return this.h >= 0 && motionEvent.getPointerCount() == 1;
    }

    private boolean a(View view) {
        float translationY = view.getTranslationY();
        if (translationY > this.b || translationY < (-this.b)) {
            if (this.c != null) {
                this.c.e();
            }
            return true;
        }
        b(view);
        return false;
    }

    private void b(View view) {
        if (view.getTranslationY() != 0.0f) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, new float[]{0.0f}).setDuration(100);
            duration.addUpdateListener(new cqo(this));
            duration.start();
        }
    }

    private void a(View view, float f) {
        float translationY = view.getTranslationY();
        translationY = c(translationY + ((float) (((double) f) * b(translationY))));
        view.setTranslationY(translationY);
        if (this.c != null) {
            this.c.a(translationY);
        }
    }

    private double b(float f) {
        return 1.0d - (Math.pow((double) Math.abs(f), 2.0d) / Math.pow((double) (this.b * 2.0f), 2.0d));
    }

    private float c(float f) {
        if (f < (-this.a)) {
            return -this.a;
        }
        if (f > this.a) {
            return this.a;
        }
        return f;
    }

    public void a(cqp cqp) {
        this.c = cqp;
    }
}
