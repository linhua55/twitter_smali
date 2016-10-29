package com.twitter.android;

import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import java.util.List;

/* compiled from: Twttr */
class cn implements m {
    final /* synthetic */ List a;
    final /* synthetic */ FragmentActivity b;
    final /* synthetic */ DMConversationFragment c;

    cn(DMConversationFragment dMConversationFragment, List list, FragmentActivity fragmentActivity) {
        this.c = dMConversationFragment;
        this.a = list;
        this.b = fragmentActivity;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        int intValue = ((Integer) this.a.get(i2)).intValue();
        if (intValue == 1) {
            DMConversationFragment.x(this.c);
        } else if (intValue == 2) {
            DMConversationFragment.y(this.c).c();
        } else if (intValue == 0) {
            DMConversationFragment.a(this.c.getContext(), DMConversationFragment.z(this.c));
        } else if (intValue == 3) {
            ((ec) ((ec) ((ec) new ec(780).b(2131362461)).d(2131362462)).f(2131362041)).i().a(new co(this)).a(this.b.getSupportFragmentManager());
        }
    }
}
