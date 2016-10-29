package com.twitter.android.events.sports.nba;

import android.os.Bundle;
import android.view.View;
import com.twitter.android.events.TwitterEventActivity;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.app.common.base.t;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public class NBALandingActivity extends TwitterEventActivity {
    private c A;
    private a l;

    public void b(Bundle bundle, t tVar) {
        this.l = new NBAScoreCardImpl(this);
        this.A = new d(this.l);
        super.b(bundle, tVar);
    }

    protected String f() {
        return "nba_finals";
    }

    public View l() {
        return this.l.getView();
    }

    protected boolean B() {
        return true;
    }

    public void b(TopicView$TopicData topicView$TopicData) {
        this.A.a(topicView$TopicData);
    }

    protected boolean r() {
        return true;
    }

    protected List<at> N_() {
        return a(this.g ? "nba_finals_timeline_android_league_tabs" : "nba_finals_timeline_android_game_tabs", "nba_finals_timeline_android_media_tab");
    }
}
