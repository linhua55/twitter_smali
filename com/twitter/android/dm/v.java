package com.twitter.android.dm;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.StringRes;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.util.serialization.m;
import java.util.List;

/* compiled from: Twttr */
public class v extends b {
    public v(Intent intent) {
        this(intent != null ? intent.getExtras() : null);
    }

    protected v(Bundle bundle) {
        super(bundle);
    }

    public as i() {
        return (as) m.a((byte[]) this.b.getSerializable("quoted_tweet"), as.a);
    }

    public List<TwitterUser> j() {
        return this.b.getParcelableArrayList("recipients");
    }

    public boolean k() {
        return this.b.getBoolean("is_from_message_me_card");
    }

    public String l() {
        return this.b.getString("hint_text");
    }

    @StringRes
    public int m() {
        return this.b.getInt("title_text_id", 2131363599);
    }
}
