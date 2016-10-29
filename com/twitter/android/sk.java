package com.twitter.android;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.api.timeline.g;
import com.twitter.model.timeline.aj;

/* compiled from: Twttr */
class sk extends AnimatorListenerAdapter {
    final /* synthetic */ aj a;
    final /* synthetic */ String b;
    final /* synthetic */ long c;
    final /* synthetic */ sj d;

    sk(sj sjVar, aj ajVar, String str, long j) {
        this.d = sjVar;
        this.a = ajVar;
        this.b = str;
        this.c = j;
    }

    public void onAnimationEnd(Animator animator) {
        this.d.a(this.a, null, "dismiss");
        this.d.a(this.b);
        this.d.c.a(new g(this.d.b, this.d.d.c(), this.c), null, ExecutionClass.c);
    }
}
