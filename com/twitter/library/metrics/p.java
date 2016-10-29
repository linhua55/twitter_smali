package com.twitter.library.metrics;

import android.content.Context;
import ark;
import arp;
import arw;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.library.scribe.ScribeService;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class p implements arw {
    private final Context a;

    public p(Context context) {
        this.a = context.getApplicationContext();
    }

    public void a(ark ark) {
        arp w = ark.w();
        if (w != ark.l && aj.a.nextInt(AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS) < w.a()) {
            ScribeService.a(this.a, o.a(ark), false);
        }
    }

    public int hashCode() {
        return p.class.getName().hashCode();
    }
}
