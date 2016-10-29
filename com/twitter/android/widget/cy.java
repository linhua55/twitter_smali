package com.twitter.android.widget;

import android.os.Bundle;
import com.twitter.app.common.base.d;

/* compiled from: Twttr */
public class cy extends d {
    protected cy(Bundle bundle) {
        super(bundle);
    }

    public static cy a(Bundle bundle) {
        return new cy(bundle);
    }

    public String a() {
        return this.b.getString("NotificationSettingsDialogFragment_account_name");
    }

    public String b() {
        return this.b.getString("collapse_key");
    }

    public String c() {
        return this.b.getString("event_id");
    }

    public String d() {
        return this.b.getString("query");
    }
}
