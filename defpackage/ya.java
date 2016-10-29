package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.v4.content.ContextCompat;
import android.text.format.DateUtils;
import android.text.util.Linkify;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bde;
import bgv;
import bhc;
import bii;
import bqk;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.av.video.n;
import com.twitter.android.bz;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.dm.aa;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.library.av.DMVideoThumbnailView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.DMAVDataSource;
import com.twitter.library.av.playback.bm;
import com.twitter.library.network.w;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.ao;
import com.twitter.library.util.q;
import com.twitter.library.view.QuoteView;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.media.ui.AnimatingProgressBar;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.media.ui.image.config.d;
import com.twitter.media.ui.image.config.g;
import com.twitter.model.dms.ae;
import com.twitter.model.dms.x;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.al;
import com.twitter.util.math.b;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.text.SimpleDateFormat;

/* compiled from: Twttr */
/* renamed from: ya */
public abstract class ya<H extends yp> extends xe<bhc> {
    private final Button A;
    private final Button B;
    private final View C;
    private final boolean D;
    private final boolean E;
    private final aa F;
    private final bz G;
    private final w H;
    private final TwitterScribeAssociation I;
    private final SimpleDateFormat J;
    private final SimpleDateFormat K;
    private final SimpleDateFormat L;
    private final g M;
    final m j;
    final boolean k;
    final TextView l;
    private final RelativeLayout m;
    private final View n;
    private final ViewGroup o;
    private final DMVideoThumbnailView p;
    private final VideoContainerHost q;
    private final View r;
    private final AttachmentMediaView s;
    private final AnimatingProgressBar t;
    private final MediaImageView u;
    private final View v;
    private final QuoteView w;
    private final View x;
    private final View y;
    private final View z;

    abstract void a(@ColorInt int i);

    abstract void a(String str);

    abstract void a(boolean z);

    abstract void b(int i);

    abstract void d();

    abstract String f();

    public ya(yo<H, ?> yoVar) {
        super(yoVar);
        this.k = yoVar.c;
        this.D = yoVar.d;
        this.F = yoVar.e;
        this.G = yoVar.f;
        this.j = yoVar.g;
        this.H = yoVar.i;
        this.I = yoVar.h;
        this.J = yoVar.j;
        this.K = yoVar.k;
        this.L = yoVar.l;
        this.E = yoVar.m;
        yp ypVar = (yp) yoVar.a;
        this.n = ypVar.b;
        this.m = ypVar.a;
        this.o = ypVar.c;
        this.l = ypVar.d;
        this.y = ypVar.n;
        this.x = ypVar.m;
        this.z = ypVar.o;
        this.A = ypVar.p;
        this.B = ypVar.q;
        this.v = ypVar.k;
        this.u = ypVar.j;
        this.p = ypVar.e;
        this.q = ypVar.f;
        this.r = ypVar.g;
        if (this.r != null) {
            this.s = ypVar.h;
            this.t = ypVar.i;
        } else {
            this.s = null;
            this.t = null;
        }
        this.w = ypVar.l;
        this.C = ypVar.r;
        this.M = this.E ? d.a(this.g.getDimension(2131689579)) : CommonRoundingStrategy.NONE;
    }

