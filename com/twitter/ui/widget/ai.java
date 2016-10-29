package com.twitter.ui.widget;

import java.lang.ref.WeakReference;

/* compiled from: Twttr */
final class ai implements Runnable {
    private final WeakReference<ag> a;

    private ai(ag agVar) {
        this.a = new WeakReference(agVar);
    }

    public void run() {
        ag agVar = (ag) this.a.get();
        if (agVar == null) {
            return;
        }
        if (ag.a) {
            agVar.z.start();
            return;
        }
        agVar.x = agVar.b(true);
        agVar.startAnimation(agVar.x);
        agVar.setVisibility(0);
    }
}
