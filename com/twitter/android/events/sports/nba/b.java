package com.twitter.android.events.sports.nba;

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
    final /* synthetic */ long a;
    final /* synthetic */ NBAScoreCardImpl b;

    b(NBAScoreCardImpl nBAScoreCardImpl, long j) {
        this.b = nBAScoreCardImpl;
        this.a = j;
    }

    public void onClick(View view) {
        Intent putExtra = new Intent(this.b.getContext(), ProfileActivity.class).putExtra("user_id", this.a);
        putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.a));
        this.b.getContext().startActivity(putExtra);
        c.a(this.b.getContext());
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"search:event_card:basketball::profile_click"}));
    }
}
