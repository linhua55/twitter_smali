package com.twitter.library.client;

import android.content.SharedPreferences.Editor;
import android.util.Base64;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import java.util.Set;

/* compiled from: Twttr */
public class n implements Editor {
    final /* synthetic */ l a;
    private Editor b;

    public /* synthetic */ Editor clear() {
        return a();
    }

    public /* synthetic */ Editor putBoolean(String str, boolean z) {
        return a(str, z);
    }

    public /* synthetic */ Editor putFloat(String str, float f) {
        return a(str, f);
    }

    public /* synthetic */ Editor putInt(String str, int i) {
        return a(str, i);
    }

    public /* synthetic */ Editor putLong(String str, long j) {
        return a(str, j);
    }

    public /* synthetic */ Editor putString(String str, String str2) {
        return a(str, str2);
    }

    public /* synthetic */ Editor putStringSet(String str, Set set) {
        return a(str, set);
    }

    public /* synthetic */ Editor remove(String str) {
        return a(str);
    }

    private n(l lVar, Editor editor) {
        this.a = lVar;
        this.b = editor;
    }

    public n a(String str, String str2) {
        this.b.putString(this.a.a(str), str2);
        return this;
    }

    public n a(String str, Set<String> set) {
        a(str, set, s.b(s.j));
        return this;
    }

    public n a(String str, int i) {
        this.b.putInt(this.a.a(str), i);
        return this;
    }

    public n a(String str, long j) {
        this.b.putLong(this.a.a(str), j);
        return this;
    }

    public n a(String str, float f) {
        this.b.putFloat(this.a.a(str), f);
        return this;
    }

    public n a(String str, boolean z) {
        this.b.putBoolean(this.a.a(str), z);
        return this;
    }

    public <T> n a(String str, T t, com.twitter.util.serialization.n<T> nVar) {
        if (t != null) {
            this.b.putString(this.a.a(str), Base64.encodeToString(m.a((Object) t, (com.twitter.util.serialization.n) nVar), 0));
        }
        return this;
    }

    public n a(String str) {
        this.b.remove(this.a.a(str));
        return this;
    }

    public n a() {
        Editor editor = this.b;
        for (String remove : this.a.getAll().keySet()) {
            editor.remove(remove);
        }
        return this;
    }

    public void apply() {
        this.b.apply();
        this.b = null;
        this.a.c = null;
    }

    @Deprecated
    public boolean commit() {
        boolean commit = this.b.commit();
        this.b = null;
        this.a.c = null;
        return commit;
    }
}
