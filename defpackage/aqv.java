package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import aqo;
import com.twitter.android.runtimepermissions.b;
import com.twitter.android.widget.GalleryGridFragment;

/* compiled from: Twttr */
/* renamed from: aqv */
class aqv implements OnClickListener {
    final /* synthetic */ aqo a;

    aqv(aqo aqo) {
        this.a = aqo;
    }

    public void onClick(View view) {
        if (aqo.e(this.a) != null) {
            aqo.e(this.a).d();
        }
        if (aqo.a(this.a).a()) {
            aqo.a(this.a).c();
        } else if (GalleryGridFragment.a(this.a.a)) {
            aqo.c(this.a);
        } else {
            aqo.k(this.a).a(aqo.s(), new b(this.a.a.getString(2131362739), this.a.a, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}).f(":composition::add_photo").a());
        }
    }
}
