package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class sp implements OnClickListener {
    final /* synthetic */ View a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ long c;
    final /* synthetic */ Runnable d;
    final /* synthetic */ FragmentActivity e;
    final /* synthetic */ sn f;

    sp(sn snVar, View view, Tweet tweet, long j, Runnable runnable, FragmentActivity fragmentActivity) {
        this.f = snVar;
        this.a = view;
        this.b = tweet;
        this.c = j;
        this.d = runnable;
        this.e = fragmentActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        String str = "dismiss_dialog";
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                this.f.a(this.a, this.b, PromotedEvent.j, "dismiss_dialog", "dismiss_repetitive", this.c);
                if (this.d != null) {
                    this.d.run();
                }
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.f.a(this.a, this.b, PromotedEvent.k, "dismiss_dialog", "dismiss_uninteresting", this.c);
                if (this.d != null) {
                    this.d.run();
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.f.a(this.a, this.b, PromotedEvent.l, "dismiss_dialog", "dismiss_spam", this.c);
                if (this.d != null) {
                    this.d.run();
                }
            case Util.TYPE_OTHER /*3*/:
                str = d.b("ad_formats_ads_info_link", "https://business.twitter.com/help/how-twitter-ads-work");
                Intent intent = new Intent(this.f.g, WebViewActivity.class);
                intent.setData(Uri.parse(str));
                this.e.startActivity(intent);
            default:
        }
    }
}
