package com.twitter.android.autocomplete;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import bct;
import com.twitter.android.autocomplete.adapters.h;
import com.twitter.android.mx;
import defpackage.cgu;
import defpackage.cun;
import java.io.Closeable;

/* compiled from: Twttr */
public class ListViewSuggestionEditText<T, S> extends SuggestionEditText<T, S> implements OnItemClickListener {
    protected ListView a;
    protected h<T, S> b;
    private boolean c;

    public ListViewSuggestionEditText(Context context) {
        this(context, null);
    }

    public ListViewSuggestionEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.suggestionEditTextStyle);
    }

    public ListViewSuggestionEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setListView(ListView listView) {
        if (this.a != listView) {
            if (this.a != null) {
                this.a.setOnItemClickListener(null);
            }
            c();
            this.a = listView;
            if (listView != null) {
                listView.setAdapter(this.b);
                listView.setOnItemClickListener(this);
            }
        }
    }

    public void setAdapter(h<T, S> hVar) {
        if (this.b != hVar) {
            if (this.b != null) {
                a(null, cgu.f());
            }
            this.b = hVar;
            if (this.a != null) {
                this.a.setAdapter(hVar);
            }
        }
    }

    protected boolean a(T t, cgu<S> cgu_S) {
        boolean z = false;
        if (this.a == null || this.b == null) {
            return false;
        }
        if (this.b.h() == cgu_S) {
            return true;
        }
        Closeable a = this.b.a(t, cgu_S);
        if (a != null) {
            cun.a(a);
        }
        if (cgu_S.aU_() > 0) {
            z = true;
        }
        this.c = z;
        return true;
    }

    public boolean a() {
        return this.c;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        clearComposingText();
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition != null) {
            a(adapterView.getItemIdAtPosition(i), itemAtPosition, i);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (a()) {
            int selectedItemPosition = this.a.getSelectedItemPosition();
            if (a() && selectedItemPosition >= 0) {
                return this.a.onKeyUp(i, keyEvent);
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (a()) {
            ListView listView = this.a;
            if (i != 62 && (listView.getSelectedItemPosition() >= 0 || !(i == 66 || i == 23))) {
                boolean onKeyDown = listView.onKeyDown(i, keyEvent);
                boolean a = a(onKeyDown, i);
                if (onKeyDown) {
                    listView.requestFocusFromTouch();
                    switch (i) {
                        case mx.TwitterButton_iconLayout /*19*/:
                        case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                        case mx.TweetView_mediaDivider /*23*/:
                        case mx.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                            return true;
                    }
                }
                if (a) {
                    return true;
                }
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    protected boolean a(boolean z, int i) {
        return false;
    }
}
