package com.twitter.android.highlights;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.twitter.media.request.a;
import java.util.Map;

/* compiled from: Twttr */
public class av implements ar {
    private final Drawable a;
    private final Map<String, bc> b;

    public av(Drawable drawable, Map<String, bc> map) {
        this.a = drawable;
        this.b = map;
    }

    public int a(int i) {
        return 2130968910;
    }

    public int b(int i) {
        switch (i) {
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return 2131362787;
            case C.ENCODING_DTS /*7*/:
                return 2131362790;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return 2131362792;
            default:
                return 2131362786;
        }
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        ax axVar = (ax) atVar;
        axVar.l.setTag(axVar);
        axVar.l.setOnScrollListener(akVar);
        View inflate = layoutInflater.inflate(2130968911, axVar.l, false);
        axVar.l.addHeaderView(inflate);
        axVar.a(inflate);
        axVar.c.setBackground(this.a);
        axVar.d.setOnClickListener(akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        aw awVar = (aw) asVar;
        ax axVar = (ax) atVar;
        bc bcVar = (bc) this.b.get(awVar.e);
        if (bcVar == null) {
            bcVar = new bc(awVar, context, akVar, str, str2);
            this.b.put(awVar.e, bcVar);
        } else {
            bcVar.a(awVar);
        }
        axVar.a(bcVar);
        axVar.E.setVisibility(0);
        axVar.d.setTag(awVar.m);
        if (awVar.p) {
            axVar.a.a(a.a(awVar.n));
            axVar.a.setOnClickListener(akVar);
            axVar.b.setVisibility(8);
            axVar.b.setImageResource(0);
        } else {
            axVar.a.setOnImageLoadedListener(null);
            axVar.a.a(null);
            axVar.a.setOnClickListener(null);
            axVar.b.setVisibility(0);
            axVar.b.setImageResource(awVar.o);
        }
        axVar.e.setText(awVar.a);
        if (awVar.q) {
            axVar.f.setVisibility(0);
            axVar.f.setText(awVar.c);
        } else {
            axVar.f.setVisibility(8);
            axVar.f.setText(TtmlNode.ANONYMOUS_REGION_ID);
        }
        axVar.g.setText(awVar.d);
    }
}
