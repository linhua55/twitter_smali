package com.twitter.android.moments.ui;

import android.content.Context;
import android.support.v4.app.FragmentManager;
import bmz;
import cni;
import com.twitter.android.util.bf;
import com.twitter.android.util.bo;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.util.collection.z;
import rx.w;

/* compiled from: Twttr */
public class e {
    private final Context a;
    private final FragmentManager b;
    private final bg c;

    public e(Context context, FragmentManager fragmentManager, bg bgVar) {
        this.a = context;
        this.b = fragmentManager;
        this.c = bgVar;
    }

    public w<Boolean> a(String str) {
        return bf.a(this.a.getResources(), str, -1, this.b);
    }

    public w<z<bmz, aa>> a(long j, cni cni) {
        return bo.b(new bmz(this.a, this.c.c(), j, cni, 1));
    }
}
