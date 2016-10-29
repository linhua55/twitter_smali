package com.twitter.android.av.monetization;

import android.content.Intent;
import com.twitter.util.collection.ar;
import defpackage.apj;
import java.util.Set;

/* compiled from: Twttr */
class m implements apj<Set<Integer>> {
    private m() {
    }

    public /* synthetic */ Object b(Intent intent) {
        return a(intent);
    }

    public Set<Integer> a(Intent intent) {
        return ar.a(intent.getIntegerArrayListExtra("selected_categories"));
    }
}
