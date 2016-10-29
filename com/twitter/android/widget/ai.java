package com.twitter.android.widget;

/* compiled from: Twttr */
class ai implements Runnable {
    final /* synthetic */ DraggableDrawerLayout a;

    ai(DraggableDrawerLayout draggableDrawerLayout) {
        this.a = draggableDrawerLayout;
    }

    public void run() {
        float f = 0.0f;
        DraggableDrawerLayout.a(this.a, false);
        DraggableDrawerLayout.a(this.a).clearAnimation();
        if (DraggableDrawerLayout.b(this.a) != null) {
            DraggableDrawerLayout.b(this.a).clearAnimation();
        }
        this.a.f();
        if (DraggableDrawerLayout.c(this.a) != null && DraggableDrawerLayout.d(this.a) == 2) {
            if (DraggableDrawerLayout.e(this.a) != null && DraggableDrawerLayout.e(this.a).computeScrollOffset()) {
                if (!DraggableDrawerLayout.e(this.a).isFinished()) {
                    f = -DraggableDrawerLayout.e(this.a).getCurrVelocity();
                }
                DraggableDrawerLayout.e(this.a).abortAnimation();
            }
            if (Math.abs(f) > ((float) DraggableDrawerLayout.f(this.a))) {
                DraggableDrawerLayout.c(this.a).a(f);
            }
        }
    }
}
