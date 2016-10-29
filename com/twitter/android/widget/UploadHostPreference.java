package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.internal.network.HttpOperation;
import com.twitter.util.ao;
import defpackage.bdc;
import java.net.URI;
import java.net.URISyntaxException;

/* compiled from: Twttr */
public class UploadHostPreference extends DebugUrlPreference {
    public UploadHostPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, "upload_staging_enabled", null, "upload_staging_host", "Enable Staging Upload Server", "Example: " + context.getString(bdc.upload_host), context.getString(2131364400));
    }

    protected URI a(String str) {
        return ao.a(str, "https", null);
    }

    protected URI a(URI uri) {
        try {
            return new URI(uri.getScheme(), uri.getHost(), "/1.1/media/upload.json", null);
        } catch (URISyntaxException e) {
            return null;
        }
    }

    protected boolean a() {
        return true;
    }

    protected boolean a(HttpOperation httpOperation) {
        return httpOperation.l().a == 400;
    }
}
