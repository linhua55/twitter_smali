package com.twitter.android.news;

import android.os.Bundle;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;

/* compiled from: Twttr */
public class NewsActivity extends TwitterFragmentActivity {
    public t a(Bundle bundle, t tVar) {
        tVar.a(0);
        tVar.a(false);
        tVar.d(true);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        setTitle(n.c());
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(2131951923, new NewsFragment()).commit();
        }
    }
}
