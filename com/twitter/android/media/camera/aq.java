package com.twitter.android.media.camera;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;

/* compiled from: Twttr */
class aq implements OnClickListener {
    final /* synthetic */ ah a;

    aq(ah ahVar) {
        this.a = ahVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (!this.a.O) {
            this.a.a("twitter_camera::video:segment:dismiss", this.a.a(0, 0));
            AsyncTask.execute(new ar(this));
        }
        this.a.d.i();
    }
}
