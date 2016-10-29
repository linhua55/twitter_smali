package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import cfb;
import cgl;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.aj;
import defpackage.bzq;
import defpackage.bzt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import rv;

/* compiled from: Twttr */
public class CardPreviewControllerImpl implements e, bb {
    private final WeakReference<Activity> a;
    private final WeakReference<d> b;
    private PreviewState c;
    private bzq d;
    private cgl e;
    private final cgl f;
    private String g;
    private List<String> h;
    private bzt i;
    private i j;
    private final int k;
    private f l;

    /* compiled from: Twttr */
    enum PreviewState {
        NOT_SHOWING,
        PENDING,
        SHOWING,
        NO_CARD,
        DISMISSED
    }

    CardPreviewControllerImpl(Activity activity, d dVar, cgl cgl) {
        this.a = new WeakReference(activity);
        this.b = new WeakReference(dVar);
        this.c = PreviewState.NOT_SHOWING;
        this.g = k();
        this.k = d.a("card_compose_preview_fetch_delay", Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        this.f = cgl;
    }

    public boolean f() {
        return d.a("card_compose_preview_enabled", true);
    }

    public void a(String str, boolean z) {
        if (f()) {
            List b = b(str);
            a("Update", str, b);
            if (a(this.h, b, z)) {
                i();
                j();
                if (((d) this.b.get()) != null) {
                    this.h = b;
                    if (this.f == null || !b.contains(this.f.c())) {
                        this.j = a(str);
                        return;
                    } else {
                        g();
                        return;
                    }
                }
                return;
            }
            this.h = b;
            if (b.size() == 0) {
                cfb.b("CardPreview", "No URLs");
                i();
                j();
                h();
            }
            cfb.b("CardPreview", "No request necessary");
        }
    }

    private void g() {
        if (cfb.a()) {
            cfb.b("CardPreview", String.format("Local conversation card hit", new Object[0]));
        }
        d dVar = (d) this.b.get();
        if (dVar != null) {
            dVar.c();
        }
        cfb.b("CardPreview", String.format("Result (conversation card): %s", new Object[]{this.f.c()}));
        if ("tombstone://card".equals(this.g) || !this.g.equals(r0)) {
            a(this.f);
        }
    }

    i a(String str) {
        Object iVar = new i(this, str);
        new Handler(Looper.getMainLooper()).postDelayed(iVar, (long) this.k);
        return iVar;
    }

    public void a() {
        h();
        this.g = "tombstone://card";
        this.c = PreviewState.DISMISSED;
    }

    private void a(cgl cgl) {
        h();
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            this.g = cgl.c();
            this.d = a(activity, cgl);
            this.e = cgl;
            if (this.d != null) {
                this.d.a();
                this.d.b();
                d dVar = (d) this.b.get();
                if (dVar != null) {
                    dVar.a(this.d.d());
                    this.c = PreviewState.SHOWING;
                    if (this.l != null) {
                        this.l.b();
                    }
                }
            }
        }
    }

    bzq a(Activity activity, cgl cgl) {
        return bzq.a(activity, cgl);
    }

    private void h() {
        this.g = k();
        if (this.d != null) {
            this.d.c();
            this.d = null;
        }
        d dVar = (d) this.b.get();
        if (dVar != null) {
            dVar.a();
        }
        if (this.l != null) {
            this.l.c();
        }
    }

