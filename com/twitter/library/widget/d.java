package com.twitter.library.widget;

import com.twitter.library.widget.tweet.content.f;

/* compiled from: Twttr */
public class d {
    public static a a(f fVar) {
        if (fVar instanceof a) {
            return (a) fVar;
        }
        return fVar instanceof c ? ((c) fVar).getAutoPlayableItem() : a.j;
    }
}
