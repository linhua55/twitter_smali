package com.twitter.android.revenue.card;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import bdj;
import com.twitter.android.av.g;
import com.twitter.android.card.f;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.model.core.Tweet;
import defpackage.bdc;

/* compiled from: Twttr */
final class bg extends ab {
    final /* synthetic */ View a;
    final /* synthetic */ f b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ Context e;
    final /* synthetic */ View f;
    final /* synthetic */ g g;
    final /* synthetic */ Tweet h;

    bg(View view, f fVar, String str, String str2, Context context, View view2, g gVar, Tweet tweet) {
        this.a = view;
        this.b = fVar;
        this.c = str;
        this.d = str2;
        this.e = context;
        this.f = view2;
        this.g = gVar;
        this.h = tweet;
    }

    public void a(View view, MotionEvent motionEvent) {
        NativeCardUserAction a = NativeCardUserAction.a(this.a, view, motionEvent, 0);
        this.b.c("card_click", this.c, a);
        this.b.a(PromotedEvent.p, a);
        if (this.d == null) {
            Toast.makeText(this.e, bdc.av_playlist_download_failed, 0).show();
            return;
        }
        int[] iArr = new int[2];
        this.f.getLocationInWindow(iArr);
        this.g.a(this.h).a(this.d).a(this.b.a()).a(new PointF((float) iArr[0], (float) iArr[1]), new PointF((float) this.f.getWidth(), (float) this.f.getHeight())).a(bdj.a(this.e).k()).b(this.e);
    }
}
