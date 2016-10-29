package defpackage;

import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.xv;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* renamed from: hx */
public final class hx extends xs {
    public Long a;
    public Integer b;
    public Boolean c;
    public Integer d;

    public hx() {
        a();
    }

    public hx a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.S = -1;
        return this;
    }

    public hx a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_contentInsetRight /*8*/:
                    this.a = Long.valueOf(xmVar.e());
                    continue;
                case p.Toolbar_titleMarginBottom /*16*/:
                    a = xmVar.f();
                    switch (a) {
                        case p.View_android_theme /*0*/:
                        case p.View_android_focusable /*1*/:
                        case p.View_paddingStart /*2*/:
                        case p.View_paddingEnd /*3*/:
                            this.b = Integer.valueOf(a);
                            break;
                        default:
                            continue;
                    }
                case p.Toolbar_subtitleTextColor /*24*/:
                    this.c = Boolean.valueOf(xmVar.g());
                    continue;
                case ApiRunnable.ACTION_CODE_PING_BROADCAST /*32*/:
                    a = xmVar.f();
                    switch (a) {
                        case p.View_android_focusable /*1*/:
                        case p.View_paddingStart /*2*/:
                        case p.View_paddingEnd /*3*/:
                        case p.View_theme /*4*/:
                        case p.Toolbar_contentInsetStart /*5*/:
                        case p.Toolbar_contentInsetEnd /*6*/:
                        case p.Toolbar_contentInsetLeft /*7*/:
                        case p.Toolbar_contentInsetRight /*8*/:
                        case p.Toolbar_popupTheme /*9*/:
                        case p.Toolbar_titleTextAppearance /*10*/:
                        case p.Toolbar_subtitleTextAppearance /*11*/:
                        case p.Toolbar_titleMargins /*12*/:
                        case p.Toolbar_titleMarginStart /*13*/:
                        case p.Toolbar_titleMarginEnd /*14*/:
                        case p.Toolbar_titleMarginTop /*15*/:
                        case p.Toolbar_titleMarginBottom /*16*/:
                        case p.Toolbar_maxButtonHeight /*17*/:
                        case p.Toolbar_collapseIcon /*18*/:
                        case p.Toolbar_collapseContentDescription /*19*/:
                        case p.Toolbar_navigationIcon /*20*/:
                        case p.Toolbar_navigationContentDescription /*21*/:
                        case p.Toolbar_logoDescription /*22*/:
                        case p.Toolbar_titleTextColor /*23*/:
                        case p.Toolbar_subtitleTextColor /*24*/:
                        case p.ActionBar_popupTheme /*25*/:
                        case p.ActionBar_homeAsUpIndicator /*26*/:
                        case ApiRunnable.ACTION_CODE_PING_WATCHING /*27*/:
                        case ApiRunnable.ACTION_CODE_END_WATCHING /*28*/:
                        case ApiRunnable.ACTION_CODE_SET_SETTINGS /*29*/:
                        case ApiRunnable.ACTION_CODE_GET_SETTINGS /*30*/:
                        case ApiRunnable.ACTION_CODE_END_BROADCAST /*31*/:
                            this.d = Integer.valueOf(a);
                            break;
                        default:
                            continue;
                    }
                default:
                    if (!xv.a(xmVar, a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }

    public void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        if (this.a != null) {
            com_google_android_gms_internal_zzsn.b(1, this.a.longValue());
        }
        if (this.b != null) {
            com_google_android_gms_internal_zzsn.a(2, this.b.intValue());
        }
        if (this.c != null) {
            com_google_android_gms_internal_zzsn.a(3, this.c.booleanValue());
        }
        if (this.d != null) {
            com_google_android_gms_internal_zzsn.a(4, this.d.intValue());
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.d(1, this.a.longValue());
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b.intValue());
        }
        if (this.c != null) {
            b += zzsn.b(3, this.c.booleanValue());
        }
        return this.d != null ? b + zzsn.b(4, this.d.intValue()) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }
}
