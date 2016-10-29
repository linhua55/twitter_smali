package com.twitter.library.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.LabeledIntent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.Pair;
import android.util.SparseArray;
import com.twitter.library.client.bg;
import com.twitter.model.core.as;
import com.twitter.util.ab;
import com.twitter.util.aj;
import defpackage.bdc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class ah {
    public static final Set<Integer> a;
    public static final Set<Integer> b;
    protected static final SparseArray<String> c;
    protected static final SparseArray<String> d;
    private ai e;
    private ai f;
    private final List<Pair<String, ai>> g;
    private boolean h;

    static {
        a = new HashSet();
        b = new HashSet();
        b.add(Integer.valueOf(1));
        b.add(Integer.valueOf(2));
        b.add(Integer.valueOf(5));
        a.add(Integer.valueOf(1));
        a.add(Integer.valueOf(3));
        a.add(Integer.valueOf(12));
        a.add(Integer.valueOf(4));
        a.add(Integer.valueOf(6));
        a.add(Integer.valueOf(7));
        a.add(Integer.valueOf(8));
        a.add(Integer.valueOf(9));
        a.add(Integer.valueOf(10));
        a.add(Integer.valueOf(11));
        c = new SparseArray();
        c.put(2, "com.android.email");
        c.put(3, "com.android.mms");
        c.put(12, "com.google.android.apps.babel");
        c.put(4, "com.google.android.apps.hangout");
        c.put(5, "com.google.android.gm");
        c.put(6, "com.facebook.composer");
        c.put(7, "com.tencent.mm");
        c.put(8, "jp.naver.line");
        c.put(9, "com.facebook.messenger");
        c.put(10, "com.whatsapp");
        c.put(11, "com.twitter.android.MessagesActivity");
        d = new SparseArray();
        d.put(1, "09");
        d.put(2, "02");
        d.put(3, "01");
        d.put(12, "15");
        d.put(4, "15");
        d.put(5, "03");
        d.put(6, "04");
        d.put(7, "05");
        d.put(8, "06");
        d.put(9, "07");
        d.put(10, "08");
        d.put(11, "16");
        d.put(13, "13");
    }

    public ah() {
        this.g = new ArrayList();
    }

    public static String a(String str, int i) {
        String str2 = (String) d.get(i, d.get(1));
        try {
            Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.appendQueryParameter("s", str2);
            str = buildUpon.build().toString();
        } catch (NullPointerException e) {
        }
        return str;
    }

    public void a(String str, String str2) {
        if (aj.a(str)) {
            this.f = new ai(str2);
        } else {
            this.e = new ai(str, str2);
        }
    }

    public void a(int i, String str, String str2) {
        if (i == 1) {
            a(str, str2);
            return;
        }
        String str3 = (String) c.get(i, TtmlNode.ANONYMOUS_REGION_ID);
        if (aj.b(str3)) {
            this.g.add(new Pair(str3, new ai(str, str2)));
        }
    }

    public void a(int i, String str) {
        a(i, TtmlNode.ANONYMOUS_REGION_ID, str);
    }

    public void a(Context context, as asVar, boolean z) {
        a(context, asVar, z, null);
    }

    public void a(Context context, as asVar, boolean z, IntentSender intentSender) {
        String str;
        if (asVar != null) {
            str = "share_via_dm";
        } else {
            str = "dm_conversation";
        }
        Intent dataAndType = new Intent("android.intent.action.VIEW").setPackage(context.getPackageName()).setDataAndType(new Builder().scheme("twitter").authority(str).build(), "text/plain");
        if (asVar == null) {
            dataAndType.putExtra("android.intent.extra.TEXT", this.f.a);
        }
        Intent data = new Intent("android.intent.action.VIEW").setData(Uri.parse("mailto:"));
        this.e.a(data);
        Intent type = new Intent("android.intent.action.SEND").setType("text/plain");
        this.f.a(type);
        if (asVar != null) {
            data.putExtra("tweet_id", asVar.e);
            type.putExtra("tweet_id", asVar.e);
            ab.a(dataAndType, "quoted_tweet", asVar, as.a);
        }
        List arrayList = new ArrayList();
        Set hashSet = new HashSet();
        aq.a(context, arrayList, data, hashSet);
        aq.a(context, arrayList, type, hashSet);
        if (!arrayList.isEmpty()) {
            data = (Intent) arrayList.get(arrayList.size() - 1);
            String action = data.getAction();
            String str2 = data.getPackage();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                type = (Intent) it.next();
                if (action.equals(type.getAction()) && str2.equals(type.getPackage())) {
                    it.remove();
                }
            }
            arrayList.add(data);
        }
        if (arrayList.isEmpty()) {
            data = dataAndType;
        } else {
            Object labeledIntent = new LabeledIntent(new Intent().setComponent(dataAndType.resolveActivity(context.getPackageManager())).setData(dataAndType.getData()).putExtras(dataAndType.getExtras()), context.getPackageName(), bdc.label_direct_message, 0);
        }
        if ((asVar == null || z) && bg.a().c().d()) {
            arrayList.add(0, labeledIntent);
        }
        a(arrayList);
        data = (Intent) arrayList.remove(arrayList.size() - 1);
        CharSequence string = context.getString(bdc.tweets_share_status);
        if (VERSION.SDK_INT < 22 || intentSender == null) {
            type = Intent.createChooser(data, string);
        } else {
            type = Intent.createChooser(data, string, intentSender);
        }
        if (this.h) {
            type.addFlags(268435456);
        }
        type.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
        try {
            context.startActivity(type);
        } catch (ActivityNotFoundException e) {
        }
    }

    protected void a(List<Intent> list) {
        list.removeAll(Collections.singleton(null));
        for (Intent intent : list) {
            if (!(intent.getComponent() == null || intent.getComponent().getClassName() == null)) {
                String className = intent.getComponent().getClassName();
                for (Pair pair : this.g) {
                    if (className.contains((CharSequence) pair.first)) {
                        ((ai) pair.second).a(intent);
                        break;
                    }
                }
            }
        }
    }

    public void a(boolean z) {
        this.h = z;
    }
}
