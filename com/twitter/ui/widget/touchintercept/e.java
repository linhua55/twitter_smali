package com.twitter.ui.widget.touchintercept;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.twitter.util.r;

/* compiled from: Twttr */
public class e extends g implements r {
    private boolean b;

    public e(Context context, h hVar) {
        super(context, hVar);
        this.b = true;
    }

    public void a() {
        this.b = false;
    }

    public void b() {
        this.b = true;
    }

    public boolean a(ViewGroup viewGroup, MotionEvent motionEvent) {
        return this.b && super.a(viewGroup, motionEvent);
    }

    public boolean b(ViewGroup viewGroup, MotionEvent motionEvent) {
        return this.b && super.b(viewGroup, motionEvent);
    }
}
