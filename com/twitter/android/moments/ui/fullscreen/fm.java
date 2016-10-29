package com.twitter.android.moments.ui.fullscreen;

import acc;
import android.view.ViewGroup;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.model.moments.viewmodels.a;
import java.util.Map;

/* compiled from: Twttr */
class fm extends acc<Map<MomentModule, a>> {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ fl b;

    fm(fl flVar, ViewGroup viewGroup) {
        this.b = flVar;
        this.a = viewGroup;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Map) obj);
    }

    public void a(Map<MomentModule, a> map) {
        this.b.a(this.a, map);
    }
}
