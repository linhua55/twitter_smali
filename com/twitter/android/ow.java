package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;

/* compiled from: Twttr */
public class ow extends i<ow> {
    public /* synthetic */ h b() {
        return a();
    }

    public /* synthetic */ g c() {
        return a();
    }

    public ow(Bundle bundle) {
        super(bundle);
    }

    public ow(ov ovVar) {
        super((h) ovVar);
    }

    public static ow a(Intent intent) {
        return new ow(intent != null ? intent.getExtras() : null);
    }

    public ow a(int i) {
        this.a.putInt("search_type", i);
        return this;
    }

    public ow a(boolean z) {
        this.a.putBoolean("recent", z);
        return this;
    }

    public ow a(long j) {
        this.a.putLong("search_id", j);
        return this;
    }

    public ov a() {
        return new ov(this.a);
    }
}
