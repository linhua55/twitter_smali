package com.twitter.android.media.imageeditor.stickers;

import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;

/* compiled from: Twttr */
class b extends SpanSizeLookup {
    final /* synthetic */ d a;
    final /* synthetic */ int b;
    final /* synthetic */ a c;

    b(a aVar, d dVar, int i) {
        this.c = aVar;
        this.a = dVar;
        this.b = i;
    }

    public int getSpanSize(int i) {
        if (this.a.getItemViewType(i) == 1) {
            return this.b;
        }
        return 1;
    }
}
