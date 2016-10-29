package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.util.ao;
import java.net.URI;

/* compiled from: Twttr */
public class ScribeThriftUrlPreference extends DebugUrlPreference {
    public ScribeThriftUrlPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, "scribe_thrift_endpoint_enabled", null, "scribe_thrift_endpoint_url", "Enable Scribe Thrift Endpoint", "Example: " + context.getString(2131364383), context.getString(2131364383));
    }

    protected URI a(String str) {
        return ao.a(str, "https", null);
    }

    protected URI a(URI uri) {
        return null;
    }
}
