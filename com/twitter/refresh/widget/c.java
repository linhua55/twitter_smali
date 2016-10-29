package com.twitter.refresh.widget;

import android.database.DataSetObserver;
import java.util.ArrayList;

/* compiled from: Twttr */
class c extends DataSetObserver {
    final /* synthetic */ RefreshableListView a;
    private final ArrayList<DataSetObserver> b;

    c(RefreshableListView refreshableListView) {
        this.a = refreshableListView;
        this.b = new ArrayList();
    }

    public void onChanged() {
        this.a.h();
        synchronized (this.b) {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                ((DataSetObserver) this.b.get(size)).onChanged();
            }
        }
        this.a.requestLayout();
    }

    public void onInvalidated() {
        this.a.j = 0;
        synchronized (this.b) {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                ((DataSetObserver) this.b.get(size)).onInvalidated();
            }
        }
        this.a.requestLayout();
    }

    public void a(DataSetObserver dataSetObserver) {
        this.b.add(dataSetObserver);
    }

    public void b(DataSetObserver dataSetObserver) {
        this.b.remove(dataSetObserver);
    }
}
