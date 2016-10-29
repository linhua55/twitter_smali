package com.twitter.android.widget.highlights;

import java.util.Comparator;

/* compiled from: Twttr */
final class c implements Comparator<h> {
    c() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((h) obj, (h) obj2);
    }

    public int a(h hVar, h hVar2) {
        return hVar.b - hVar2.b;
    }
}
