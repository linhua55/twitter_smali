package com.facebook.imagepipeline.producers;

import com.facebook.common.util.TriState;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imageformat.b;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.memory.ad;
import com.facebook.imagepipeline.nativecode.WebpTranscoder;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bx;
import gj;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class cn implements bw<gj> {
    private final Executor a;
    private final ab b;
    private final bw<gj> c;

    public cn(Executor executor, ab abVar, bw<gj> bwVar) {
        this.a = (Executor) bx.a((Object) executor);
        this.b = (ab) bx.a((Object) abVar);
        this.c = (bw) bx.a((Object) bwVar);
    }

    public void a(o<gj> oVar, bx bxVar) {
        this.c.a(new cq(this, oVar, bxVar), bxVar);
    }

    private void a(gj gjVar, o<gj> oVar, bx bxVar) {
        bx.a((Object) gjVar);
        o<gj> oVar2 = oVar;
        this.a.execute(new co(this, oVar2, bxVar.c(), "WebpTranscodeProducer", bxVar.b(), gj.a(gjVar)));
    }

    private static TriState b(gj gjVar) {
        bx.a((Object) gjVar);
        ImageFormat b = b.b(gjVar.d());
        switch (cp.a[b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return TriState.a(!WebpTranscoder.a(b));
            case EbmlReader.TYPE_FLOAT /*5*/:
                return TriState.UNSET;
            default:
                return TriState.NO;
        }
    }

    private static void b(gj gjVar, ad adVar) throws Exception {
        InputStream d = gjVar.d();
        switch (cp.a[b.b(d).ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Util.TYPE_OTHER /*3*/:
                WebpTranscoder.a(d, adVar, 80);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                WebpTranscoder.a(d, adVar);
            default:
                throw new IllegalArgumentException("Wrong image format");
        }
    }
}
