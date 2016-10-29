package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.util.ao;
import defpackage.bdc;
import java.net.URI;

/* compiled from: Twttr */
public class DMHostPreference extends DebugUrlPreference {
    private final Context f;

    public DMHostPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, "dm_staging_enabled", null, "dm_staging_host", "Enable Staging DM Server", "Example: " + context.getString(bdc.base_host), "https://api-staging1.smf1.twitter.com");
        this.f = context;
    }

    protected URI a(String str) {
        return ao.a(str, "https", null);
    }

    protected boolean a() {
        return true;
    }

    protected void a(Boolean bool) {
        if (bool.booleanValue()) {
            di.a(this.f, bg.a().c().g()).a(null);
        }
    }

    protected URI a(URI uri) {
        return null;
    }
}
