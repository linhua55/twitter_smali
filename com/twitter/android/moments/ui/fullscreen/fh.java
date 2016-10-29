package com.twitter.android.moments.ui.fullscreen;

import adc;
import android.support.annotation.VisibleForTesting;
import cgu;
import com.twitter.android.moments.data.ab;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.model.moments.viewmodels.a;
import cvq;
import cyw;
import cyy;
import java.util.List;
import java.util.Map;
import rx.an;
import rx.o;
import rx.subjects.c;
import rx.subjects.k;

/* compiled from: Twttr */
public class fh {
    private final ab a;
    private final adc b;
    private final k<Map<MomentModule, a>, Map<MomentModule, a>> c;
    private final an d;

    @VisibleForTesting
    fh(ab abVar, adc adc, k<Map<MomentModule, a>, Map<MomentModule, a>> kVar, long j) {
        this.a = abVar;
        this.b = adc;
        this.c = kVar;
        this.d = this.a.a(j).k(cvq.b()).f(e()).a(this.c);
    }

    public static fh a(ab abVar, adc adc, long j) {
        return new fh(abVar, adc, c.q(), j);
    }

    public o<Map<MomentModule, a>> a() {
        return this.c;
    }

    public void b() {
        this.d.K_();
    }

    private static cyy<Map<Long, a>> d() {
        return new fi();
    }

    private static cyw<Map<Long, a>, Map<MomentModule, a>> b(List<MomentModule> list) {
        return new fj(list);
    }

    private cyw<cgu<MomentModule>, o<Map<MomentModule, a>>> e() {
        return new fk(this);
    }
}
