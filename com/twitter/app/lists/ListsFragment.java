package com.twitter.app.lists;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import apz;
import aqa;
import blq;
import blr;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.library.service.x;
import com.twitter.model.core.cg;
import com.twitter.util.object.ObjectUtils;
import defpackage.aoz;
import defpackage.cgu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ListsFragment extends TwitterListFragment<cg, e> {
    private boolean a;
    private boolean b;
    private String c;
    private i d;

    public /* synthetic */ h C() {
        return m();
    }

    public /* synthetic */ g o() {
        return m();
    }

    public g m() {
        return g.a(getArguments());
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g m = m();
        this.a = m.c();
        this.b = m.g();
        this.c = m.d();
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ap().a(new e(getActivity()));
    }

    protected aoz<cgu<cg>> f() {
        return new apz(getActivity(), getLoaderManager(), 0, aqa.a(m(), aT().g()));
    }

    protected void a(cgu<cg> cgu_com_twitter_model_core_cg) {
        super.a((cgu) cgu_com_twitter_model_core_cg);
        if (this.a || cgu_com_twitter_model_core_cg.g()) {
            this.a = false;
            a(3);
        }
    }

    public void g() {
        a(2);
    }

    protected void h() {
        j jVar = (j) ObjectUtils.a(((e) az()).h());
        if (ar() && !jVar.a()) {
            a(1);
        }
    }

    protected boolean a(int i) {
        if (!a_(i)) {
            return false;
        }
        String a = TwitterListFragment.a(m().b() ? "own_lists" : "lists", null, i);
        if (this.b) {
            c(new blr(getActivity(), aT()).a(0).c(c(i)).a(this.c).a(this.Y).d(100).b("scribe_event", a), 1, i);
        } else {
            c(new blq(getActivity(), aT()).a(c(i)).a(this.Y).a(this.c).c(100).b("scribe_event", a), 1, i);
        }
        return true;
    }

    private int c(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (((e) az()).isEmpty()) {
                    return 0;
                }
                return 1;
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return 0;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }

    void a(i iVar) {
        this.d = iVar;
    }

    public void a(ListView listView, View view, int i, long j) {
        cg cgVar = (cg) ObjectUtils.a(listView.getItemAtPosition(i));
        switch (listView.getChoiceMode()) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.d != null) {
                    this.d.a(cgVar.bf_(), cgVar.h);
                }
            default:
                a(getContext(), cgVar);
        }
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i == 1 && !xVar.U()) {
            Toast.makeText(this.T, 2131362913, 1).show();
        }
    }

    public static void a(Context context, cg cgVar) {
        Intent intent = new Intent(context, ListTabActivity.class);
        intent.putExtra("owner_id", cgVar.f).putExtra("creator_id", cgVar.g).putExtra("list_id", cgVar.e).putExtra("list_name", cgVar.h).putExtra("list_description", cgVar.j).putExtra("list_fullname", cgVar.i).putExtra("is_private", cgVar.b);
        context.startActivity(intent);
    }
}
