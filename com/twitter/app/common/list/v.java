package com.twitter.app.common.list;

import android.view.View;
import android.widget.ListView;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.refresh.widget.h;

/* compiled from: Twttr */
class v implements h {
    final /* synthetic */ k a;
    private View b;

    private v(k kVar) {
        this.a = kVar;
    }

    public void b() {
        if (k.d(this.a) != null) {
            k.d(this.a).b();
        }
        ListView listView = this.a.a;
        if (listView.getCount() > 0 && (listView.getChildAt(listView.getHeaderViewsCount() + 1) instanceof GroupedRowView)) {
            if (this.b == null) {
                this.b = this.a.aO_().findViewById(2131953211);
            }
            if (this.b != null) {
                this.b.setVisibility(0);
            }
        }
    }

    public void a() {
        if (k.d(this.a) != null) {
            k.d(this.a).a();
        }
    }

    public void a(boolean z) {
        if (k.d(this.a) != null) {
            k.d(this.a).a();
        }
    }
}
