package defpackage;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import bhc;
import com.twitter.android.GalleryActivity;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.dms.x;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
/* renamed from: ym */
class ym implements OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ x b;
    final /* synthetic */ ya c;

    ym(ya yaVar, int i, x xVar) {
        this.c = yaVar;
        this.a = i;
        this.b = xVar;
    }

    public void onClick(View view) {
        if (((bhc) this.c.a).h()) {
            this.c.G.a(this.a);
            return;
        }
        this.c.f.startActivity(new Intent(this.c.f, GalleryActivity.class).putExtra("dm", true).putExtra("show_tw", false).putExtra("media", m.a(this.b.e, MediaEntity.a)).putExtra("source_tweet_id", this.b.e.i).putExtra("association", this.c.I));
    }
}
