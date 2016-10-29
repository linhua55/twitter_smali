package com.twitter.android;

import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import android.util.SparseArray;
import bbn;
import bbu;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.app.common.base.m;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.as;

/* compiled from: Twttr */
class sr implements m {
    final /* synthetic */ SparseArray a;
    final /* synthetic */ FragmentActivity b;
    final /* synthetic */ as c;
    final /* synthetic */ long d;
    final /* synthetic */ long e;
    final /* synthetic */ sn f;

    sr(sn snVar, SparseArray sparseArray, FragmentActivity fragmentActivity, as asVar, long j, long j2) {
        this.f = snVar;
        this.a = sparseArray;
        this.b = fragmentActivity;
        this.c = asVar;
        this.d = j;
        this.e = j2;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        String str;
        switch (sw.a[((TweetActionType) this.a.get(i2)).ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                str = "share_via_dm";
                sn.a(this.f, this.b, this.c);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                str = "share";
                aq.a(this.b, this.c, false);
                break;
            case Util.TYPE_OTHER /*3*/:
                str = "click";
                this.f.a(this.d, this.b);
                break;
            default:
                TweetActionType tweetActionType = (TweetActionType) this.a.get(i2);
                bbn.a(new IllegalArgumentException("Unhandled QuoteView Long Click Choice:" + (tweetActionType == null ? Integer.toString(i2) : tweetActionType.name())));
                str = null;
                break;
        }
        if (str != null) {
            bbu.a(new TwitterScribeLog(this.e).b(new String[]{TwitterScribeLog.a(this.f.f, "share_sheet", "quoted_tweet", str)}));
        }
    }
}
