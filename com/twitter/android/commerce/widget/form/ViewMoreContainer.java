package com.twitter.android.commerce.widget.form;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import bbu;
import com.twitter.android.SearchTerminalActivity;
import com.twitter.library.scribe.ScribeLog;

/* compiled from: Twttr */
public class ViewMoreContainer extends LinearLayout implements OnClickListener {
    private final TextView a;
    private final Activity b;
    private final String c;
    private final String d;
    private final int e;
    private ScribeLog f;

    public void onClick(View view) {
        if (this.f != null) {
            bbu.a(this.f);
        }
        this.b.startActivity(new Intent(this.b, SearchTerminalActivity.class).putExtra("query", this.c).putExtra("query_name", this.d).putExtra("search_type", this.e).putExtra("terminal", false));
    }

    public void setClickScribeLog(ScribeLog scribeLog) {
        this.f = scribeLog;
    }

    public void setDescription(CharSequence charSequence) {
        this.a.setText(charSequence);
    }
}
