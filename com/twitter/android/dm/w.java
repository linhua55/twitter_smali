package com.twitter.android.dm;

import android.support.annotation.StringRes;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.util.serialization.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class w extends c<w> {
    public /* synthetic */ b a() {
        return d();
    }

    public /* synthetic */ h b() {
        return d();
    }

    public /* synthetic */ g c() {
        return d();
    }

    public w() {
        super(null, 1);
    }

    public w a(as asVar) {
        this.a.putSerializable("quoted_tweet", m.a((Object) asVar, as.a));
        return this;
    }

    public w a(List<TwitterUser> list) {
        if (list != null) {
            this.a.putParcelableArrayList("recipients", new ArrayList(list));
        }
        return this;
    }

    public w c(boolean z) {
        this.a.putBoolean("is_from_message_me_card", z);
        return this;
    }

    public w b(String str) {
        this.a.putString("hint_text", str);
        return this;
    }

    public w a(@StringRes int i) {
        this.a.putInt("title_text_id", i);
        return this;
    }

    public v d() {
        return new v(this.a);
    }
}
