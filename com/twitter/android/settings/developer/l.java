package com.twitter.android.settings.developer;

import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import com.twitter.config.AppConfig;

/* compiled from: Twttr */
public abstract class l {
    public static boolean a(PreferenceActivity preferenceActivity) {
        if (!AppConfig.m().p()) {
            return false;
        }
        preferenceActivity.addPreferencesFromResource(2131230732);
        PreferenceGroup preferenceGroup = (PreferenceGroup) preferenceActivity.findPreference("category_developer");
        m mVar = new m();
        preferenceGroup.findPreference("pref_debug").setOnPreferenceClickListener(mVar);
        preferenceGroup.findPreference("pref_feature_switches").setOnPreferenceClickListener(mVar);
        return true;
    }
}
