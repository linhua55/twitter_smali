package defpackage;

import android.content.res.Resources;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: bhb */
public abstract class bhb extends f<bha> {
    protected int a;
    private Resources b;
    private long c;
    private long d;
    private String e;
    private String f;
    private boolean g;
    private int h;

    public bhb() {
        this.f = BuildConfig.VERSION_NAME;
    }

    public bhb a(Resources resources) {
        this.b = resources;
        return this;
    }

    public bhb a(long j) {
        this.c = j;
        return this;
    }

    public bhb b(long j) {
        this.d = j;
        return this;
    }

    public bhb a(String str) {
        this.e = str;
        return this;
    }

    public bhb b(String str) {
        this.f = str;
        return this;
    }

    public bhb a(boolean z) {
        this.g = z;
        return this;
    }

    public bhb a(int i) {
        this.h = i;
        return this;
    }

    public bhb b(int i) {
        this.a = i;
        return this;
    }

    public boolean bo_() {
        return this.b != null;
    }
}
