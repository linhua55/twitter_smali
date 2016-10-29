package com.twitter.android.settings;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.android.WebViewActivity;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.config.d;
import com.twitter.util.c;

/* compiled from: Twttr */
public class AboutActivity extends TwitterPreferenceActivity {
    public static String a(Context context) {
        return context.getString(2131361846, new Object[]{c.c(context)});
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230720);
        setTitle(a(this));
        findPreference("support_link").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364276))));
        if (!d.a("app_logs_signed_in_ui_enabled", true)) {
            b("report_problem");
        }
        String str = "file:///android_asset/legal.html";
        findPreference("legal").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse("file:///android_asset/legal.html")).putExtra("set_disable_javascript", true));
        findPreference("tos").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364406))));
        findPreference("pp").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364350))));
        findPreference("cu").setIntent(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364291))));
    }

    public boolean onSearchRequested() {
        return false;
    }
}
