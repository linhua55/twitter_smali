package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.app.common.base.BaseFragmentActivity;

/* compiled from: Twttr */
public class StartActivity extends BaseFragmentActivity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        startActivity(c());
        finish();
    }

    private Intent c() {
        Intent intent = getIntent();
        Intent intent2 = new Intent(this, DispatchActivity.class);
        if (intent != null && intent.getCategories() != null && intent.getCategories().contains("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(intent.getAction())) {
            intent2.putExtra("from_launcher", true);
        }
        return intent2;
    }
}
