package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.util.ao;
import java.net.URI;

/* compiled from: Twttr */
public class ScribeUrlPreference extends DebugUrlPreference {
    public ScribeUrlPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, "scribe_endpoint_enabled", null, "scribe_endpoint_url", "Enable Scribe Endpoint", "Example: " + context.getString(2131364384), context.getString(2131364384));
    }

    protected URI a(String str) {
        return ao.a(str, "https", "/scribe");
    }

    protected URI a(URI uri) {
        return null;
    }
}
