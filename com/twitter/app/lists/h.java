package com.twitter.app.lists;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.i;

/* compiled from: Twttr */
public class h extends i<h> {
    public /* synthetic */ com.twitter.app.common.list.h b() {
        return a();
    }

    public /* synthetic */ g c() {
        return a();
    }

    public h(Bundle bundle) {
        super(bundle);
    }

    public h(g gVar) {
        super((com.twitter.app.common.list.h) gVar);
    }

    public static h a(Intent intent) {
        return new h(intent != null ? intent.getExtras() : null);
    }

    public h a(boolean z) {
        this.a.putBoolean("is_me", z);
        return this;
    }

    public h b(boolean z) {
        this.a.putBoolean("force_restart", z);
        return this;
    }

    public h a(String str) {
        this.a.putString("screen_name", str);
        return this;
    }

    public g a() {
        return new g(this.a);
    }
}
