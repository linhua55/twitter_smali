package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.util.client.b;

@TargetApi(19)
@oi
public class nr extends nq {
    private Object g;
    private PopupWindow h;
    private boolean i;

    nr(Context context, pt ptVar, sz szVar, np npVar) {
        super(context, ptVar, szVar, npVar);
        this.g = new Object();
        this.i = false;
    }

    private void g() {
        synchronized (this.g) {
            this.i = true;
            if ((this.b instanceof Activity) && ((Activity) this.b).isDestroyed()) {
                this.h = null;
            }
            if (this.h != null) {
                if (this.h.isShowing()) {
                    this.h.dismiss();
                }
                this.h = null;
            }
        }
    }

    protected void a(int i) {
        g();
        super.a(i);
    }

    public void d() {
        g();
        super.d();
    }

    protected void f() {
        Window window = this.b instanceof Activity ? ((Activity) this.b).getWindow() : null;
        if (window != null && window.getDecorView() != null && !((Activity) this.b).isDestroyed()) {
            View frameLayout = new FrameLayout(this.b);
            frameLayout.setLayoutParams(new LayoutParams(-1, -1));
            frameLayout.addView(this.c.b(), -1, -1);
            synchronized (this.g) {
                if (this.i) {
                    return;
                }
                this.h = new PopupWindow(frameLayout, 1, 1, false);
                this.h.setOutsideTouchable(true);
                this.h.setClippingEnabled(false);
                b.a("Displaying the 1x1 popup off the screen.");
                try {
                    this.h.showAtLocation(window.getDecorView(), 0, -1, -1);
                } catch (Exception e) {
                    this.h = null;
                }
            }
        }
    }
}
