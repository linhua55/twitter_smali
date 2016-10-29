package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.util.ao;
import java.net.URI;

/* compiled from: Twttr */
public class StagingHostPreference extends DebugUrlPreference {
    public StagingHostPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, "staging_enabled", null, "staging_url", "Enable Staging Server", "Example: " + context.getString(2131364299), context.getString(2131364299));
    }

    protected URI a(String str) {
        return ao.a(str, "https", null);
    }

    protected boolean a() {
        return true;
    }

    protected URI a(URI uri) {
        return null;
    }
}
