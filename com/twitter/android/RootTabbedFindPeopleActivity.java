package com.twitter.android;

import android.os.Bundle;
import com.twitter.app.common.base.t;
import com.twitter.app.users.aa;

/* compiled from: Twttr */
public class RootTabbedFindPeopleActivity extends TabbedFindPeopleActivity {
    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(true);
        return a;
    }

    protected aa a(int i) {
        return (aa) super.a(i).e(true);
    }
}
