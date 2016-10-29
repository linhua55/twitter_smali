package com.twitter.android.av;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.VisibleForTesting;
import com.twitter.android.periscope.PeriscopePlayerActivity;
import com.twitter.app.common.base.u;
import com.twitter.library.api.periscope.PeriscopeCapiModel;

/* compiled from: Twttr */
public class ay extends bd {
    private final String k;
    private final PeriscopeCapiModel l;

    public ay(String str, PeriscopeCapiModel periscopeCapiModel) {
        this.k = str;
        this.l = periscopeCapiModel;
    }

    protected Intent a(Context context) {
        Intent a = new u().d(this.f).a(context, PeriscopePlayerActivity.class);
        a(a);
        return a;
    }

    @VisibleForTesting
    void a(Intent intent) {
        intent.putExtra("statusId", this.j.b().H);
        intent.putExtra("association", this.a);
        intent.putExtra("is_from_dock", this.c);
        intent.putExtra("is_from_inline", this.d);
        intent.putExtra("show_tw", false);
        intent.putExtra("broadcast_id", this.k);
        intent.putExtra("is_live", this.l.k());
    }
}
