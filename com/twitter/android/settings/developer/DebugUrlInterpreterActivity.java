package com.twitter.android.settings.developer;

import android.content.Intent;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.main.MainActivity;

/* compiled from: Twttr */
public class DebugUrlInterpreterActivity extends TwitterFragmentActivity {
    private static final UriMatcher a;

    static {
        a = new UriMatcher(-1);
        a.addURI("concon.twitter.biz", "1.0/bundle/*", 1);
    }

    public void b(Bundle bundle, t tVar) {
        startActivity(b(getIntent().getData()));
        finish();
    }

    protected Intent b(Uri uri) {
        switch (a.match(uri)) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                String path = uri.getPath();
                return new Intent(this, DebugSettingsActivity.class).putExtra("concon_id", path.substring(path.lastIndexOf(47) + 1)).putExtra("is_from_debug_deeplink", true);
            default:
                return new Intent(this, MainActivity.class);
        }
    }
}
