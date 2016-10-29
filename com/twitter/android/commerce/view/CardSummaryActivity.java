package com.twitter.android.commerce.view;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.am;
import com.twitter.util.ab;
import defpackage.bca;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class CardSummaryActivity extends TwitterFragmentActivity {
    private b a;
    private bca b;
    private List<Type> c;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968678);
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public boolean a(w wVar) {
        if (!super.a(wVar)) {
            return false;
        }
        wVar.a(2132017156);
        this.b = wVar.j().a(2131953417);
        return true;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        setTitle(getResources().getString(2131362234));
        ListView listView = (ListView) findViewById(2131952090);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("commerce_valid_card_types")) {
                this.c = (List) extras.getSerializable("commerce_valid_card_types");
            }
            this.a = b.a(this, (am) ab.a(extras, "profile_bundle", am.a), this.c);
            listView.setAdapter(this.a);
            return;
        }
        listView.setVisibility(8);
    }

    public boolean a(ac acVar) {
        if (acVar.a() == this.b.a()) {
            Intent intent = new Intent(this, CreditCardNumberEntryActivity.class);
            Bundle bundle = new Bundle();
            bundle.putBoolean("commerce_launched_from_settings", false);
            if (this.c != null && this.c.size() > 0) {
                bundle.putSerializable("commerce_valid_card_types", new ArrayList(this.c));
            }
            intent.putExtras(bundle);
            startActivityForResult(intent, 1);
        }
        return super.a(acVar);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String string = extras.getString("commerce_profile_id_added");
                if (string != null) {
                    Intent intent2 = new Intent();
                    intent2.putExtra("commerce_profile_id_added", string);
                    setResult(-1, intent2);
                    CreditCard cVar = new c(this, (Type) extras.getSerializable("commerce_profile_cctype"), extras.getString("commerce_profile_last_four"));
                    if (CreditCard.a(cVar, this.c)) {
                        this.a.a(cVar);
                    }
                }
            }
        }
    }
}
