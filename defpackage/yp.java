package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.library.av.DMVideoThumbnailView;
import com.twitter.library.view.QuoteView;
import com.twitter.media.ui.AnimatingProgressBar;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.view.p;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: yp */
public abstract class yp extends xg {
    final RelativeLayout a;
    private final View b;
    private final ViewGroup c;
    private final TextView d;
    private final DMVideoThumbnailView e;
    private final VideoContainerHost f;
    private final View g;
    private final AttachmentMediaView h;
    private final AnimatingProgressBar i;
    private final MediaImageView j;
    private final View k;
    private final QuoteView l;
    private final View m;
    private final View n;
    private final View o;
    private final Button p;
    private final Button q;
    private final View r;

    yp(View view, boolean z) {
        super(view);
        this.b = (View) e.a(view);
        this.a = (RelativeLayout) e.a(ObjectUtils.a(view.findViewById(2131952351)));
        this.c = z ? (ViewGroup) e.a(ObjectUtils.a(view.findViewById(2131952363))) : null;
        this.d = (TextView) e.a(ObjectUtils.a(this.a.findViewById(2131951640)));
        p.a(this.d);
        this.n = (View) e.a(this.a.findViewById(2131952359));
        this.m = (View) e.a(this.a.findViewById(2131952358));
        this.o = (View) e.a(this.a.findViewById(2131952360));
        this.p = (Button) e.a(ObjectUtils.a(this.o.findViewById(2131952361)));
        this.q = (Button) e.a(ObjectUtils.a(this.o.findViewById(2131952362)));
        this.k = (View) e.a(this.a.findViewById(2131952352));
        this.j = (MediaImageView) e.a(ObjectUtils.a(this.k.findViewById(2131952356)));
        this.e = (DMVideoThumbnailView) e.a(ObjectUtils.a(this.k.findViewById(2131952354)));
        this.f = (VideoContainerHost) e.a(ObjectUtils.a(this.k.findViewById(2131952355)));
        this.g = this.a.findViewById(2131952364);
        if (this.g != null) {
            this.h = (AttachmentMediaView) e.a(ObjectUtils.a(this.g.findViewById(2131952365)));
            this.i = (AnimatingProgressBar) e.a(ObjectUtils.a(this.g.findViewById(2131952366)));
            this.i.setHideOnComplete(true);
            this.i.setResetPrimaryOnComplete(true);
            this.i.setResetSecondaryOnComplete(true);
        } else {
            this.h = null;
            this.i = null;
        }
        this.l = (QuoteView) e.a(ObjectUtils.a(this.k.findViewById(2131952230)));
        this.r = (View) e.a(this.k.findViewById(2131952357));
    }
}
