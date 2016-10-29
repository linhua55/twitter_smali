package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import cni;
import com.twitter.android.profiles.ProfileDetailsViewManager;
import com.twitter.android.profiles.ProfileDetailsViewManager.IconItemType;
import com.twitter.android.profiles.i;
import com.twitter.android.widget.TweetStatView;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.widget.BaseUserView;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.collection.x;
import com.twitter.util.t;
import java.util.Arrays;
import java.util.Map;

/* compiled from: Twttr */
public class w implements ar {
    private final Map<String, bc> a;

    public w(Map<String, bc> map) {
        this.a = map;
    }

    public int a(int i) {
        return 2130969242;
    }

    public int b(int i) {
        return 0;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        y yVar = (y) atVar;
        View inflate = layoutInflater.inflate(2130969228, yVar.l, false);
        yVar.l.addHeaderView(inflate);
        yVar.a(inflate);
        yVar.l.addFooterView(layoutInflater.inflate(2130969227, yVar.l, false));
        yVar.a.setOnClickListener(akVar);
        yVar.b.setOnClickListener(akVar);
        yVar.l.setTag(yVar);
        yVar.l.setOnScrollListener(akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        Resources resources = context.getResources();
        x xVar = (x) asVar;
        y yVar = (y) atVar;
        bc bcVar = (bc) this.a.get(xVar.e);
        if (bcVar == null) {
            bcVar = new bc(xVar, context, akVar, str, str2);
            this.a.put(xVar.e, bcVar);
        } else {
            bcVar.a(xVar);
        }
        yVar.a(bcVar);
        yVar.E.setVisibility(0);
        ProfileDetailsViewManager profileDetailsViewManager = new ProfileDetailsViewManager(yVar.d, yVar.e, yVar.h, yVar.f, null, yVar.i);
        profileDetailsViewManager.a(Arrays.asList(new IconItemType[]{IconItemType.a, IconItemType.b}));
        profileDetailsViewManager.a(akVar);
        yVar.d.setText(xVar.a.c());
        yVar.d.setOnClickListener(akVar);
        yVar.e.setText(resources.getString(2131364279, new Object[]{xVar.a.k}));
        yVar.e.setOnClickListener(akVar);
        if (xVar.a.n) {
            yVar.g.setVisibility(0);
        } else {
            yVar.g.setVisibility(8);
        }
        if (xVar.c) {
            yVar.h.setText(xVar.a(context, akVar));
            yVar.h.setVisibility(0);
        } else {
            yVar.h.setVisibility(8);
        }
        yVar.a.setTag(xVar.a);
        yVar.a.a(UserImageRequest.a(xVar.a.e));
        if (xVar.b) {
            yVar.b.a(i.a(xVar.a.G));
        } else if (xVar.a.j != 0) {
            yVar.b.setDefaultDrawable(new ColorDrawable(xVar.a.j));
        }
        a(xVar.a.B, yVar.c);
        profileDetailsViewManager.a(xVar.a.q, (TwitterPlace) x.a(xVar.a.r));
        profileDetailsViewManager.a(xVar.a.h, xVar.a.E);
        profileDetailsViewManager.a(xVar.a.S);
        a(yVar.k, 2131363385, xVar.a.P, resources);
        a(yVar.j, 2131363386, xVar.a.v, resources);
        yVar.k.setOnClickListener(akVar);
        yVar.j.setOnClickListener(akVar);
        yVar.C.setTag(new aq(context, xVar.a, yVar.C, StoryScribeItem.a(xVar), str, str2, true));
    }

    private static void a(cni cni, TextView textView) {
        BaseUserView.a(cni, false, textView, 2130839025, 2130839026);
    }

    private static void a(TweetStatView tweetStatView, int i, int i2, Resources resources) {
        tweetStatView.setValue(t.a(resources, (long) i2));
        tweetStatView.setName(resources.getString(i).toUpperCase());
    }
}
