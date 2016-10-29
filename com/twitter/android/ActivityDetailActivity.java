package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;

/* compiled from: Twttr */
public class ActivityDetailActivity extends TwitterFragmentActivity {
    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        setTitle(getString(intent.getIntExtra("title_res_id", 2131361854)));
        if (bundle == null) {
            Fragment activityDetailFragment = new ActivityDetailFragment();
            activityDetailFragment.a(((j) j.a(intent).h(false)).b());
            getSupportFragmentManager().beginTransaction().add(2131951923, activityDetailFragment).commit();
        }
    }
}
