package com.twitter.android.widget;

/* compiled from: Twttr */
class c implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ b b;

    c(b bVar, int i) {
        this.b = bVar;
        this.a = i;
    }

    public void run() {
        if (this.a <= 3) {
            this.b.a.f.setText(2131361915);
            this.b.a.g.setText(2131361912);
            this.b.a.e.setVisibility(8);
            this.b.a.d.setVisibility(0);
            this.b.a.c.setVisibility(8);
            return;
        }
        this.b.a.f.setText(2131361916);
        this.b.a.g.setText(2131361913);
        this.b.a.e.setVisibility(0);
        this.b.a.d.setVisibility(8);
        this.b.a.c.setVisibility(8);
    }
}
