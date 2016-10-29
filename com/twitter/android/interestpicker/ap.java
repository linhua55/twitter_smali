package com.twitter.android.interestpicker;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.util.LruCache;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import bbu;
import com.twitter.android.util.CategoryListItem;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.internal.android.widget.ag;
import com.twitter.library.api.search.TwitterTypeAhead;
import com.twitter.library.api.search.TwitterTypeAheadGroup;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import te;
import th;

/* compiled from: Twttr */
public class ap implements TextWatcher, OnEditorActionListener, ag, th {
    private final Context a;
    private final Session b;
    private final te c;
    private at d;
    private LruCache<String, List<CategoryListItem>> e;
    private ar f;
    private PopupEditText g;
    private String h;
    private String i;
    private boolean j;

    public ap(Context context, Session session, te teVar) {
        this.f = new as();
        this.a = context;
        this.b = session;
        this.c = teVar;
    }

    public void a(PopupEditText popupEditText) {
        this.g = popupEditText;
        if (this.e == null) {
            this.e = new LruCache(30);
        }
        if (this.d == null) {
            this.d = new at(this.a, 2130969432);
        }
        this.g.setAdapter(this.d);
        this.g.setText(this.h);
        this.g.setPopupEditTextListener(this);
        this.g.addTextChangedListener(this);
        this.g.setOnEditorActionListener(this);
        this.g.requestFocus();
    }

    public void a(int i) {
        CategoryListItem categoryListItem = (CategoryListItem) this.d.getItem(i);
        this.g.setText(TtmlNode.ANONYMOUS_REGION_ID);
        this.f.a(categoryListItem);
    }

    public void w() {
    }

    public void a(CharSequence charSequence) {
        String a = a();
        if (this.g.hasFocus() && a != null) {
            a(a);
        }
    }

    public void a(int i, int i2) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        a(editable.toString());
    }

    public void a(Bundle bundle) {
        if (this.e != null) {
            bundle.putSerializable("suggestion_cache", (Serializable) this.e.snapshot());
        }
        Object a = a();
        if (aj.b(a)) {
            bundle.putString("search_term", a);
        }
    }

    public void b(Bundle bundle) {
        if (bundle != null) {
            Serializable serializable = bundle.getSerializable("suggestion_cache");
            if (serializable != null) {
                Map map = (Map) ObjectUtils.a(serializable);
                this.e = new LruCache(30);
                for (Entry entry : map.entrySet()) {
                    this.e.put(entry.getKey(), entry.getValue());
                }
            }
            this.h = bundle.getString("search_term");
        }
    }

    protected String a() {
        if (this.g != null) {
            return this.g.getText().toString();
        }
        return null;
    }

    protected void a(String str) {
        List list = (List) this.e.get(str);
        if (list != null) {
            b(list);
        } else if (aj.b(str)) {
            this.c.a(str, 3, 10, this);
            if (!this.j) {
                bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.b.g()).b(new String[]{this.i, "interest_picker", "search", TtmlNode.ANONYMOUS_REGION_ID, "enter"})).f(str));
                this.j = true;
            }
        } else {
            b(n.g());
        }
    }

    public void b(String str) {
        this.i = str;
    }

    public static List<CategoryListItem> a(List<TwitterTypeAhead> list) {
        List<CategoryListItem> arrayList = new ArrayList();
        for (TwitterTypeAhead twitterTypeAhead : list) {
            if (twitterTypeAhead.f != null) {
                CategoryListItem categoryListItem = new CategoryListItem(twitterTypeAhead.f.a.startsWith("#") ? twitterTypeAhead.f.a.substring(1) : twitterTypeAhead.f.a, twitterTypeAhead.f.b, 2);
                if (!arrayList.contains(categoryListItem)) {
                    arrayList.add(categoryListItem);
                }
            }
        }
        return arrayList;
    }

    public void b(List<CategoryListItem> list) {
        at atVar = this.d;
        atVar.setNotifyOnChange(false);
        atVar.clear();
        atVar.addAll(list);
        if (!(atVar.isEmpty() || this.g.c())) {
            this.g.a();
        }
        atVar.notifyDataSetChanged();
    }

    public void a(ar arVar) {
        this.f = arVar;
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView != this.g) {
            return false;
        }
        if (i != 6 && (keyEvent == null || keyEvent.getKeyCode() != 66)) {
            return false;
        }
        Object trim = a().trim();
        this.g.setText(TtmlNode.ANONYMOUS_REGION_ID);
        if (!aj.b(trim)) {
            return false;
        }
        this.f.b(trim);
        return true;
    }

    public void b() {
        this.c.a();
    }

    public void a(TwitterTypeAheadGroup twitterTypeAheadGroup, String str) {
        if (!twitterTypeAheadGroup.a()) {
            List a = a(twitterTypeAheadGroup.b);
            this.e.put(str, a);
            if (str.equals(a())) {
                b(a);
            }
        }
    }
}
