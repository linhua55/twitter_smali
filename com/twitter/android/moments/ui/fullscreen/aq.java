package com.twitter.android.moments.ui.fullscreen;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;
import cyw;
import rx.w;

/* compiled from: Twttr */
final class aq implements cyw<x<TwitterUser>, w<Integer>> {
    aq() {
    }

    public w<Integer> a(x<TwitterUser> xVar) {
        if (xVar.c()) {
            return w.a(Integer.valueOf(((TwitterUser) xVar.b()).S));
        }
        return w.a(Integer.valueOf(0));
    }
}