    public void a() {
        boolean z = false;
        this.l.setVisibility(0);
        this.y.setVisibility(0);
        this.x.setVisibility(8);
        b();
        String s = ((bhc) this.a).s();
        a(s, this.b.g);
        this.l.setTextSize(0, ao.a);
        boolean b = ((bhc) this.a).b(this.h);
        int color = ContextCompat.getColor(this.f, b ? 2131886210 : 2131886264);
        CharSequence a = o.a(s).a(((bhc) this.a).m()).a(this.j).a(color).a(true).b(b).a();
        d();
        l();
        q.a(this.f, this.l, a);
        this.l.setLinkTextColor(color);
        if (aj.a(a)) {
            this.y.setVisibility(4);
        }
        Linkify.addLinks(this.l, 6);
        this.z.setVisibility(8);
        b(this.E ? this.g.getDimensionPixelSize(2131689901) : 0);
        a(true);
        a(ContextCompat.getColor(this.f, 2131886400));
        this.y.setAlpha(1.0f);
        if (((bhc) this.a).h()) {
            int B = ((bii) this.a).B();
            if (B == 0) {
                a(this.f.getString(2131362415));
            } else {
                if (B == 1) {
                    a(this.f.getString(2131362415));
                } else {
                    a(this.f.getString(2131362414));
                    ((AnimatingProgressBar) e.a(this.t)).setVisibility(8);
                }
                this.l.setTextColor(ContextCompat.getColor(this.f, 2131886206));
                a(2130837810, 2131886205);
                a(ContextCompat.getColor(this.f, crw.deep_red));
            }
        } else if (((bhc) this.a).g() == 19) {
            this.y.setAlpha(0.5f);
            a(this.f.getString(2131362928));
        } else {
            if (((bhc) this.a).p()) {
                this.z.setVisibility(0);
                this.A.setOnClickListener(new yb(this));
                this.B.setOnClickListener(new yf(this));
            }
            e();
        }
        if (!i()) {
            if (this.c == null) {
                z = true;
            }
            b(z);
            if (!z) {
                bgv bgv = this.c.a;
                if (!this.i.a(bgv.g) && ((bhc) this.a).a(bgv)) {
                    h();
                }
                a(bgv);
            }
        }
        this.n.setContentDescription(k());
    }

    void e() {
        a(g());
    }

    String g() {
        long j = ((bhc) this.a).i;
        if (DateUtils.isToday(j)) {
            return this.J.format(Long.valueOf(j));
        }
        if (DateUtils.isToday(86400000 + j)) {
            return this.g.getString(2131364208, new Object[]{this.J.format(Long.valueOf(j))});
        } else if (al.b(j)) {
            return this.K.format(Long.valueOf(j));
        } else {
            return this.L.format(Long.valueOf(j));
        }
    }

    void a(@DrawableRes int i, @ColorRes int i2) {
        if (this.E && ((bhc) this.a).l()) {
            this.y.setBackground(b(i, i2));
        } else {
            this.y.setBackgroundColor(ContextCompat.getColor(this.f, i2));
        }
    }

    private Drawable b(@DrawableRes int i, @ColorRes int i2) {
        Drawable drawable = ContextCompat.getDrawable(this.f, i);
        bde.a(drawable, ContextCompat.getColor(this.f, i2));
        return drawable;
    }

    protected void b(boolean z) {
        LayoutParams layoutParams = (LayoutParams) this.m.getLayoutParams();
        int dimensionPixelSize = this.g.getDimensionPixelSize(2131689915);
        int dimensionPixelSize2 = this.g.getDimensionPixelSize(2131690148);
        int i = layoutParams.leftMargin;
        int i2 = layoutParams.rightMargin;
        if (!z) {
            dimensionPixelSize = dimensionPixelSize2;
        }
        layoutParams.setMargins(i, dimensionPixelSize2, i2, dimensionPixelSize);
        this.m.setLayoutParams(layoutParams);
    }

    private void a(String str, int i) {
        j();
        if (((bhc) this.a).t()) {
            e(i);
        } else if (((bhc) this.a).y() && ((bhc) this.a).h()) {
            bii bii = (bii) this.a;
            DraftAttachment C = bii.C();
            if (C != null) {
                a(C, i, bii.D());
            }
        } else if (((bhc) this.a).v()) {
            d(i);
        } else if (((bhc) this.a).w()) {
            c(i);
        } else if (((bhc) this.a).u()) {
            f(i);
        }
        if (str.trim().isEmpty()) {
            this.l.setVisibility(8);
            this.x.setVisibility(8);
        }
    }

