package com.twitter.app.common.base;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.twitter.util.object.ObjectUtils;
import java.io.Serializable;

/* compiled from: Twttr */
public class h<T extends h<T>> {
    protected final Bundle a;

    public h() {
        this.a = new Bundle();
    }

    public h(Bundle bundle) {
        this.a = bundle != null ? new Bundle(bundle) : new Bundle();
    }

    public h(g gVar) {
        this(gVar.b);
    }

    public static h b(Intent intent) {
        return new h(intent != null ? intent.getExtras() : null);
    }

    public g c() {
        return new g(this.a);
    }

    public Bundle e() {
        return this.a;
    }

    public T b(long j) {
        this.a.putLong("focus_confirmation_delay_millis", j);
        return (h) ObjectUtils.a((Object) this);
    }

    public T g(boolean z) {
        this.a.putBoolean("is_focus_implicit", z);
        return (h) ObjectUtils.a((Object) this);
    }

    public T b(String str, String str2) {
        this.a.putString(str, str2);
        return (h) ObjectUtils.a((Object) this);
    }

    public T a(String str, boolean z) {
        this.a.putBoolean(str, z);
        return (h) ObjectUtils.a((Object) this);
    }

    public T a(String str, long j) {
        this.a.putLong(str, j);
        return (h) ObjectUtils.a((Object) this);
    }

    public T a(String str, int i) {
        this.a.putInt(str, i);
        return (h) ObjectUtils.a((Object) this);
    }

    public T a(String str, float f) {
        this.a.putFloat(str, f);
        return (h) ObjectUtils.a((Object) this);
    }

    public T a(String str, Parcelable parcelable) {
        this.a.putParcelable(str, parcelable);
        return (h) ObjectUtils.a((Object) this);
    }

    public T a(String str, Serializable serializable) {
        this.a.putSerializable(str, serializable);
        return (h) ObjectUtils.a((Object) this);
    }
}
