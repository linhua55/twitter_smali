package com.twitter.android.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.util.object.b;

/* compiled from: Twttr */
public class bo {
    public static final b<View, bo> a;
    private final View b;
    private float c;
    private float d;

    static {
        a = new bp();
    }

    public bo(View view) {
        this.b = view;
    }

    public void a(MotionEvent motionEvent) {
        boolean z = true;
        switch (motionEvent.getAction()) {
            case Util.TYPE_DASH /*0*/:
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (Math.abs(this.c - motionEvent.getX()) * 2.0f <= Math.abs(this.d - motionEvent.getY())) {
                    z = false;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        this.c = motionEvent.getX();
        this.d = motionEvent.getY();
        ViewParent parent = this.b.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }
}
