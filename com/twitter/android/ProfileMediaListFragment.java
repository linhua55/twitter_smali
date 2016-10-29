package com.twitter.android;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import ark;
import com.twitter.android.metrics.b;
import com.twitter.android.widget.ScrollingHeaderMediaListFragment;
import com.twitter.app.common.list.t;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
public class ProfileMediaListFragment extends ScrollingHeaderMediaListFragment {
    private boolean c;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = C().a("is_me", false);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        if (a != null && this.c) {
            ((TypefacesTextView) a.findViewById(2131951653)).setText(2131362651);
        }
        return a;
    }

    protected void a(t tVar) {
        super.a(tVar);
        if (this.c) {
            tVar.d(2130969366).f(2130969223);
        }
    }

    protected void m() {
        this.b = new b("timeline:bellbird_profile_photogrid", "timeline:bellbird_profile_photogrid", ark.n, aG());
        this.b.b(this.Z.c().g());
        this.b.i();
    }
}
