package com.twitter.android.highlights;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.ProgressBar;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class q implements ar {
    public int a(int i) {
        return 2130968893;
    }

    public int b(int i) {
        return 0;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        int i;
        int i2 = 8;
        r rVar = (r) asVar;
        s sVar = (s) atVar;
        if (aj.b(rVar.c())) {
            sVar.a.setText(rVar.c());
            sVar.a.setVisibility(0);
        } else {
            sVar.a.setVisibility(8);
        }
        Button button = sVar.b;
        if (rVar.d()) {
            i = 0;
        } else {
            i = 8;
        }
        button.setVisibility(i);
        sVar.b.setOnClickListener(akVar);
        ProgressBar progressBar = sVar.c;
        if (!rVar.d()) {
            i2 = 0;
        }
        progressBar.setVisibility(i2);
        if (rVar.e() || rVar.d()) {
            sVar.a.setTextSize(0, context.getResources().getDimension(2131690034));
        }
    }
}
