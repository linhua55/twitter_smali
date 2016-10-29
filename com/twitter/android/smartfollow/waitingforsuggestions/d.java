package com.twitter.android.smartfollow.waitingforsuggestions;

import android.support.annotation.VisibleForTesting;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bph;
import java.lang.ref.WeakReference;

@VisibleForTesting
/* compiled from: Twttr */
public class d extends z {
    private final WeakReference<a> a;

    public d(a aVar) {
        this.a = new WeakReference(aVar);
    }

    public void a(x xVar) {
        super.a(xVar);
        a aVar = (a) this.a.get();
        if (aVar != null) {
            bph bph = (bph) xVar;
            if (xVar.U()) {
                aVar.e().a(bph.g());
            }
            if (aVar.e().c().isEmpty()) {
                aVar.x();
            } else {
                aVar.m = true;
            }
        }
    }
}
