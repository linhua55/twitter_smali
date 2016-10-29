package com.twitter.android.dm;

import android.net.Uri;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;

/* compiled from: Twttr */
public class o extends c<o> {
    public /* synthetic */ b a() {
        return d();
    }

    public /* synthetic */ h b() {
        return d();
    }

    public /* synthetic */ g c() {
        return d();
    }

    public o() {
        super(null, 2);
    }

    public o a(long[] jArr) {
        this.a.putLongArray("user_ids", jArr);
        return this;
    }

    public o b(String str) {
        this.a.putString("conversation_id", str);
        return this;
    }

    public o a(Uri uri) {
        this.a.putParcelable("media_uri", uri);
        return this;
    }

    public o c(String str) {
        this.a.putString("title", str);
        return this;
    }

    public o d(String str) {
        this.a.putString("title", str);
        return this;
    }

    public o c(boolean z) {
        this.a.putBoolean("is_from_notification", z);
        return this;
    }

    public o d(boolean z) {
        this.a.putBoolean("is_from_direct_share", z);
        return this;
    }

    public n d() {
        return new n(this.a);
    }
}
