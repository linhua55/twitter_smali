package defpackage;

import android.content.res.Resources;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.util.object.e;
import rx.w;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: afs */
public class afs implements ahj<MomentPage> {
    private final afq a;
    private final Resources b;

    public afs(Resources resources, afq afq) {
        this.b = resources;
        this.a = afq;
    }

    public void a(MomentPage momentPage, Tweet tweet) {
        a((ab) e.a(momentPage.e()), tweet, momentPage);
        this.a.e();
    }

    public void a(ab abVar, Tweet tweet) {
        a(abVar, tweet, null);
        this.a.f();
        this.a.d();
    }

    private void a(ab abVar, Tweet tweet, MomentPage momentPage) {
        CharSequence charSequence;
        this.a.a(abVar.c);
        if (abVar.l == null || tweet == null) {
            charSequence = null;
        } else {
            charSequence = b(momentPage, tweet);
        }
        if (abVar.l == null || charSequence == null) {
            this.a.b(abVar.l);
        } else {
            this.a.a(abVar.l, charSequence);
        }
        if (abVar.a()) {
            this.a.a();
        } else {
            this.a.c(abVar.i);
        }
        this.a.a(abVar.f);
        this.a.b(abVar.e);
        if (a.a(abVar.o)) {
            this.a.a(abVar.o);
            return;
        }
        this.a.b();
    }

    public w<View> a() {
        return w.a(this.a.g());
    }

    public View aO_() {
        return this.a.g();
    }

    private String b(MomentPage momentPage, Tweet tweet) {
        int i;
        if (momentPage != null) {
            switch (aft.b[momentPage.d().ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    switch (aft.a[((MomentTweetStreamingVideoPage) momentPage).a.ordinal()]) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            i = 2131363089;
                            break;
                        case WireMessage.WIRE_CONTROL /*2*/:
                            i = 2131363093;
                            break;
                        default:
                            i = 2131363092;
                            break;
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    i = 2131363090;
                    break;
                default:
                    return BuildConfig.VERSION_NAME;
            }
        }
        i = 2131363091;
        Resources resources = this.b;
        Object[] objArr = new Object[1];
        objArr[0] = this.b.getString(2131364279, new Object[]{tweet.v});
        return resources.getString(i, objArr);
    }
}
