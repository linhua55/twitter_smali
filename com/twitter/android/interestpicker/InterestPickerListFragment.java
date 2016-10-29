package com.twitter.android.interestpicker;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.recyclerview.BuildConfig;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import blm;
import com.twitter.android.FollowFlowController;
import com.twitter.android.bm;
import com.twitter.android.util.CategoryListItem;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.library.api.k;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.ui.widget.PromptView;
import defpackage.bbu;
import defpackage.bdl;
import java.util.ArrayList;
import java.util.List;
import te;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class InterestPickerListFragment extends TwitterListFragment<Cursor, bdl<Cursor>> implements OnTouchListener, OnItemClickListener, ar, c {
    private FollowFlowController a;
    private ArrayList<CategoryListItem> b;
    private List<Integer> c;
    private b d;
    private a e;
    private f f;
    private PopupEditText g;
    private ap h;
    private int i;

    public InterestPickerListFragment() {
        this.e = new l(null);
        this.i = 1;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h C = C();
        if (bundle != null) {
            this.b = bundle.getParcelableArrayList("fetched_list");
            this.c = bundle.getIntegerArrayList("checked_list");
            this.a = (FollowFlowController) bundle.getParcelable("state_flow_controller");
            if (this.h != null) {
                this.h.b(bundle);
            }
        } else {
            this.b = new ArrayList();
            this.c = new ArrayList();
            this.a = (FollowFlowController) C.h("flow_controller");
        }
        if (this.a == null) {
            this.a = new FollowFlowController(null);
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.d == null) {
            this.d = new b(getActivity(), this.b);
        }
        ap().a.setAdapter(this.d);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Context activity = getActivity();
        ListView listView = ap().a;
        View m = m();
        listView.setHeaderDividersEnabled(false);
        listView.addHeaderView(m, null, false);
        listView.setChoiceMode(2);
        listView.setOnItemClickListener(this);
        this.f = new f(listView);
        View inflate = View.inflate(activity, 2130968927, null);
        listView.addHeaderView(inflate, null, false);
        this.g = (PopupEditText) inflate.findViewById(2131952638);
        Session aT = aT();
        this.h = new ap(this.T, aT, new te(this.T, aT, "welcome_flow"));
        this.h.a(this);
        this.h.a(this.g);
        this.h.b(this.a.g());
        this.g.setOnTouchListener(this);
        this.i++;
        this.f.a(this.i);
        for (Integer intValue : this.c) {
            listView.setItemChecked(intValue.intValue(), true);
        }
        if (!this.c.isEmpty()) {
            this.e.a();
        }
        n();
    }

    private void n() {
        if (this.b.isEmpty()) {
            Session aT = aT();
            aT.g();
            c(new k(getActivity(), aT), 1, 3);
        }
    }

    protected View m() {
        if (this.a.e()) {
            return bm.a(getActivity(), getString(2131362826));
        }
        View promptView = new PromptView(getActivity());
        promptView.setIsHeader(true);
        promptView.setTitle(2131362825);
        return promptView;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("fetched_list", this.b);
        bundle.putParcelable("state_flow_controller", this.a);
        bundle.putIntegerArrayList("checked_list", this.f.a());
        if (this.h != null) {
            this.h.a(bundle);
        }
    }

    private void a(List<CategoryListItem> list) {
        this.d.clear();
        this.d.addAll(list);
        this.d.notifyDataSetChanged();
    }

    public void a(String str) {
        Object a = this.f.a(this.b);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).a((List) a)).b(this.a.g(), "interest_picker", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, str)).a((long) a.size()));
    }

    public void ay_() {
        a("selected");
        this.a.b(this.f.a(this.b, 1));
        this.a.c(this.f.a(this.b, 2, 3));
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        CategoryListItem categoryListItem = (CategoryListItem) this.b.get(i - this.i);
        if (categoryListItem.d() && !ap().a.isItemChecked(i)) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(this.a.g(), "interest_picker", "search", BuildConfig.VERSION_NAME, "deselect")).f(categoryListItem.a()));
        }
        this.e.a();
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        aa aaVar = (aa) xVar.l().b();
        this.e.a();
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (aaVar.b()) {
                    if (xVar instanceof k) {
                        this.b = ((k) xVar).g();
                    } else if (xVar instanceof blm) {
                        this.b = f.a(((blm) xVar).g());
                    }
                    a(this.b);
                    return;
                }
                this.a.b(getActivity());
            default:
        }
    }

    public int b() {
        return this.f.a().size();
    }

    public void a(a aVar) {
        this.e = aVar;
    }

    private void b(boolean z) {
        new Handler().post(new k(this, z, ap().a));
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view.getId() == 2131952638 && motionEvent.getActionMasked() == 1) {
            b(true);
            bbu.a(new TwitterScribeLog(aT().g()).b(this.a.g(), "interest_picker", "search", BuildConfig.VERSION_NAME, "click"));
        }
        return false;
    }

    public void a(CategoryListItem categoryListItem) {
        List<Integer> a = this.f.a();
        this.b.add(0, categoryListItem);
        this.d = new b(this.T, this.b);
        ListView listView = ap().a;
        listView.setAdapter(this.d);
        listView.setItemChecked(this.i, true);
        for (Integer intValue : a) {
            listView.setItemChecked(intValue.intValue() + 1, true);
        }
        this.e.a();
        this.g.setHint(2131362828);
        this.g.requestFocus();
        b(false);
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(this.a.g(), "interest_picker", "search", BuildConfig.VERSION_NAME, "select")).f(categoryListItem.a()));
    }

    public void b(String str) {
    }
}
