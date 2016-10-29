package com.twitter.ui.view;

import android.support.annotation.VisibleForTesting;
import android.support.design.widget.FloatingActionButton;
import com.twitter.ui.view.FabAnimator.Direction;

/* compiled from: Twttr */
public class f {
    private final FabAnimator a;
    private e b;
    private int c;

    public static f a(FloatingActionButton floatingActionButton) {
        h hVar = new h(floatingActionButton);
        return new f(hVar, FabAnimator.a(hVar));
    }

    @VisibleForTesting
    f(h hVar, FabAnimator fabAnimator) {
        this.c = 1;
        this.a = fabAnimator;
        hVar.a(this.c);
        hVar.a(new g(this));
    }

    public void a(e eVar) {
        this.b = eVar;
    }

    public void a(int i) {
        if (i != this.c) {
            Direction direction = i > this.c ? Direction.a : Direction.b;
            this.c = i;
            this.a.a(this.c, direction);
        }
    }
}
