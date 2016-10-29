package com.twitter.app.main;

import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.km;
import com.twitter.library.client.at;
import defpackage.bus;
import java.util.List;

/* compiled from: Twttr */
class m extends km {
    m(List<at> list) {
        super(list);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        this.b = ((at) this.a.get(i)).h ? 2 : 4;
        return super.getView(i, view, viewGroup);
    }

    protected int c() {
        return bus.a().c() ? 2130968968 : 2130968969;
    }
}