    public String b() {
        if (f()) {
            return this.g;
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }

    public String c() {
        if (!f()) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        switch (h.a[this.c.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return TtmlNode.ANONYMOUS_REGION_ID;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "pending";
            case Util.TYPE_OTHER /*3*/:
                return "attached";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "dismissed";
            case EbmlReader.TYPE_FLOAT /*5*/:
                return "no_card";
            default:
                return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }

    public cgl d() {
        return f() ? this.e : null;
    }

    public void e() {
        i();
        j();
        this.h = null;
    }

    public void a(f fVar) {
        this.l = fVar;
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        if (i != 0) {
            return;
        }
        if (xVar != this.i) {
            cfb.b("CardPreview", "Previous request completed, ignoring");
            return;
        }
        this.i = null;
        if (cfb.a()) {
            aa aaVar = (aa) xVar.l().b();
            cfb.b("CardPreview", String.format("Request complete: %d %s", new Object[]{Integer.valueOf(aaVar.d()), aaVar.e()}));
        }
        d dVar = (d) this.b.get();
        if (dVar != null) {
            dVar.c();
        }
        if (xVar.U()) {
            bzt bzt = (bzt) xVar;
            cgl h = bzt.h();
            if (cfb.a()) {
                if (bzt.e()) {
                    cfb.b("CardPreview", "Canceled");
                }
                if (h == null) {
                    cfb.b("CardPreview", "No card");
                }
            }
            if (bzt.e()) {
                h();
                this.c = PreviewState.NOT_SHOWING;
                return;
            } else if (h != null) {
                cfb.b("CardPreview", String.format("Result: %s", new Object[]{h.c()}));
                if ("tombstone://card".equals(this.g) || !this.g.equals(r1)) {
                    a(h);
                    return;
                }
                return;
            } else {
                h();
                this.c = PreviewState.NO_CARD;
                return;
            }
        }
        h();
        if (cfb.a()) {
            aaVar = (aa) xVar.l().b();
            cfb.b("CardPreview", String.format("Request failed: %d %s", new Object[]{Integer.valueOf(aaVar.d()), aaVar.e()}));
        }
    }

    static List<String> b(String str) {
        List arrayList = new ArrayList();
        if (aj.b(str)) {
            Matcher matcher = rv.h.matcher(str);
            while (matcher.find()) {
                if (aj.b(matcher.group(4))) {
                    arrayList.add(matcher.group(3));
                }
            }
        }
        return arrayList;
    }

    static boolean a(List<String> list, List<String> list2, boolean z) {
        if (z || list2.size() <= 0 || list2.equals(list)) {
            return false;
        }
        return true;
    }

    void c(String str) {
        d dVar = (d) this.b.get();
        if (dVar == null) {
            cfb.b("CardPreview", "View went away");
            return;
        }
        cfb.b("CardPreview", "Requesting");
        i();
        this.j = null;
        Context context = (Activity) this.a.get();
        if (context != null) {
            this.c = PreviewState.PENDING;
            this.g = k();
            this.i = a(context, str);
            if (this.l != null) {
                this.l.a();
            }
            dVar.b();
        }
    }

    bzt a(Context context, String str) {
        bzt bzt = new bzt(context, bg.a().c(), str);
        az.a(context).a(bzt, 0, this);
        return bzt;
    }

    private void i() {
        if (this.i != null) {
            cfb.b("CardPreview", "Canceling pending request");
            this.i.b();
            this.i = null;
        }
    }

    private void j() {
        if (this.j != null) {
            this.j.a = true;
            new Handler(Looper.getMainLooper()).removeCallbacks(this.j);
            this.j = null;
        }
    }

    private void a(String str, String str2, List<String> list) {
        if (cfb.a()) {
            StringBuilder stringBuilder = new StringBuilder(str);
            stringBuilder.append(" : ").append(String.format("'%s'", new Object[]{str2}));
            if (this.h != null) {
                stringBuilder.append(" | ");
                for (String str3 : this.h) {
                    stringBuilder.append(" ");
                    stringBuilder.append(String.format("'%s'", new Object[]{str3}));
                }
            }
            if (list != null) {
                stringBuilder.append(" | ");
                for (String str32 : list) {
                    stringBuilder.append(" ");
                    stringBuilder.append(String.format("'%s'", new Object[]{str32}));
                }
            }
            cfb.b("CardPreview", stringBuilder.toString());
        }
    }

    private String k() {
        if (d.a("card_compose_preview_tombstone_if_not_displayed")) {
            return "tombstone://card";
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }
}
