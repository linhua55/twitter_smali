package com.twitter.android.media.imageeditor.stickers;

import android.view.View;
import android.view.View.OnLongClickListener;
import cjw;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import defpackage.ckr;
import java.util.List;

/* compiled from: Twttr */
class f implements OnLongClickListener {
    final /* synthetic */ ckr a;
    final /* synthetic */ u b;
    final /* synthetic */ cjw c;
    final /* synthetic */ d d;

    f(d dVar, ckr ckr, u uVar, cjw cjw) {
        this.d = dVar;
        this.a = ckr;
        this.b = uVar;
        this.c = cjw;
    }

    public boolean onLongClick(View view) {
        if (this.d.e == null || CollectionUtils.b(this.a.a)) {
            return false;
        }
        q gVar = new g(this);
        n a = n.a(this.a.a.size() + 1);
        if (!this.a.a.contains(this.c)) {
            a.c(this.c);
        }
        a.c(this.a.a);
        this.d.e.a((List) a.q(), gVar);
        return true;
    }
}
