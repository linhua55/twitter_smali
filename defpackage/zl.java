package defpackage;

import android.support.v4.app.Fragment;
import android.widget.ListView;
import com.twitter.android.SearchFragment;
import com.twitter.android.eventtimelines.g;
import zn;

/* compiled from: Twttr */
/* renamed from: zl */
public class zl extends zo<SearchFragment> {
    private final zn a;

    public zl(zn znVar) {
        this.a = znVar;
    }

    public void a(SearchFragment searchFragment, int i) {
        ListView listView = searchFragment.ap().a;
        listView.clearFocus();
        if (searchFragment instanceof g) {
            listView.post(new zm(this, searchFragment, this.a.a()));
        }
        searchFragment.af();
        searchFragment.a(this.a.c_(i));
    }

    public boolean b(Fragment fragment) {
        return fragment instanceof SearchFragment;
    }
}
