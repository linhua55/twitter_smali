package com.twitter.library.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.twitter.android.mx;
import com.twitter.util.ak;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ab implements OnTouchListener {
    private final boolean a;
    private float b;
    private float c;
    private boolean d;
    private View e;

    public abstract void a(View view, MotionEvent motionEvent);

    public ab() {
        this(true);
    }

    public ab(boolean z) {
        this.a = z;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case mx.View_android_theme /*0*/:
                this.b = motionEvent.getX();
                this.c = motionEvent.getY();
                this.d = true;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.d) {
                    a(view, motionEvent);
                    this.d = false;
                    break;
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                float x = motionEvent.getX() - this.b;
                float y = motionEvent.getY() - this.c;
                if ((x * x) + (y * y) > ak.e()) {
                    this.d = false;
                    break;
                }
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                this.d = false;
                break;
        }
        view.setPressed(this.d);
        if (this.e != null) {
            this.e.setPressed(this.d);
        }
        return this.a;
    }

    public void a(View view) {
        this.e = view;
    }
}
