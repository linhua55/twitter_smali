package com.twitter.platform;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.preference.PreferenceManager;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class g implements q {
    private final SharedPreferences a;
    private final Map<r, OnSharedPreferenceChangeListener> b;

    public g(SharedPreferences sharedPreferences) {
        this.b = new HashMap();
        this.a = sharedPreferences;
    }

    public g(Context context) {
        this(PreferenceManager.getDefaultSharedPreferences(context));
    }

    public String a(String str, String str2) {
        return this.a.getString(str, str2);
    }

    public int a(String str, int i) {
        return this.a.getInt(str, i);
    }

    public long a(String str, long j) {
        return this.a.getLong(str, j);
    }

    public boolean a(String str, boolean z) {
        return this.a.getBoolean(str, z);
    }

    @SuppressLint({"CommitPrefEdits"})
    public s a() {
        return new i(this.a.edit());
    }

    public void a(r rVar) {
        OnSharedPreferenceChangeListener hVar = new h(this, rVar);
        this.b.put(rVar, hVar);
        this.a.registerOnSharedPreferenceChangeListener(hVar);
    }
}
