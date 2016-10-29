package defpackage;

import android.database.DataSetObserver;

/* compiled from: Twttr */
/* renamed from: chi */
class chi extends DataSetObserver {
    final /* synthetic */ chg a;

    private chi(chg chg) {
        this.a = chg;
    }

    public void onChanged() {
        super.onChanged();
        this.a.a();
    }
}
