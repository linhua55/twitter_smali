package com.twitter.android.interestpicker;

import android.support.v7.recyclerview.BuildConfig;
import android.util.SparseBooleanArray;
import android.widget.ListView;
import cjh;
import cji;
import com.twitter.android.util.CategoryListItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.util.collection.av;
import com.twitter.util.collection.n;
import defpackage.cgu;
import defpackage.cyw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class f {
    private final ListView a;
    private int b;

    public f(ListView listView) {
        this.b = 1;
        this.a = listView;
    }

    public void a(int i) {
        this.b = i;
    }

    public ArrayList<Integer> a() {
        ArrayList<Integer> arrayList = new ArrayList();
        SparseBooleanArray checkedItemPositions = this.a.getCheckedItemPositions();
        if (checkedItemPositions != null) {
            for (int i = 0; i < checkedItemPositions.size(); i++) {
                if (checkedItemPositions.valueAt(i)) {
                    arrayList.add(Integer.valueOf(checkedItemPositions.keyAt(i)));
                }
            }
        }
        return arrayList;
    }

    public ArrayList<TwitterScribeItem> a(List<CategoryListItem> list) {
        ArrayList<TwitterScribeItem> arrayList = new ArrayList();
        List a = a();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(a((CategoryListItem) list.get(i), i, a.contains(Integer.valueOf(i + this.b))));
        }
        return arrayList;
    }

    public String[] a(List<CategoryListItem> list, int... iArr) {
        List<Integer> a = a();
        List arrayList = new ArrayList();
        for (Integer intValue : a) {
            CategoryListItem categoryListItem = (CategoryListItem) list.get(intValue.intValue() - this.b);
            for (int i : iArr) {
                if (categoryListItem.c() == i) {
                    arrayList.add(categoryListItem.b());
                    break;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static TwitterScribeItem a(CategoryListItem categoryListItem, int i, boolean z) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.g = i;
        twitterScribeItem.a = z ? 0 : 1;
        if (categoryListItem.c() == 2) {
            twitterScribeItem.b = categoryListItem.a();
            twitterScribeItem.v = "custom_interest";
        } else if (categoryListItem.c() == 1) {
            twitterScribeItem.b = categoryListItem.a();
            twitterScribeItem.v = "sul";
        } else if (categoryListItem.c() == 3) {
            twitterScribeItem.b = categoryListItem.b();
            twitterScribeItem.v = "ITS_parent=";
        }
        return twitterScribeItem;
    }

    public static TwitterScribeItem a(aw awVar, int i) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.g = i;
        twitterScribeItem.a = awVar.g ? 0 : 1;
        if (awVar.f == 2) {
            twitterScribeItem.b = awVar.a;
            twitterScribeItem.v = "custom_interest" + (awVar.c >= 0 ? ",ITS_parent=" + awVar.c : BuildConfig.VERSION_NAME);
        } else {
            twitterScribeItem.b = String.valueOf(awVar.b);
            twitterScribeItem.v = "ITS_parent=" + (awVar.c >= 0 ? Long.valueOf(awVar.c) : BuildConfig.VERSION_NAME);
        }
        return twitterScribeItem;
    }

    public static List<TwitterScribeItem> b(List<aw> list) {
        int size = list.size();
        n d = n.d();
        for (int i = 0; i < size; i++) {
            aw awVar = (aw) list.get(i);
            if (awVar != null) {
                d.c(a(awVar, i));
            }
        }
        return (List) d.q();
    }

    public static ArrayList<CategoryListItem> a(cji cji) {
        if (cji == null) {
            return null;
        }
        ArrayList<CategoryListItem> arrayList = new ArrayList(cji.b.size());
        for (cjh cjh : cji.b) {
            arrayList.add(new CategoryListItem(cjh.a, String.valueOf(cjh.b), 3));
        }
        return arrayList;
    }

    public static cgu<h> a(cgu<h> cgu_com_twitter_android_interestpicker_h, cgu<h> cgu_com_twitter_android_interestpicker_h2) {
        Iterator it = cgu_com_twitter_android_interestpicker_h2.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            h a = a((cgu) cgu_com_twitter_android_interestpicker_h, hVar.c);
            if (a != null) {
                a.a(hVar);
            }
        }
        return cgu_com_twitter_android_interestpicker_h;
    }

    public static h a(cgu<h> cgu_com_twitter_android_interestpicker_h, long j) {
        Iterator it = cgu_com_twitter_android_interestpicker_h.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            if (hVar.b != -1 && hVar.b == j) {
                return hVar;
            }
        }
        return null;
    }

    public static <T extends h> List<T> a(List<T> list, T t) {
        Object obj;
        av a = a((h) t);
        for (T a2 : list) {
            if (a.equals(a((h) a2))) {
                obj = 1;
                break;
            }
        }
        obj = null;
        return obj != null ? list : (List) n.d().c((Iterable) list).c((Object) t).q();
    }

    public static av<String, Long, Long> a(h hVar) {
        return new av(hVar.a.toLowerCase(), Long.valueOf(hVar.b), Long.valueOf(hVar.c));
    }

    public static cyw<h, av> b() {
        return new g();
    }
}
