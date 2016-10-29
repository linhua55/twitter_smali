package com.twitter.android.av.monetization;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.client.av;
import com.twitter.model.av.MonetizationCategory;
import java.util.Set;

/* compiled from: Twttr */
public class q extends av<MonetizationCategory, MonetizationCategorySelectorListItemView> implements o {
    private final LayoutInflater a;
    private final Set<Integer> b;

    protected /* synthetic */ View b(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public q(LayoutInflater layoutInflater, Set<Integer> set) {
        this.a = layoutInflater;
        this.b = set;
    }

    protected MonetizationCategorySelectorListItemView a(ViewGroup viewGroup, int i) {
        return (MonetizationCategorySelectorListItemView) this.a.inflate(2130969063, viewGroup, false);
    }

    protected void a(MonetizationCategorySelectorListItemView monetizationCategorySelectorListItemView, MonetizationCategory monetizationCategory, int i) {
        monetizationCategorySelectorListItemView.a(monetizationCategory, this.b.contains(Integer.valueOf(monetizationCategory.a())));
        monetizationCategorySelectorListItemView.setListener(this);
    }

    public void a(MonetizationCategory monetizationCategory, boolean z) {
        int a = monetizationCategory.a();
        if (z) {
            this.b.add(Integer.valueOf(a));
        } else {
            this.b.remove(Integer.valueOf(a));
        }
    }
}
