package com.twitter.android.widget;

import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ExploreByTouchHelper;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import com.google.android.exoplayer.text.Cue;
import com.twitter.library.view.o;
import com.twitter.model.core.bg;
import com.twitter.model.core.cr;
import com.twitter.model.core.e;
import com.twitter.util.collection.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class fp extends ExploreByTouchHelper {
    final TextView a;
    final ViewGroup b;
    final TweetDetailView c;
    private final List<fs> d;
    private final Paint e;
    private final Comparator<fs> f;
    private bg g;

    public fp(View view, TweetDetailView tweetDetailView) {
        super(view);
        this.e = new Paint();
        this.a = tweetDetailView.l;
        this.b = tweetDetailView.z;
        this.c = tweetDetailView;
        this.d = new ArrayList();
        this.a.addOnLayoutChangeListener(new fq(this));
        this.f = new fr(this);
    }

    protected int getVirtualViewAt(float f, float f2) {
        Point a = a();
        float f3 = f - ((float) a.x);
        float f4 = f2 - ((float) a.y);
        int i = (f3 < 0.0f || f3 > ((float) this.a.getWidth()) || f4 < 0.0f || f4 > ((float) this.a.getHeight())) ? 0 : 1;
        if (i == 0) {
            return Cue.TYPE_UNSET;
        }
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            if (((fs) this.d.get(i2)).a((int) f3, (int) f4)) {
                return i2 + 1;
            }
        }
        return 0;
    }

    private Point a() {
        return new Point((this.a.getLeft() + this.b.getLeft()) + this.c.getLeft(), (this.a.getTop() + this.b.getTop()) + this.c.getTop());
    }

    protected void getVisibleVirtualViews(List<Integer> list) {
        int i = 0;
        if (this.a.getText() == null) {
            list.add(Integer.valueOf(Cue.TYPE_UNSET));
            return;
        }
        list.add(Integer.valueOf(0));
        while (i < this.d.size()) {
            list.add(Integer.valueOf(i + 1));
            i++;
        }
    }

    protected void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setContentDescription(TtmlNode.ANONYMOUS_REGION_ID);
    }

    protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        CharSequence charSequence = TtmlNode.ANONYMOUS_REGION_ID;
        Rect rect = new Rect();
        Point a = a();
        if (i == 0) {
            CharSequence text = this.a.getText();
            if (text == null) {
                text = charSequence;
            }
            Rect rect2 = new Rect(a.x, a.y, (a.x + this.a.getWidth()) + 1, (a.y + this.a.getHeight()) + 1);
            charSequence = text;
            rect = rect2;
        } else {
            int i2 = i - 1;
            if (i2 >= 0 && i2 < this.d.size()) {
                fs fsVar = (fs) this.d.get(i2);
                String str = fsVar.c;
                rect = new Rect(fsVar.b);
                charSequence = str;
            }
            rect.offset(a.x, a.y);
            accessibilityNodeInfoCompat.addAction(16);
        }
        accessibilityNodeInfoCompat.setContentDescription(charSequence);
        if (rect.isEmpty()) {
            accessibilityNodeInfoCompat.setBoundsInParent(new Rect(0, 0, 1, 1));
        } else {
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
        }
    }

    protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
        switch (i2) {
            case Atom.LONG_HEADER_SIZE /*16*/:
                o.a(this.c.h, ((fs) this.d.get(i - 1)).d);
                return true;
            default:
                return false;
        }
    }

    public void a(bg bgVar) {
        if (this.g != bgVar) {
            this.g = bgVar;
            this.d.clear();
            if (this.a.getText() != null) {
                this.e.setTypeface(this.a.getTypeface());
                this.e.setTextSize(this.a.getTextSize());
                String charSequence = this.a.getText().toString();
                a(charSequence, bgVar.e, false);
                a(charSequence, bgVar.f, false);
                a(charSequence, bgVar.b(), true);
                Collections.sort(this.d, this.f);
            }
        }
    }

    private <T extends e> void a(String str, Iterable<T> iterable, boolean z) {
        if (!CollectionUtils.a(iterable)) {
            int lineStart = this.a.getLayout().getLineStart(0);
            int lineStart2 = this.a.getLayout().getLineStart(1);
            Iterator it = this.g.b().iterator();
            cr crVar = it.hasNext() ? (cr) it.next() : null;
            int length = crVar != null ? crVar.g : str.length();
            int i = 0;
            int i2 = length;
            length = 0;
            int i3 = i2;
            for (T t : iterable) {
                int length2;
                int i4;
                if (!z) {
                    while (t.g > i3 && crVar != null) {
                        i3 = ((crVar.h - crVar.g) - (crVar.F - crVar.E)) + length;
                        crVar = it.hasNext() ? (cr) it.next() : null;
                        if (crVar != null) {
                            length = crVar.g;
                        } else {
                            length = str.length();
                        }
                        i2 = i3;
                        i3 = length;
                        length = i2;
                    }
                }
                int i5 = length;
                int i6 = i3;
                cr crVar2 = crVar;
                int i7 = t.g - i5;
                if (z) {
                    length2 = ((cr) t).D.length() + i7;
                } else {
                    length2 = t.h - i5;
                }
                if (i7 < 0 || length2 > str.length()) {
                    length = i5;
                    i3 = lineStart2;
                    i4 = lineStart;
                    lineStart2 = i;
                } else {
                    int i8 = lineStart2;
                    int i9 = lineStart;
                    int i10 = i;
                    while (i7 >= i8) {
                        i10++;
                        i9 = i8;
                        i8 = this.a.getLayout().getLineStart(i10 + 1);
                    }
                    float measureText = this.e.measureText(str, i9, i7);
                    i4 = i10 * this.a.getLineHeight();
                    this.d.add(new fs((int) measureText, i4, (int) (measureText + this.e.measureText(str, i7, length2)), this.a.getLineHeight() + i4, i7, str.substring(i7, length2), t));
                    if (z) {
                        cr crVar3 = (cr) t;
                        length = i5 + ((crVar3.h - crVar3.g) - (crVar3.F - crVar3.E));
                        i3 = i8;
                        i4 = i9;
                        lineStart2 = i10;
                    } else {
                        length = i5;
                        i3 = i8;
                        i4 = i9;
                        lineStart2 = i10;
                    }
                }
                lineStart = i4;
                i = lineStart2;
                lineStart2 = i3;
                crVar = crVar2;
                i3 = i6;
            }
        }
    }
}
