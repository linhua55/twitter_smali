package com.twitter.library.client.navigation;

import android.support.v7.util.SortedList.Callback;

/* compiled from: Twttr */
class e extends Callback<b> {
    final /* synthetic */ c a;

    private e(c cVar) {
        this.a = cVar;
    }

    public /* synthetic */ boolean areContentsTheSame(Object obj, Object obj2) {
        return b((b) obj, (b) obj2);
    }

    public /* synthetic */ boolean areItemsTheSame(Object obj, Object obj2) {
        return c((b) obj, (b) obj2);
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((b) obj, (b) obj2);
    }

    public int a(b bVar, b bVar2) {
        if (bVar.c() == bVar2.c() && bVar.e() == bVar2.e()) {
            return 0;
        }
        if (bVar.c() > bVar2.c()) {
            return 1;
        }
        if (bVar.c() < bVar2.c()) {
            return -1;
        }
        if (bVar.e() <= bVar2.e()) {
            return -1;
        }
        return 1;
    }

    public void onInserted(int i, int i2) {
    }

    public void onRemoved(int i, int i2) {
    }

    public void onMoved(int i, int i2) {
    }

    public void onChanged(int i, int i2) {
    }

    public boolean b(b bVar, b bVar2) {
        return bVar.a(bVar2);
    }

    public boolean c(b bVar, b bVar2) {
        return bVar.equals(bVar2);
    }
}
