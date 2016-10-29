package defpackage;

import bkc;
import com.twitter.library.dm.DMGroupAvatarImageVariant;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
/* renamed from: xq */
public class xq extends xu<bkc> {
    private final MediaImageView k;
    private final String l;

    public xq(xs xsVar) {
        super(xsVar);
        this.l = xsVar.c;
        this.k = ((xt) xsVar.a).a;
    }

    public void a() {
        if (((bkc) this.a).a(this.l)) {
            this.k.setVisibility(0);
            this.k.a(a.a(this.l).a(DMGroupAvatarImageVariant.e));
            this.k.setOnClickListener(new xr(this));
        } else {
            this.k.setVisibility(8);
        }
        this.j.setText(a(this.b.d, ((bkc) this.a).h(), c()));
        d();
        b();
    }

    private String a(String str, boolean z, boolean z2) {
        if (z2) {
            return this.g.getString(z ? 2131362553 : 2131362564);
        }
        return this.g.getString(z ? 2131362538 : 2131362548, new Object[]{str});
    }
}
