package com.twitter.app.common.base;

import android.os.Bundle;
import android.os.Parcelable;
import com.twitter.util.object.ObjectUtils;
import java.io.Serializable;
import java.util.List;

/* compiled from: Twttr */
public class g {
    public static g a;
    protected final Bundle b;

    static {
        a = new g(Bundle.EMPTY);
    }

    protected g(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.b = bundle;
    }

    public h f() {
        return new h(this);
    }

    public long p() {
        return this.b.getLong("focus_confirmation_delay_millis", -1);
    }

    public boolean q() {
        return this.b.getBoolean("is_focus_implicit", true);
    }

    public static g c(Bundle bundle) {
        return new g(bundle);
    }

    public boolean a(String str) {
        return this.b.containsKey(str);
    }

    public int b(String str) {
        return this.b.getInt(str);
    }

    public int a(String str, int i) {
        return this.b.getInt(str, i);
    }

    public long c(String str) {
        return this.b.getLong(str);
    }

    public long a(String str, long j) {
        return this.b.getLong(str, j);
    }

    public float d(String str) {
        return this.b.getFloat(str);
    }

    public long[] e(String str) {
        return this.b.getLongArray(str);
    }

    public boolean a(String str, boolean z) {
        return this.b.getBoolean(str, z);
    }

    public String f(String str) {
        return this.b.getString(str);
    }

    public String a(String str, String str2) {
        return this.b.getString(str, str2);
    }

    public <P extends Parcelable> List<P> g(String str) {
        return this.b.getParcelableArrayList(str);
    }

    public <P extends Parcelable> P h(String str) {
        return this.b.getParcelable(str);
    }

    public <S extends Serializable> S i(String str) {
        return (Serializable) ObjectUtils.a(this.b.getSerializable(str));
    }
}
