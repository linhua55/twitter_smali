package com.twitter.android.highlights;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.animation.LinearInterpolator;
import com.twitter.android.mx;
import com.twitter.util.aj;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class k implements ar {
    public int a(int i) {
        return 2130968892;
    }

    public int b(int i) {
        return 0;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        ((p) atVar).h.setOnClickListener(akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        a((m) asVar, (p) atVar, context, akVar);
    }

    public static void a(m mVar, p pVar, Context context, n nVar) {
        Resources resources = context.getResources();
        pVar.w.setText(2131362769);
        if (pVar.b.getVisibility() != 0) {
            pVar.b.setVisibility(0);
            pVar.b.getDrawable().mutate().setColorFilter(new PorterDuffColorFilter(context.getResources().getColor(2131886425), Mode.SRC_IN));
        }
        switch (mVar.c()) {
            case mx.View_android_theme /*0*/:
                b(mVar, pVar, context, nVar);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                a(mVar, pVar, context);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                a(pVar);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a(mVar, pVar, resources);
                break;
            default:
                a(mVar, pVar, nVar);
                break;
        }
        mVar.e();
    }

    private static void a(p pVar) {
        pVar.s.setBackgroundResource(2130838895);
        pVar.t.setVisibility(8);
        pVar.u.setVisibility(8);
        pVar.c.setVisibility(8);
        pVar.d.pause();
        pVar.g.setVisibility(8);
        pVar.j.setVisibility(0);
        pVar.k.setVisibility(0);
        pVar.l.setVisibility(0);
        pVar.p.setVisibility(0);
        pVar.p.a();
        pVar.m.setVisibility(0);
        pVar.n.setVisibility(0);
        pVar.o.setVisibility(4);
    }

    private static void a(m mVar, p pVar, Resources resources) {
        pVar.s.setBackgroundResource(2130838895);
        pVar.t.setVisibility(8);
        pVar.u.setVisibility(8);
        pVar.c.setVisibility(8);
        pVar.d.pause();
        pVar.g.setVisibility(8);
        pVar.j.setVisibility(0);
        pVar.k.setVisibility(0);
        pVar.l.setVisibility(0);
        pVar.p.setVisibility(0);
        pVar.m.setVisibility(0);
        pVar.n.setVisibility(4);
        pVar.o.setVisibility(0);
        if (mVar.d() != mVar.c()) {
            long integer = (long) resources.getInteger(2131755044);
            long integer2 = (long) resources.getInteger(2131755047);
            TimeInterpolator linearInterpolator = new LinearInterpolator();
            pVar.o.setAlpha(0.0f);
            pVar.o.animate().alpha(1.0f).setDuration(integer).setStartDelay(integer2).setInterpolator(linearInterpolator).setListener(null).start();
            pVar.p.a(true);
            return;
        }
        pVar.p.a(false);
    }

    private static void b(m mVar, p pVar, Context context, n nVar) {
        pVar.s.setBackgroundResource(2130838907);
        pVar.t.setVisibility(0);
        pVar.u.setVisibility(0);
        pVar.c.setVisibility(0);
        pVar.d.setVisibility(8);
        pVar.d.pause();
        pVar.f.setText(aj.b(context.getString(2131362771), 1));
        if (mVar.d() != mVar.c()) {
            Resources resources = context.getResources();
            long integer = (long) resources.getInteger(2131755044);
            long integer2 = (long) resources.getInteger(2131755046);
            TimeInterpolator linearInterpolator = new LinearInterpolator();
            pVar.f.setAlpha(1.0f);
            pVar.f.animate().alpha(0.0f).setDuration(integer).setStartDelay(integer2).setInterpolator(linearInterpolator).setListener(new l(mVar, pVar, context, nVar)).start();
        }
        pVar.e.setVisibility(0);
        a(mVar, pVar);
    }

    private static void a(m mVar, p pVar, Context context) {
        pVar.s.setBackgroundResource(2130838907);
        pVar.t.setVisibility(0);
        pVar.u.setVisibility(0);
        pVar.c.setVisibility(0);
        pVar.d.setVisibility(8);
        pVar.d.pause();
        if (mVar.d() != mVar.c()) {
            Resources resources = context.getResources();
            long integer = (long) resources.getInteger(2131755044);
            long integer2 = (long) resources.getInteger(2131755045);
            TimeInterpolator linearInterpolator = new LinearInterpolator();
            pVar.f.setAlpha(0.0f);
            pVar.f.animate().alpha(1.0f).setDuration(integer).setStartDelay(integer2).setInterpolator(linearInterpolator).setListener(null).start();
        }
        pVar.e.setVisibility(0);
        a(mVar, pVar);
    }

    private static void a(m mVar, p pVar, n nVar) {
        pVar.s.setBackgroundResource(2130838907);
        pVar.t.setVisibility(0);
        pVar.u.setVisibility(0);
        pVar.c.setVisibility(0);
        pVar.d.setVisibility(0);
        pVar.e.setVisibility(8);
        a(mVar, pVar);
        mVar.a(pVar, nVar);
    }

    private static void a(m mVar, p pVar) {
        if (mVar.a) {
            pVar.i.setVisibility(8);
            pVar.h.setVisibility(0);
        } else {
            pVar.h.setVisibility(8);
            pVar.i.setVisibility(0);
        }
        pVar.j.setVisibility(8);
        pVar.p.setVisibility(8);
    }
}
