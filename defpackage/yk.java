package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import bhc;
import com.twitter.android.av.bd;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.bm;

/* compiled from: Twttr */
/* renamed from: yk */
class yk implements OnClickListener {
    final /* synthetic */ ya a;

    yk(ya yaVar) {
        this.a = yaVar;
    }

    public void onClick(View view) {
        new bd().a((AVDataSource) new bm().a((bhc) this.a.a).q()).a(this.a.I).a(this.a.f);
    }
}