    private void a(String str, bhc bhc) {
        if (this.E) {
            if (bhc.b(this.h)) {
                this.C.setBackground(b(2130837811, 2131886209));
            } else {
                this.C.setBackground(b(2130837809, 2131886207));
            }
            int dimensionPixelSize = this.g.getDimensionPixelSize(2131689913);
            int dimensionPixelSize2 = this.g.getDimensionPixelSize(2131689913);
            this.C.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2);
        }
        this.C.setVisibility(0);
        this.C.setOnClickListener(new yg(this, str));
        this.x.setVisibility(8);
    }

    private void a(View view) {
        int paddingLeft;
        int dimensionPixelSize = this.E ? this.g.getDimensionPixelSize(2131689578) : 0;
        if (c()) {
            paddingLeft = view.getPaddingLeft();
        } else {
            paddingLeft = dimensionPixelSize;
        }
        if (!c()) {
            dimensionPixelSize = view.getPaddingRight();
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), dimensionPixelSize, view.getPaddingBottom());
    }

    private void a(DraftAttachment draftAttachment, int i, int i2) {
        ((AttachmentMediaView) e.a(this.s)).setAnimatedGifViewListener(new yh(this, i));
        a((View) e.a(this.r));
        this.s.setAspectRatio(((EditableMedia) e.a(draftAttachment.a(3))).bm_());
        this.s.a(new MediaAttachment(draftAttachment), ComposerType.c);
        ((AnimatingProgressBar) e.a(this.t)).setProgress(i2);
        ((View) e.a(this.r)).setVisibility(0);
        this.v.setVisibility(0);
        this.x.setVisibility(0);
    }

    private void c(int i) {
        x xVar = (x) e.a(((bhc) this.a).n());
        if (a(xVar)) {
            a(xVar.j(), (bhc) this.a);
        } else {
            this.q.setVideoContainerConfig(new n(new DMAVDataSource(new bm().a((bhc) this.a)), this.I, bqk.f, Mode.a, null));
            this.q.setOnLongClickListener(new yj(this, i));
            this.q.setVisibility(0);
            this.x.setVisibility(0);
        }
        a(this.v);
        this.v.setVisibility(0);
    }

    private void d(int i) {
        x xVar = (x) e.a(((bhc) this.a).n());
        if (a(xVar)) {
            a(xVar.j(), (bhc) this.a);
        } else {
            this.p.a(((x) e.a(xVar)).j(), true);
            this.p.a();
            this.p.setOnClickListener(new yk(this));
            this.p.setOnLongClickListener(new yl(this, i));
            this.p.setRoundingStrategy(this.M);
            this.p.setVisibility(0);
            this.x.setVisibility(0);
        }
        a(this.v);
        this.v.setVisibility(0);
    }

    private void e(int i) {
        x xVar = (x) e.a(((bhc) this.a).n());
        if (a(xVar)) {
            a(xVar.j(), (bhc) this.a);
        } else {
            float a = b.a(((float) xVar.k()) / ((float) xVar.l()), 0.75f, 3.0f);
            this.u.setRoundingStrategy(this.M);
            this.u.setAspectRatio(a);
            this.u.setDefaultDrawable(new ColorDrawable(ContextCompat.getColor(this.f, crw.placeholder_bg)));
            this.u.a((com.twitter.media.request.b) com.twitter.library.media.util.q.a(xVar).a(this.H), false);
            this.u.setVisibility(0);
            this.u.setOnClickListener(new ym(this, i, xVar));
            this.u.setOnLongClickListener(new yn(this, i));
            this.x.setVisibility(0);
        }
        a(this.v);
        this.v.setVisibility(0);
    }

    private void f(int i) {
        long j = this.h;
        ae aeVar = (ae) ((bhc) this.a).n();
        long j2 = ((ae) e.a(aeVar)).e.e;
        String str = aeVar.e.m == null ? null : aeVar.e.m.c;
        this.F.a((bhc) this.a);
        this.w.setDisplaySensitiveMedia(this.D);
        this.w.setQuoteData(aeVar.e);
        this.w.setRenderRtl(ak.f());
        this.w.setVisibility(0);
        if (this.E) {
            this.w.setBorderCornerRadius((int) this.g.getDimension(2131689579));
        }
        this.w.setOnClickListener(new yc(this, i, j, j2, str, aeVar));
        this.w.setOnLongClickListener(new yd(this, i));
        a(this.v);
        this.v.setVisibility(0);
        this.x.setVisibility(0);
    }

    private boolean i() {
        if (this.o == null) {
            return false;
        }
        this.o.removeAllViews();
        this.o.setVisibility(8);
        View a = this.F.a(this.b);
        if (a == null) {
            return false;
        }
        this.o.setVisibility(0);
        this.o.addView(a);
        boolean z = this.c == null;
        int i = z ? 2130837672 : 2130837671;
        int dimensionPixelSize = z ? 0 : this.g.getDimensionPixelSize(2131689915);
        this.o.setBackgroundResource(i);
        LayoutParams layoutParams = (LayoutParams) this.o.getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin, dimensionPixelSize);
        this.o.setLayoutParams(layoutParams);
        return true;
    }

    private void j() {
        this.v.setPadding(0, this.v.getPaddingTop(), 0, this.v.getPaddingBottom());
        this.v.setVisibility(8);
        this.w.setVisibility(8);
        this.u.a(null);
        this.u.setVisibility(8);
        this.C.setVisibility(8);
        this.p.setVisibility(8);
        this.q.setVisibility(8);
        if (this.r != null) {
            this.r.setVisibility(8);
        }
    }

    private boolean a(x xVar) {
        return (!xVar.m() || this.D || this.F.d(xVar.j())) ? false : true;
    }

    private CharSequence k() {
        String str = this.b.d;
        int i = !((bhc) this.a).b(this.h) ? 1 : 0;
        String b = e.b(f());
        StringBuilder stringBuilder = new StringBuilder();
        if (((bhc) this.a).t()) {
            stringBuilder.append(this.g.getString(2131362463)).append(". ");
            if (i != 0) {
                this.u.setContentDescription(this.g.getString(2131362503, new Object[]{str, b}));
            } else {
                this.u.setContentDescription(this.g.getString(2131362517, new Object[]{b}));
            }
        } else if (((bhc) this.a).v()) {
            stringBuilder.append(this.g.getString(2131362549)).append(". ");
            if (i != 0) {
                this.p.setContentDescription(this.g.getString(2131362504, new Object[]{str, b}));
            } else {
                this.p.setContentDescription(this.g.getString(2131362518, new Object[]{b}));
            }
        } else if (((bhc) this.a).w()) {
            stringBuilder.append(this.g.getString(2131362458)).append(". ");
            if (i != 0) {
                this.q.setContentDescription(this.g.getString(2131362502, new Object[]{str, b}));
            } else {
                this.q.setContentDescription(this.g.getString(2131362516, new Object[]{b}));
            }
        }
        String b2 = e.b(this.l.getText().toString());
        if (i != 0) {
            String b3 = e.b(str);
            stringBuilder.append(this.g.getString(2131362506, new Object[]{b3, b2, b}));
        } else {
            stringBuilder.append(this.g.getString(2131362519, new Object[]{b2, b}));
        }
        return stringBuilder;
    }

    private void a(bgv bgv) {
        int dimensionPixelSize;
        if (bgv.f() && ((bhc) ObjectUtils.a(bgv)).p()) {
            dimensionPixelSize = this.g.getDimensionPixelSize(2131689920);
        } else if (((bhc) this.a).a(bgv) >= 3600000) {
            dimensionPixelSize = this.g.getDimensionPixelSize(2131689917);
        } else {
            dimensionPixelSize = this.g.getDimensionPixelSize(2131689918);
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.z.getLayoutParams();
        layoutParams.setMargins(0, this.g.getDimensionPixelSize(2131689919), 0, dimensionPixelSize);
        this.z.setLayoutParams(layoutParams);
    }

    void h() {
        a(false);
        if (!this.E || !((bhc) this.a).l() || n()) {
            return;
        }
        if (c()) {
            a(2130837811, 2131886209);
        } else {
            a(2130837809, 2131886207);
        }
    }

    private void l() {
        int dimensionPixelSize = this.g.getDimensionPixelSize(2131689896);
        this.l.setPadding(dimensionPixelSize, this.g.getDimensionPixelSize(2131690145), dimensionPixelSize, this.g.getDimensionPixelSize(2131690144));
        if (n()) {
            m();
            this.F.b((bhc) this.a);
            this.y.setBackgroundColor(ContextCompat.getColor(this.f, crw.clear));
            this.l.setPadding(0, 0, 0, this.g.getDimensionPixelSize(2131689902));
            this.l.setTextColor(ContextCompat.getColor(this.f, 2131886208));
            this.l.setTextSize(0, (float) this.g.getDimensionPixelSize(((bhc) this.a).r() == 1 ? 2131689904 : 2131689903));
        }
    }

    private void m() {
        if (this.F.e(((bhc) this.a).o())) {
            this.F.c();
            if (VERSION.SDK_INT > 17 && ((bhc) this.a).r() == 1) {
                this.y.getViewTreeObserver().addOnGlobalLayoutListener(new ye(this));
            }
        }
    }

    private boolean n() {
        return ((bhc) this.a).q() && ((bhc) this.a).r() <= 10;
    }
}
