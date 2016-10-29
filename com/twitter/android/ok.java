package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.client.at;

/* compiled from: Twttr */
class ok implements OnClickListener, ou {
    final /* synthetic */ SearchActivity a;
    private final SearchFragment b;

    ok(SearchActivity searchActivity, SearchFragment searchFragment) {
        this.a = searchActivity;
        this.b = searchFragment;
    }

    public void onClick(View view) {
        this.b.n();
    }

    public void a(int i) {
        if (this.a.i) {
            at atVar = (at) this.a.m.get(this.a.j.a());
            atVar.i = i;
            atVar.h = true;
            this.a.j.notifyDataSetChanged();
        } else if (!this.a.z) {
            ((at) this.a.m.get(this.a.j.a())).i = i;
            this.a.j.notifyDataSetChanged();
        }
        this.a.E.b();
    }

    public void a() {
        if (this.a.i) {
            ((at) this.a.m.get(this.a.j.a())).i = 0;
            this.a.j.notifyDataSetChanged();
        } else if (!this.a.z) {
            ((at) this.a.m.get(this.a.j.a())).i = 0;
            this.a.j.notifyDataSetChanged();
            this.a.E.setTopVisible(false);
        }
    }
}
