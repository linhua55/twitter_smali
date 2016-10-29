package com.twitter.android.dm.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.twitter.android.autocomplete.ListViewSuggestionEditText;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
public class DMRecipientSearch extends RelativeLayout {
    private static final Typeface a;
    private ListViewSuggestionEditText<String, Object> b;
    private Drawable c;

    static {
        a = Typeface.create("sans-serif-light", 0);
    }

    public DMRecipientSearch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DMRecipientSearch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(context, 2130968769, this);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (ListViewSuggestionEditText) findViewById(2131952262);
        this.b.setTypeface(a);
        this.c = (Drawable) CollectionUtils.b(this.b.getCompoundDrawables());
    }

    public void a(boolean z) {
        this.b.setCompoundDrawablesWithIntrinsicBounds(z ? null : this.c, null, null, null);
    }
}
