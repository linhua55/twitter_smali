package com.twitter.android;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import boo;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.ui.widget.v;
import defpackage.bde;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class as extends ArrayAdapter<Visibility> implements v {
    private static final Map<Visibility, Integer> a;
    private final Visibility[] b;
    private at c;
    private final Context d;

    public /* synthetic */ int getPosition(Object obj) {
        return a((Visibility) obj);
    }

    static {
        a = new HashMap();
        a.put(Visibility.e, Integer.valueOf(2130839724));
        a.put(Visibility.d, Integer.valueOf(2130839725));
        a.put(Visibility.c, Integer.valueOf(2130839723));
        a.put(Visibility.b, Integer.valueOf(2130839722));
        a.put(Visibility.a, Integer.valueOf(2130839726));
    }

    public as(Context context, Visibility[] visibilityArr) {
        super(context, 2130968651, visibilityArr);
        this.d = context;
        this.b = visibilityArr;
    }

    public int a(Visibility visibility) {
        for (int i = 0; i < this.b.length; i++) {
            if (this.b[i] == visibility) {
                return i;
            }
        }
        return -1;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) super.getView(i, view, viewGroup);
        a(textView, i);
        return textView;
    }

    public void a(View view, int i) {
        TextView textView = (TextView) view;
        if (i >= 0) {
            a(textView, i);
            if (this.c != null) {
                this.c.a(this.b[i]);
                return;
            }
            return;
        }
        textView.setText(TtmlNode.ANONYMOUS_REGION_ID);
    }

    private void a(TextView textView, int i) {
        textView.setText(boo.a(this.b[i], this.d));
        Drawable drawable = ContextCompat.getDrawable(getContext(), ((Integer) a.get(this.b[i])).intValue());
        bde.a(drawable, ContextCompat.getColor(getContext(), 2131886332));
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable, null, null, null);
    }

    public void a(at atVar) {
        this.c = atVar;
    }
}
