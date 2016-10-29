package com.twitter.android.dialog;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.client.NotificationService;
import com.twitter.android.nu;
import com.twitter.android.widget.NotifyRetweetDialogFragment;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class NotifyRetweetDialogFragmentActivity extends DialogFragmentActivity implements nu {
    protected void a(Bundle bundle) {
        NotifyRetweetDialogFragment.a(0, bg.a().b(bundle.getString("sb_account_name")).g(), (Tweet) bundle.getParcelable("tweet"), false, true, (Intent) bundle.getParcelable("retweet_service_intent"), this).a(getSupportFragmentManager());
    }

    public void a(long j, Tweet tweet, boolean z) {
        finish();
    }

    public void a(long j, boolean z, boolean z2, boolean z3) {
    }

    public void b(long j, Tweet tweet, boolean z) {
        NotificationService.a(this, getIntent().getExtras());
        finish();
    }

    public void c(long j, Tweet tweet, boolean z) {
        finish();
    }

    public void d(long j, Tweet tweet, boolean z) {
    }
}
