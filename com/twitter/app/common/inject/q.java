package com.twitter.app.common.inject;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.util.j;
import com.twitter.app.common.util.u;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
class q extends j {
    final /* synthetic */ o a;

    q(o oVar) {
        this.a = oVar;
    }

    public void a(Fragment fragment) {
        this.a.a();
    }

    public void b(Fragment fragment) {
        this.a.b();
    }

    public void c(Fragment fragment) {
        this.a.c();
    }

    public void d(Fragment fragment) {
        this.a.d();
    }

    public void a(Fragment fragment, Bundle bundle) {
        this.a.a(bundle);
    }

    public void e(Fragment fragment) {
        this.a.e();
        ((u) ObjectUtils.a(fragment)).a(this);
    }

    public void a(Fragment fragment, Configuration configuration) {
        this.a.a(configuration);
    }
}
