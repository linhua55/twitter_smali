package com.twitter.refresh.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView.FixedViewInfo;
import java.util.ArrayList;

/* compiled from: Twttr */
class e extends HeaderViewListAdapter {
    final /* synthetic */ RefreshableListView a;
    private final c b;
    private boolean c;
    private final ListAdapter d;
    private final ArrayList<FixedViewInfo> e;
    private final ArrayList<FixedViewInfo> f;

    e(RefreshableListView refreshableListView, ArrayList<FixedViewInfo> arrayList, ArrayList<FixedViewInfo> arrayList2, ListAdapter listAdapter, c cVar) {
        this.a = refreshableListView;
        super(arrayList, arrayList2, listAdapter);
        this.d = listAdapter;
        this.e = arrayList;
        this.f = arrayList2;
        this.b = cVar;
        b();
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.b.a(dataSetObserver);
    }

    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.b.b(dataSetObserver);
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    public boolean isEnabled(int i) {
        if (!this.a.o) {
            return super.isEnabled(i);
        }
        if (i == this.a.getRefreshHeaderPosition()) {
            return false;
        }
        if (i < this.a.getRefreshHeaderPosition()) {
            return super.isEnabled(i);
        }
        if (i <= 0 || !super.isEnabled(i - 1)) {
            return false;
        }
        return true;
    }

    int a() {
        return super.getCount();
    }

    public int getCount() {
        return this.a.j;
    }

    public Object getItem(int i) {
        int refreshHeaderPosition = this.a.getRefreshHeaderPosition();
        if (!this.a.o) {
            return super.getItem(i);
        }
        if (i == refreshHeaderPosition) {
            return null;
        }
        if (i < refreshHeaderPosition) {
            return super.getItem(i);
        }
        return super.getItem(i - 1);
    }

    public long getItemId(int i) {
        int refreshHeaderPosition = this.a.getRefreshHeaderPosition();
        if (!this.a.o) {
            return super.getItemId(i);
        }
        if (i == refreshHeaderPosition) {
            return 0;
        }
        if (i < refreshHeaderPosition) {
            return super.getItemId(i);
        }
        return super.getItemId(i - 1);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        int refreshHeaderPosition = this.a.getRefreshHeaderPosition();
        if (!this.a.o) {
            return a(i, view, viewGroup);
        }
        if (i == refreshHeaderPosition) {
            if (this.a.c(34)) {
                return this.a.i;
            }
            return this.a.g;
        } else if (i < refreshHeaderPosition) {
            return a(i, view, viewGroup);
        } else {
            return a(i - 1, view, viewGroup);
        }
    }

    private View a(int i, View view, ViewGroup viewGroup) {
        int i2 = 0;
        int headersCount = getHeadersCount();
        if (i < headersCount) {
            return ((FixedViewInfo) this.e.get(i)).view;
        }
        int i3 = i - headersCount;
        if (this.d != null) {
            headersCount = this.d.getCount();
            if (i3 < headersCount) {
                return this.d.getView(i3, view, viewGroup);
            }
        }
        headersCount = 0;
        headersCount = i3 - headersCount;
        if (headersCount < this.f.size() && headersCount >= 0) {
            i2 = headersCount;
        }
        return ((FixedViewInfo) this.f.get(i2)).view;
    }

    public int getItemViewType(int i) {
        int refreshHeaderPosition = this.a.getRefreshHeaderPosition();
        if (!this.a.o) {
            return super.getItemViewType(i);
        }
        if (i == refreshHeaderPosition) {
            return -1;
        }
        if (i < refreshHeaderPosition) {
            return super.getItemViewType(i);
        }
        return super.getItemViewType(i - 1);
    }

    public final void b() {
        if (!this.c) {
            super.registerDataSetObserver(this.b);
            this.c = true;
        }
    }

    public final void c() {
        if (this.c) {
            super.unregisterDataSetObserver(this.b);
            this.c = false;
        }
    }
}
