package com.twitter.android;

import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class mr extends km {
    mr(List<at> list) {
        super(list);
    }

    public void a(List<at> list) {
        this.a = list;
        if (a() >= this.a.size()) {
            a(-1);
        } else {
            notifyDataSetChanged();
        }
    }
}
