package com.twitter.android.timeline;

import com.twitter.android.widget.ex;
import com.twitter.android.widget.n;

/* compiled from: Twttr */
public class aa implements n<ba> {
    private final ag a;

    public aa(ag agVar) {
        this.a = agVar;
    }

    public void a(ba baVar, int i) {
        if (baVar instanceof ex) {
            this.a.a((ex) baVar, i);
        } else {
            this.a.a(baVar, i);
        }
    }

    public void a(ba baVar, boolean z) {
    }

    public boolean a(ba baVar) {
        return true;
    }
}
