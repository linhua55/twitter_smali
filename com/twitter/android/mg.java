package com.twitter.android;

import android.view.View;
import com.twitter.android.widget.LoggedOutBar;
import com.twitter.internal.android.widget.i;

/* compiled from: Twttr */
class mg extends i {
    final /* synthetic */ LoggedOutBar a;
    final /* synthetic */ ProfileActivity b;

    mg(ProfileActivity profileActivity, LoggedOutBar loggedOutBar) {
        this.b = profileActivity;
        this.a = loggedOutBar;
    }

    public void a() {
        g();
    }

    public void b() {
        g();
    }

    public void b(int i, int i2, int i3, int i4) {
        this.a.setTranslationY((float) (i4 - this.b.G.getHeight()));
        this.a.bringToFront();
    }

    private void g() {
        View bottomDockView = this.b.G.getBottomDockView();
        if (bottomDockView != null) {
            b(bottomDockView.getLeft(), bottomDockView.getTop(), bottomDockView.getRight(), bottomDockView.getBottom());
        }
    }
}
