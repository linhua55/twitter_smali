package com.twitter.android.dm;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import com.twitter.util.collection.n;
import defpackage.bcu;
import defpackage.bcv;
import java.util.List;

/* compiled from: Twttr */
public class DMEmojiComposeView extends LinearLayout implements OnClickListener {
    private static final List<String> a;
    private q b;

    static {
        a = n.a("\ud83d\ude33", new String[]{"\ud83d\ude03", "\ud83d\ude02", "\ud83c\udf89", "\u2764"});
    }

    public DMEmojiComposeView(Context context) {
        this(context, null);
    }

    public DMEmojiComposeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        inflate(context, 2130968996, this);
        findViewById(2131952728).setOnClickListener(this);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131952727);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        float dimension = getResources().getDimension(bcv.font_size_large);
        int color = ContextCompat.getColor(context, bcu.clear);
        for (int i = 0; i < a.size(); i++) {
            View button = new Button(context);
            String str = (String) a.get(i);
            button.setText(str);
            button.setOnClickListener(new p(this, str));
            button.setLayoutParams(layoutParams);
            button.setTextSize(0, dimension);
            button.setBackgroundColor(color);
            linearLayout.addView(button, i);
        }
    }

    public void setListener(q qVar) {
        this.b = qVar;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952728) {
            this.b.d();
        }
    }
}
