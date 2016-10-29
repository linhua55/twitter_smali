package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.commerce.util.c;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.f;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: Twttr */
public class CardForm extends RelativeLayout {
    private CardEntryContainer a;
    private ViewGroup b;
    private HashSet<h> c;

    public CardForm(Context context) {
        super(context);
        a(context);
    }

    public CardForm(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public CardForm(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.c = new HashSet();
        View.inflate(context, 2130968677, this);
        this.a = (CardEntryContainer) findViewById(2131952089);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131952086);
        c.a(context, viewGroup, Integer.valueOf(2130839117), 2131362094, false);
        this.b = (ViewGroup) viewGroup.findViewById(2131952120);
        this.b.setOnClickListener(new g(this));
        getEntry().a((ImageView) findViewById(2131952087), (ImageView) findViewById(2131952088));
        getEntry().setTextHelper((TextView) viewGroup.findViewById(2131952119));
    }

    public void setPartialCreditCard(CreditCard creditCard) {
        getEntry().setPartialCard(creditCard);
        this.b.setVisibility(0);
    }

    private void a() {
        getEntry().a();
        this.b.setVisibility(8);
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((h) it.next()).c();
        }
    }

    public f getCreditCard() {
        return getEntry().getCreditCard();
    }

    public CardEntryContainer getEntry() {
        return this.a;
    }

    public void a(h hVar) {
        this.c.add(hVar);
    }

    public void b(h hVar) {
        this.c.remove(hVar);
    }
}
