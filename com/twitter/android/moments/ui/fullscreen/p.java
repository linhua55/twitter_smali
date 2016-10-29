package com.twitter.android.moments.ui.fullscreen;

import com.twitter.model.av.Audio;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.z;

/* compiled from: Twttr */
class p implements z<ae> {
    final /* synthetic */ o a;

    p(o oVar) {
        this.a = oVar;
    }

    public void a(ae aeVar) {
        if (ObjectUtils.a(this.a.c, aeVar.b)) {
            Audio audio = (Audio) aeVar.a;
            this.a.g.a(this.a.f.getString(2131364304, new Object[]{audio.o(), audio.k()}));
        }
    }
}
