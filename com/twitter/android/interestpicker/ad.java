package com.twitter.android.interestpicker;

import com.twitter.model.json.stratostore.JsonInterestSelections.JsonInterest;
import com.twitter.model.json.stratostore.JsonInterestSelections.JsonInterestSelection;
import com.twitter.model.stratostore.SourceLocation;
import cyw;

/* compiled from: Twttr */
class ad implements cyw<aw, JsonInterestSelection> {
    final /* synthetic */ SourceLocation a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ x e;

    ad(x xVar, SourceLocation sourceLocation, String str, String str2, String str3) {
        this.e = xVar;
        this.a = sourceLocation;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public JsonInterestSelection a(aw awVar) {
        JsonInterestSelection a = JsonInterestSelection.a(this.a, this.b, this.c, this.d, awVar.j);
        if (awVar.f == 1) {
            a.a = new JsonInterest(awVar.b);
        } else {
            a.a = new JsonInterest(awVar.a);
        }
        return a;
    }
}
