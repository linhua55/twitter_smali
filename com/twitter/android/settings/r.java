package com.twitter.android.settings;

import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bon;
import defpackage.bpl;

/* compiled from: Twttr */
class r extends z {
    final /* synthetic */ PrivacyAndContentActivity a;

    r(PrivacyAndContentActivity privacyAndContentActivity) {
        this.a = privacyAndContentActivity;
    }

    public void a(x xVar) {
        bpl e = ((bon) xVar).e();
        if (xVar.U() && e != null && CollectionUtils.b(e.a())) {
            this.a.j.setSummary(this.a.getString(2131363638));
        }
    }
}
