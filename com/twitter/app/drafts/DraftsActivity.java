package com.twitter.app.drafts;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;

/* compiled from: Twttr */
public class DraftsActivity extends TwitterFragmentActivity {
    public static Intent a(Context context, boolean z) {
        return a(context, z, null, 0);
    }

    public static Intent a(Context context, boolean z, String str, long j) {
        return new j(str, j, z).a(context);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.a(0);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        setTitle(2131362568);
        if (bundle == null) {
            Fragment draftsFragment = new DraftsFragment();
            draftsFragment.a(((j) j.a(getIntent()).h(false)).b());
            getSupportFragmentManager().beginTransaction().add(2131951923, draftsFragment).commit();
        }
    }
}
