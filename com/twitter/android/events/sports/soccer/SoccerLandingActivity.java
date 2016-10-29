package com.twitter.android.events.sports.soccer;

import android.os.Bundle;
import android.view.View;
import com.twitter.android.events.TwitterEventActivity;
import com.twitter.android.events.sports.b;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.app.common.base.t;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public class SoccerLandingActivity extends TwitterEventActivity {
    private SoccerScoreCardView l;

    protected String f() {
        return "soccer";
    }

    protected View l() {
        return this.l;
    }

    protected void b(TopicView$TopicData topicView$TopicData) {
        this.l.a(topicView$TopicData);
    }

    protected boolean r() {
        return true;
    }

    protected List<at> N_() {
        if (this.g) {
            return a("soccer_experience_league_tabs", "soccer_experience_media_tab");
        }
        return a("soccer_experience_game_tabs", "soccer_experience_media_tab");
    }

    protected boolean B() {
        return this.g;
    }

    public void b(Bundle bundle, t tVar) {
        this.l = new SoccerScoreCardView(this);
        super.b(bundle, tVar);
        if (bundle == null) {
            b.a().a(1).add(this.i);
        }
    }

    protected void o() {
        List a = b.a().a(1);
        if (a != null && a.size() >= 1) {
            a.remove(a.size() - 1);
        }
        super.o();
    }
}
