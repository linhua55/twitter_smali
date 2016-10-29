package com.twitter.platform;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
class f implements SharedPreferences {
    private f() {
    }

    public Map<String, ?> getAll() {
        return new HashMap();
    }

    public String getString(String str, String str2) {
        return str2;
    }

    public Set<String> getStringSet(String str, Set<String> set) {
        return set;
    }

    public int getInt(String str, int i) {
        return i;
    }

    public long getLong(String str, long j) {
        return j;
    }

    public float getFloat(String str, float f) {
        return f;
    }

    public boolean getBoolean(String str, boolean z) {
        return z;
    }

    public boolean contains(String str) {
        return false;
    }

    public Editor edit() {
        return null;
    }

    public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }
}
