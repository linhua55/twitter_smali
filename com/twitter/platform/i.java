package com.twitter.platform;

import android.content.SharedPreferences.Editor;

/* compiled from: Twttr */
class i implements s {
    private final Editor a;

    i(Editor editor) {
        this.a = editor;
    }

    public s a(String str, String str2) {
        this.a.putString(str, str2);
        return this;
    }

    public s a(String str, int i) {
        this.a.putInt(str, i);
        return this;
    }

    public s a(String str, long j) {
        this.a.putLong(str, j);
        return this;
    }

    public s a(String str, boolean z) {
        this.a.putBoolean(str, z);
        return this;
    }

    public s a(String str) {
        this.a.remove(str);
        return this;
    }

    public void a() {
        this.a.apply();
    }
}
