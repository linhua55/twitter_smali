package com.twitter.android.events.sports.cricket;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import com.twitter.android.ProfileActivity;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class a implements OnClickListener {
    final /* synthetic */ long a;
    final /* synthetic */ CricketScoreCardView b;

    a(CricketScoreCardView cricketScoreCardView, long j) {
        this.b = cricketScoreCardView;
        this.a = j;
    }

    public void onClick(View view) {
        Intent putExtra = new Intent(CricketScoreCardView.a(this.b), ProfileActivity.class).putExtra("user_id", this.a);
        putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.a));
        CricketScoreCardView.a(this.b).startActivity(putExtra);
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"search:event_card:cricket::profile_click"}));
    }
}
