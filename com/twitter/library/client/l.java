package com.twitter.library.client;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.util.Base64;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class l implements SharedPreferences {
    private final String a;
    private final SharedPreferences b;
    private n c;

    @SuppressLint({"CommitPrefEdits"})
    public /* synthetic */ Editor edit() {
        return a();
    }

    public l(Context context, String str) {
        this(context, str, null);
    }

    public l(Context context, String str, String str2) {
        this.a = str2;
        this.b = context.getSharedPreferences(str, 0);
    }

    private String a(String str) {
        return this.a == null ? str : this.a + '_' + str;
    }

    public Map<String, ?> getAll() {
        Map<String, ?> all = this.b.getAll();
        String str = this.a;
        if (str != null) {
            List<String> arrayList = new ArrayList();
            for (String str2 : all.keySet()) {
                if (!str2.startsWith(str)) {
                    arrayList.add(str2);
                }
            }
            for (String str22 : arrayList) {
                all.remove(str22);
            }
        }
        return all;
    }

    public String getString(String str, String str2) {
        return this.b.getString(a(str), str2);
    }

    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> set2 = (Set) a(str, s.b(s.j));
        return set2 == null ? set : set2;
    }

    public int getInt(String str, int i) {
        return this.b.getInt(a(str), i);
    }

    public long getLong(String str, long j) {
        return this.b.getLong(a(str), j);
    }

    public float getFloat(String str, float f) {
        return this.b.getFloat(a(str), f);
    }

    public boolean getBoolean(String str, boolean z) {
        return this.b.getBoolean(a(str), z);
    }

    public <T> T a(String str, n<T> nVar) {
        T t = null;
        String a = a(str);
        String string = this.b.getString(a, null);
        if (string != null) {
            t = m.a(Base64.decode(string, 0), (n) nVar);
            if (t == null) {
                this.b.edit().remove(a).apply();
            }
        }
        return t;
    }

    public boolean contains(String str) {
        return this.b.contains(a(str));
    }

    public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.b.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.b.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @SuppressLint({"CommitPrefEdits"})
    public n a() {
        if (this.c == null) {
            this.c = new n(this.b.edit(), null);
        }
        return this.c;
    }
}
