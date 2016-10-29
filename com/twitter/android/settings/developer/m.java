package com.twitter.android.settings.developer;

import android.content.Context;
import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceActivity;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
class m implements OnPreferenceClickListener {
    m() {
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case -1644546761:
                if (key.equals("pref_debug")) {
                    z = false;
                    break;
                }
                break;
            case 1036541095:
                if (key.equals("pref_feature_switches")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case Util.TYPE_DASH /*0*/:
                a(preference, DebugSettingsActivity.class);
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a(preference, FeatureSwitchesSettingsActivity.class);
                return true;
            default:
                return false;
        }
    }

    private static void a(Preference preference, Class<? extends PreferenceActivity> cls) {
        Context context = preference.getContext();
        context.startActivity(new Intent(context, cls));
    }
}
