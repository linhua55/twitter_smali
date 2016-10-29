package com.twitter.android;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import ark;
import com.twitter.android.metrics.b;
import com.twitter.android.profiles.as;
import com.twitter.android.widget.ScrollingHeaderTimelineFragment;
import com.twitter.app.common.list.t;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
public class ProfileFavoriteTimelinesFragment extends ScrollingHeaderTimelineFragment {
    private boolean m;

    public void onCreate(Bundle bundle) {
        this.m = C().a("is_me", false);
        super.onCreate(bundle);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        if (a != null && this.m) {
            ((TypefacesTextView) a.findViewById(2131951653)).setText(2131362650);
        }
        return a;
    }

    protected void a(t tVar) {
        super.a(tVar);
        if (this.m) {
            tVar.d(2130969368).f(2130969223);
        }
    }

    protected String i() {
        return as.a(this.m);
    }

    protected void w() {
        this.c = new b("timeline:bellbird_profile_favorites", "timeline:bellbird_profile_favorites", ark.n, aG());
        this.c.b(this.Z.c().g());
        this.c.i();
    }
}
