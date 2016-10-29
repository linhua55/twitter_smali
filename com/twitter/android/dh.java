package com.twitter.android;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.database.dm.d;

/* compiled from: Twttr */
class dh implements OnClickListener {
    final /* synthetic */ d a;
    final /* synthetic */ dg b;

    dh(dg dgVar, d dVar) {
        this.b = dgVar;
        this.a = dVar;
    }

    public void onClick(View view) {
        this.b.h.startActivity(new Intent(this.b.h, ProfileActivity.class).putExtra("user_id", this.a.c));
    }
}
