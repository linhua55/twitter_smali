package com.twitter.android.settings;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.twitter.android.commerce.network.e;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.view.OrderHistoryActivity;
import com.twitter.android.commerce.view.ProfileSummaryActivity;
import com.twitter.android.mx;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public final class OrdersAndPaymentsActivity extends BaseAccountSettingsActivity implements OnPreferenceClickListener {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230743);
        if (c.a()) {
            findPreference("commerce_settings_payment_shipping").setOnPreferenceClickListener(this);
        } else {
            b("commerce_settings_payment_shipping");
        }
        if (c.c()) {
            findPreference("commerce_settings_order_history").setOnPreferenceClickListener(this);
        } else {
            b("commerce_settings_order_history");
        }
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case -448566273:
                if (key.equals("commerce_settings_payment_shipping")) {
                    z = false;
                    break;
                }
                break;
            case -147265685:
                if (key.equals("commerce_settings_order_history")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                Intent intent = new Intent(this, ProfileSummaryActivity.class);
                Bundle bundle = new Bundle();
                bundle.putBoolean("commerce_launched_from_settings", true);
                e.a(bundle, this.b);
                intent.putExtras(bundle);
                startActivity(intent);
                bbu.a(new TwitterScribeLog(this.a).b("settings:payment_settings:::start"));
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
                Intent intent2 = new Intent(this, OrderHistoryActivity.class);
                Bundle bundle2 = new Bundle();
                e.a(bundle2, this.b);
                intent2.putExtras(bundle2);
                startActivity(intent2);
                return true;
            default:
                return false;
        }
    }
}
