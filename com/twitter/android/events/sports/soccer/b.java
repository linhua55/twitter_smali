package com.twitter.android.events.sports.soccer;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import com.twitter.android.ProfileActivity;
import com.twitter.android.client.c;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ SoccerScoreCardView a;

    private b(SoccerScoreCardView soccerScoreCardView) {
        this.a = soccerScoreCardView;
    }

    public void onClick(View view) {
        long a = (view.getId() == 2131952282 || view.getId() == 2131952283) ? SoccerScoreCardView.a(this.a) : (view.getId() == 2131952287 || view.getId() == 2131952288) ? SoccerScoreCardView.b(this.a) : 0;
        if (a > 0) {
            SoccerScoreCardView.c(this.a).startActivity(new Intent(SoccerScoreCardView.c(this.a), ProfileActivity.class).putExtra("user_id", a).putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(a)));
            c.a(SoccerScoreCardView.c(this.a));
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"search:event_card:soccer::profile_click"}));
        }
    }
}
