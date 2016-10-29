package tv.periscope.android.ui.chat;

import android.support.v7.widget.RecyclerView.ViewHolder;

/* compiled from: Twttr */
class q {
    public ViewHolder a;
    public ViewHolder b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;

    private q(ViewHolder viewHolder, ViewHolder viewHolder2) {
        this.a = viewHolder;
        this.b = viewHolder2;
    }

    private q(ViewHolder viewHolder, ViewHolder viewHolder2, int i, int i2, int i3, int i4, int i5, int i6) {
        this(viewHolder, viewHolder2);
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = i6;
    }

    public String toString() {
        return "ChangeInfo{oldHolder=" + this.a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", fromWidth=" + this.g + ", toX=" + this.e + ", toY=" + this.f + ", toWidth=" + this.h + '}';
    }
}
