package com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.twitter.android.dm.cards.dmfeedbackcard.c;
import com.twitter.android.dm.cards.dmfeedbackcard.l;
import com.twitter.android.util.NoUnderlineURLSpan;
import com.twitter.util.object.e;
import com.twitter.util.w;

/* compiled from: Twttr */
public abstract class BaseCustomerFeedbackView extends RelativeLayout implements OnLongClickListener {
    protected static final Typeface a;
    protected final c b;
    protected final b c;
    protected final String d;
    private final l e;
    private final String f;

    static {
        a = Typeface.create("sans-serif", 0);
    }

    protected BaseCustomerFeedbackView(Context context, c cVar, b bVar, String str) {
        super(context);
        this.b = cVar;
        this.c = bVar;
        this.e = l.a(this.b.b());
        this.d = cVar.q();
        this.f = str;
        setOnLongClickListener(this);
    }

    protected void a() {
        View findViewById = findViewById(2131951655);
        if (findViewById != null) {
            LayoutParams layoutParams = (LayoutParams) findViewById.getLayoutParams();
            if (w.a()) {
                layoutParams.addRule(9, -1);
            } else {
                layoutParams.addRule(11, -1);
            }
            findViewById.setLayoutParams(layoutParams);
            findViewById.setOnClickListener(new a(this));
        }
    }

    protected void b() {
        TextView textView = (TextView) findViewById(2131952308);
        if (textView != null) {
            Resources resources = getResources();
            String string = resources.getString(2131362682, new Object[]{this.b.m(), resources.getString(2131362683), resources.getString(2131362681)});
            CharSequence spannableString = new SpannableString(string);
            a(spannableString, string, r2, (String) e.a(this.b.n()));
            a(spannableString, string, r3, "https://support.twitter.com/articles/20174629");
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setText(spannableString, BufferType.SPANNABLE);
            textView.setOnLongClickListener(this);
        }
    }

    private static void a(SpannableString spannableString, String str, String str2, String str3) {
        int indexOf = str.indexOf(str2);
        while (indexOf >= 0) {
            spannableString.setSpan(new NoUnderlineURLSpan(str3), indexOf, str2.length() + indexOf, 0);
            indexOf = str.indexOf(str2, indexOf + 1);
        }
    }

    protected void a(String str) {
        this.e.a(this.d, this.f, str);
    }

    public boolean onLongClick(View view) {
        return true;
    }
}
