package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;

/* compiled from: Twttr */
public abstract class ListFragmentActivity extends TwitterFragmentActivity {
    protected abstract ic a(Intent intent, t tVar);

    protected abstract CharSequence a(Intent intent);

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        setTitle(a(intent));
        Y().b(b(intent));
        if (bundle == null) {
            b(intent, tVar);
        } else if (((TwitterListFragment) getSupportFragmentManager().findFragmentById(2131951923)) == null) {
            b(intent, tVar);
        }
    }

    private TwitterListFragment b(Intent intent, t tVar) {
        ic a = a(intent, tVar);
        Fragment fragment = a.a;
        getSupportFragmentManager().beginTransaction().add(2131951923, fragment, a.b).commit();
        return fragment;
    }

    protected CharSequence b(Intent intent) {
        return null;
    }
}
