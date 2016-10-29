package com.twitter.android.events.sports.cricket;

import android.os.Bundle;
import android.view.View;
import com.twitter.android.events.TwitterEventActivity;
import com.twitter.android.events.sports.b;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.app.common.base.t;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public class CricketLandingActivity extends TwitterEventActivity {
    private CricketScoreCardView A;
    private CricketPlayerCardView l;

    public void b(Bundle bundle, t tVar) {
        this.A = new CricketScoreCardView(this);
        this.l = new CricketPlayerCardView(this);
        super.b(bundle, tVar);
        if (bundle == null) {
            b.a().a(0).add(this.i);
        }
    }

    protected void o() {
        List a = b.a().a(0);
        if (a != null && a.size() >= 1) {
            a.remove(a.size() - 1);
        }
        super.o();
    }

    protected String f() {
        return "cricket";
    }

    protected View l() {
        return this.A;
    }

    protected View m() {
        return this.l;
    }

    protected List<at> N_() {
        if (this.g) {
            return a("cricket_experience_league_tabs", "cricket_experience_media_tab");
        }
        return a("cricket_experience_game_tabs", "cricket_experience_media_tab");
    }

    protected void b(TopicView$TopicData topicView$TopicData) {
        this.A.a(topicView$TopicData);
        this.l.a(topicView$TopicData);
    }

    protected boolean r() {
        return true;
    }

    protected void s() {
        if (r()) {
            this.h = getResources().getDrawable(2130837801);
        } else {
            super.s();
        }
    }

    protected boolean B() {
        return this.g;
    }
}
