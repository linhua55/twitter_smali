package com.twitter.android.twitterflows;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: Twttr */
public final class f {
    public static void a(View view, h hVar) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (width <= 0 || height <= 0) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            viewTreeObserver.addOnPreDrawListener(new g(viewTreeObserver, hVar, view));
            return;
        }
        hVar.a(view, width, height);
    }
}
