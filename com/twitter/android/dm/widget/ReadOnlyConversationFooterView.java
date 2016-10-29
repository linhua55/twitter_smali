package com.twitter.android.dm.widget;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.text.SpannableStringBuilder;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.ui.view.p;

/* compiled from: Twttr */
public class ReadOnlyConversationFooterView extends RelativeLayout {
    public ReadOnlyConversationFooterView(Context context) {
        super(context);
        inflate(context, 2130968768, this);
        CharSequence spannableStringBuilder = new SpannableStringBuilder(context.getString(2131362499));
        spannableStringBuilder.append(" ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(context.getString(2131362857));
        int color = ContextCompat.getColor(context, 2131886264);
        spannableStringBuilder.setSpan(new e(this, color, color, true, context), length, spannableStringBuilder.length(), 33);
        TextView textView = (TextView) findViewById(2131952345);
        p.a(textView);
        textView.setText(spannableStringBuilder);
    }
}
