package com.twitter.app.mentions;

import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import com.twitter.android.TimelineFragment;
import com.twitter.android.util.ai;
import com.twitter.library.client.Session;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class MentionsTimelineFragment extends TimelineFragment {
    private ai m;
    private boolean n;

    public MentionsTimelineFragment() {
        this.n = true;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.n = C().a("should_fetch_new_data", true);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Session aT = aT();
        this.m = new ai(getActivity(), ai.a(this.K), aT.g(), aT.e());
    }

    public void a(View view, Tweet tweet, Bundle bundle) {
        super.a(view, tweet, bundle);
        if (tweet != null) {
            this.m.a(tweet.q);
        }
    }

    protected boolean j() {
        return this.n && super.j();
    }

    protected void a(boolean z) {
        super.a(z);
        this.m.c();
    }

    protected void a(long j, long j2) {
        super.a(j, j2);
        Session b = this.Z.b(j2);
        this.m.a(ai.a(this.K), b.g(), b.e());
    }

    protected void e() {
        super.e();
        this.m.c();
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (i == 0 && i2 > 0) {
            this.m.b();
        }
        return super.a(absListView, i, i2, i3, z);
    }
}
