package com.twitter.android.moments.data;

import android.support.annotation.VisibleForTesting;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.af;
import com.twitter.model.moments.ax;
import com.twitter.model.moments.k;
import com.twitter.model.moments.u;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage.VideoType;
import com.twitter.model.moments.viewmodels.l;
import com.twitter.model.moments.viewmodels.n;
import com.twitter.model.moments.viewmodels.r;
import com.twitter.model.moments.viewmodels.t;
import com.twitter.model.moments.x;
import com.twitter.util.object.e;
import defpackage.ckz;
import defpackage.clf;

/* compiled from: Twttr */
public class ac {
    public MomentPage a(ab abVar, Tweet tweet, String str, MomentPageDisplayMode momentPageDisplayMode, clf clf) {
        long j;
        MomentPageType momentPageType = clf.c;
        k kVar = clf.e;
        ax axVar = clf.f;
        if (clf.g != null) {
            j = clf.g.b;
        } else {
            j = 0;
        }
        x xVar = clf.d;
        af afVar = clf.i;
        if (momentPageType == MomentPageType.j) {
            ckz ckz = (ckz) e.a(clf.g);
            String str2 = ckz.d;
            return (MomentPage) ((l) ((l) ((l) ((l) ((l) new l().a(abVar)).a(str)).a(momentPageDisplayMode)).b(str2).a(ckz.c).a(kVar).a(xVar)).a(afVar)).q();
        }
        long j2 = clf.j;
        u uVar = clf.h;
        switch (ad.a[momentPageType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return (MomentPage) ((t) ((t) ((t) ((t) ((t) ((t) ((t) new t().a(abVar)).a(str)).a(tweet, j2)).a(momentPageDisplayMode)).a(kVar).a(uVar)).a(xVar)).a(afVar)).q();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return (MomentPage) ((com.twitter.model.moments.viewmodels.u) ((com.twitter.model.moments.viewmodels.u) ((com.twitter.model.moments.viewmodels.u) ((com.twitter.model.moments.viewmodels.u) ((com.twitter.model.moments.viewmodels.u) ((com.twitter.model.moments.viewmodels.u) ((com.twitter.model.moments.viewmodels.u) new com.twitter.model.moments.viewmodels.u().a(abVar)).a(str)).a(tweet, j2)).a(momentPageDisplayMode)).a((VideoType) e.a(a(momentPageType))).a(kVar).a(uVar)).a(xVar)).a(afVar)).q();
            case C.ENCODING_DTS /*7*/:
                return (MomentPage) ((r) ((r) ((r) ((r) ((r) ((r) ((r) new r().a(abVar)).a(str)).a(tweet, j2)).a(momentPageDisplayMode)).b(j).a(kVar).a(uVar)).a(xVar)).a(afVar)).q();
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return (MomentPage) ((n) ((n) ((n) ((n) ((n) ((n) ((n) ((n) new n().a(abVar)).a(str)).a(tweet, j2)).a(momentPageDisplayMode)).a(uVar)).a(axVar)).a(xVar)).a(afVar)).q();
            default:
                return (MomentPage) ((com.twitter.model.moments.viewmodels.x) ((com.twitter.model.moments.viewmodels.x) ((com.twitter.model.moments.viewmodels.x) ((com.twitter.model.moments.viewmodels.x) ((com.twitter.model.moments.viewmodels.x) ((com.twitter.model.moments.viewmodels.x) ((com.twitter.model.moments.viewmodels.x) ((com.twitter.model.moments.viewmodels.x) new com.twitter.model.moments.viewmodels.x().a(abVar)).a(str)).a(tweet, j2)).a(momentPageDisplayMode)).a(axVar)).a(uVar)).a(xVar)).a(afVar)).q();
        }
    }

    @VisibleForTesting
    static VideoType a(MomentPageType momentPageType) {
        switch (ad.a[momentPageType.ordinal()]) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return VideoType.a;
            case Util.TYPE_OTHER /*3*/:
                return VideoType.d;
            case EbmlReader.TYPE_FLOAT /*5*/:
                return VideoType.c;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return VideoType.b;
            default:
                return null;
        }
    }
}
