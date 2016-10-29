package com.twitter.android.events.sports.cricket;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import com.twitter.android.ProfileActivity;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.topic.a;

/* compiled from: Twttr */
final class c implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ a b;

    c(Context context, a aVar) {
        this.a = context;
        this.b = aVar;
    }

    public void onClick(View view) {
        Intent putExtra = new Intent(this.a, ProfileActivity.class).putExtra("user_id", this.b.h).putExtra("screen_name", this.b.c);
        putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.b.h));
        this.a.startActivity(putExtra);
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"search:event_card:cricket::profile_click"}));
    }
}
