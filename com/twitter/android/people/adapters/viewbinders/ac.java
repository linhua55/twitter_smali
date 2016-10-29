package com.twitter.android.people.adapters.viewbinders;

import android.app.Activity;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.android.FollowFlowController;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.u;
import com.twitter.android.people.bb;
import com.twitter.internal.android.widget.aa;
import com.twitter.library.client.bg;
import com.twitter.model.people.ModuleTitle;
import com.twitter.model.people.ModuleTitle.Icon;
import com.twitter.model.people.aj;
import com.twitter.util.ak;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class ac implements aj<u> {
    private static final Map<Icon, Integer> a;
    private static final Map<Icon, Integer> b;
    private final FollowFlowController c;
    private final WeakReference<Activity> d;
    private final bb e;

    static {
        a = (Map) r.d().b(Icon.b, Integer.valueOf(2130839638)).q();
        b = (Map) r.d().b(Icon.c, Integer.valueOf(2130839956)).b(Icon.d, Integer.valueOf(2130839967)).q();
    }

    public ac(Activity activity, FollowFlowController followFlowController, bb bbVar) {
        this.e = bbVar;
        this.d = new WeakReference(activity);
        this.c = followFlowController;
    }

    public boolean a(i iVar) {
        return iVar instanceof u;
    }

    public View a(u uVar, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        View inflate = LayoutInflater.from(context).inflate(2130968886, viewGroup, false);
        ae aeVar = new ae(inflate);
        inflate.setTag(aeVar);
        aeVar.e.setLayoutManager(new LinearLayoutManager(context, 0, ak.f()));
        aeVar.e.setAdapter(new al(this.e));
        aeVar.e.addItemDecoration(new aa(0, context.getResources().getDimensionPixelSize(2131690149), 0, 0));
        aeVar.e.setItemAnimator(null);
        return inflate;
    }

    public void a(View view, u uVar) {
        ae aeVar = (ae) view.getTag();
        aj ajVar = uVar.a.e;
        int i = (TextUtils.isEmpty(ajVar.c) || TextUtils.isEmpty(ajVar.d)) ? 0 : 1;
        a(uVar.a.c, aeVar.a, a);
        a(uVar.a.d, aeVar.b, b);
        al alVar = (al) aeVar.e.getAdapter();
        if (uVar.a.f.c.isEmpty()) {
            aeVar.e.setVisibility(8);
        } else {
            List subList;
            if (uVar.a.f.c.size() > 6) {
                subList = uVar.a.f.c.subList(0, 6);
            } else {
                subList = uVar.a.f.c;
            }
            alVar.a(uVar);
            alVar.a(subList);
            alVar.notifyDataSetChanged();
            aeVar.e.setVisibility(0);
        }
        if (i != 0) {
            Context context = view.getContext();
            long g = bg.a().c().g();
            aeVar.c.setVisibility(0);
            aeVar.c.setText(ajVar.c);
            aeVar.f.setOnClickListener(new ad(this, uVar, ajVar, context, g));
            aeVar.f.setBackgroundDrawable(ContextCompat.getDrawable(view.getContext(), 2130840039));
            return;
        }
        aeVar.c.setVisibility(8);
        aeVar.c.setText(null);
        aeVar.f.setOnClickListener(null);
        aeVar.f.setBackgroundDrawable(null);
    }

    void a(ModuleTitle moduleTitle, TextView textView, Map<Icon, Integer> map) {
        int i;
        if (TextUtils.isEmpty(moduleTitle.c)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(moduleTitle.c);
        }
        int intValue = ((Integer) e.b(map.get(moduleTitle.d), Integer.valueOf(0))).intValue();
        if (ak.f()) {
            i = 0;
        } else {
            i = intValue;
            intValue = 0;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(i, 0, intValue, 0);
    }

    public boolean a(u uVar) {
        return false;
    }
}
