package com.twitter.android.dm;

import android.net.Uri;
import android.os.Bundle;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class n extends b {
    protected n(Bundle bundle) {
        super(bundle);
    }

    public static n b(Bundle bundle) {
        return new n(bundle);
    }

    public long[] i() {
        return this.b.getLongArray("user_ids");
    }

    public String j() {
        return this.b.getString("conversation_id");
    }

    public Uri k() {
        return (Uri) e.b(this.b.getParcelable("media_uri"), this.b.getParcelable("android.intent.extra.STREAM"));
    }

    public String l() {
        return this.b.getString("title");
    }

    public String m() {
        return this.b.getString("title");
    }

    public boolean n() {
        return this.b.getBoolean("is_from_notification");
    }

    public boolean o() {
        return this.b.getBoolean("is_from_direct_share");
    }
}
