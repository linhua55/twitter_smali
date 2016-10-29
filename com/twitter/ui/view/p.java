package com.twitter.ui.view;

import android.os.Handler;
import android.support.v4.view.MotionEventCompat;
import android.text.Layout;
import android.text.Spanned;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;
import com.twitter.android.mx;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class p {
    private final Handler a;
    private final int b;
    private final View c;
    private Layout d;
    private float e;
    private float f;
    private boolean g;
    private c h;
    private c i;
    private int j;
    private int k;

    public static void a(TextView textView) {
        textView.setOnTouchListener(new q(new p(textView, null)));
    }

    public p(View view, Layout layout) {
        this.a = new r(this);
        this.c = view;
        this.d = layout;
        this.b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    public boolean a(MotionEvent motionEvent) {
        Layout layout = this.d;
        CharSequence text = layout.getText();
        Spanned spanned = text instanceof Spanned ? (Spanned) text : null;
        if (spanned == null) {
            return false;
        }
        int action = motionEvent.getAction() & MotionEventCompat.ACTION_MASK;
        int x = (int) (motionEvent.getX() - this.e);
        int y = (int) (motionEvent.getY() - this.f);
        if (x < 0 || x >= layout.getWidth() || y < 0 || y >= layout.getHeight()) {
            a();
            return false;
        } else if (this.i == null || (Math.abs(x - this.j) <= this.b && Math.abs(y - this.k) <= this.b)) {
            int lineForVertical = layout.getLineForVertical(y);
            if (((float) x) < layout.getLineLeft(lineForVertical) || ((float) x) > layout.getLineRight(lineForVertical)) {
                a();
                return false;
            }
            if (this.h != null) {
                switch (action) {
                    case mx.View_android_theme /*0*/:
                        a();
                        this.a.removeMessages(1);
                        this.a.sendEmptyMessageDelayed(2, (long) ViewConfiguration.getTapTimeout());
                        return true;
                    case WireMessage.WIRE_CHAT /*1*/:
                        this.a.removeMessages(2);
                        this.h.a(this.c);
                        this.h = null;
                        return true;
                    case WireMessage.WIRE_AUTH /*3*/:
                        this.a.removeMessages(1);
                        this.a.removeMessages(2);
                        this.h = null;
                        break;
                }
            }
            if (action == 0) {
                this.j = x;
                this.k = y;
            }
            if (action == 0) {
                int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, (float) x);
                c[] cVarArr = (c[]) spanned.getSpans(offsetForHorizontal, offsetForHorizontal, c.class);
                if (cVarArr.length > 0) {
                    boolean b = cVarArr[0].b();
                    if (b) {
                        a(cVarArr[0]);
                    }
                    return b;
                }
            } else if (action == 1) {
                c cVar = this.i;
                if (cVar != null) {
                    if (this.g) {
                        this.h = cVar;
                        this.a.sendEmptyMessageDelayed(1, (long) ViewConfiguration.getDoubleTapTimeout());
                        return true;
                    }
                    boolean b2 = cVar.b();
                    if (!b2) {
                        return b2;
                    }
                    cVar.onClick(this.c);
                    a();
                    return b2;
                }
            }
            return false;
        } else {
            a();
            return false;
        }
    }

    private void a(c cVar) {
        cVar.a(true);
        this.i = cVar;
        b();
    }

    private void a() {
        c cVar = this.i;
        if (cVar != null && cVar.a()) {
            cVar.a(false);
            this.i = null;
            this.j = 0;
            this.k = 0;
            b();
        }
    }

    private void b() {
        this.c.invalidate((int) this.e, (int) this.f, ((int) this.e) + this.d.getWidth(), ((int) this.f) + this.d.getHeight());
    }

    private void a(boolean z) {
        if (this.h != null) {
            if (z) {
                this.h.onClick(this.c);
                this.a.sendEmptyMessageDelayed(3, 300);
            }
            this.h = null;
        }
    }
}
