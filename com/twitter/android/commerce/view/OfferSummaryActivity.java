package com.twitter.android.commerce.view;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.TweetActivity;
import com.twitter.android.commerce.network.ProfileSaveCallback;
import com.twitter.android.commerce.network.ProfileSaveCallback.RequestType;
import com.twitter.android.commerce.network.b;
import com.twitter.android.commerce.network.h;
import com.twitter.android.commerce.network.i;
import com.twitter.android.commerce.network.j;
import com.twitter.android.commerce.util.ImageHelper;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.commerce.util.g;
import com.twitter.android.commerce.widget.creditcard.CardEntryContainer;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.OfferDetails;
import com.twitter.library.commerce.model.OfferDetails.OfferStatus;
import com.twitter.library.commerce.model.ServerError;
import com.twitter.library.commerce.model.ServerErrorType;
import com.twitter.library.commerce.model.am;
import com.twitter.library.commerce.model.f;
import com.twitter.library.provider.ck;
import com.twitter.library.service.x;
import com.twitter.library.util.InvalidDataException;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.m;
import defpackage.bsn;
import defpackage.bss;
import defpackage.bsz;
import defpackage.bto;
import defpackage.bts;
import defpackage.btv;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;
import java.util.UUID;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class OfferSummaryActivity extends TwitterFragmentActivity implements OnClickListener, b, i, j {
    private String A;
    private am B;
    private long C;
    private String D;
    private long E;
    private long K;
    private f L;
    private boolean M;
    private boolean N;
    private List<Type> O;
    private b P;
    private OfferStatus Q;
    private boolean R;
    private int S;
    private q T;
    private r U;
    private MediaImageView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TwitterButton f;
    private TwitterButton g;
    private ProgressBar h;
    private LinearLayout i;
    private LinearLayout j;
    private LinearLayout k;
    private View l;
    private LinearLayout m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private View r;
    private LinearLayout s;
    private ImageView t;
    private TextView u;
    private d v;
    private CardEntryContainer w;
    private HashMap<String, Object> x;
    private Tweet y;
    private String z;

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.a = (MediaImageView) findViewById(2131952983);
        this.b = (TextView) findViewById(2131952984);
        this.c = (TextView) findViewById(2131952986);
        this.d = (TextView) findViewById(2131952987);
        this.e = (TextView) findViewById(2131952988);
        this.f = (TwitterButton) findViewById(2131952992);
        this.g = (TwitterButton) findViewById(2131953001);
        this.s = (LinearLayout) findViewById(2131952996);
        this.h = (ProgressBar) findViewById(2131952985);
        this.i = (LinearLayout) findViewById(2131952993);
        this.j = (LinearLayout) findViewById(2131952995);
        this.m = (LinearLayout) findViewById(2131952990);
        this.n = (TextView) findViewById(2131952991);
        this.r = findViewById(2131953003);
        this.o = (TextView) findViewById(2131952994);
        this.p = (TextView) findViewById(2131953000);
        this.q = (TextView) findViewById(2131953002);
        this.v = new d(this);
        this.t = (ImageView) findViewById(2131952997);
        this.u = (TextView) findViewById(2131952998);
        this.k = (LinearLayout) findViewById(2131952144);
        this.l = findViewById(2131952999);
        this.w = (CardEntryContainer) findViewById(2131952147);
        this.w.a((ImageView) findViewById(2131952145), (ImageView) findViewById(2131952146));
        this.w.setPanOnly(true);
        this.w.setPanHintResource(2131362117);
        this.w.setDismissKeyboardOnComplete(true);
        this.s.setOnClickListener(this);
        this.l.setOnClickListener(this);
        setTitle(2131362230);
        g.a((Context) this, 2131362225, this.q);
        this.r.setVisibility(8);
        this.i.setVisibility(8);
        this.j.setVisibility(8);
        this.g.setEnabled(false);
        this.f.setEnabled(false);
        this.g.setOnClickListener(this);
        this.a.setOnClickListener(this);
        this.f.setOnClickListener(this);
        findViewById(2131953004).setOnClickListener(this);
        findViewById(2131952989).setOnClickListener(this);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.y = (Tweet) extras.getParcelable("commerce_buynow_tweet");
            if (this.y != null) {
                this.x = (HashMap) extras.getSerializable("commerce_product_values");
                if (e()) {
                    this.E = m.b();
                    this.j.setVisibility(0);
                    this.g.setVisibility(0);
                    this.s.setVisibility(8);
                    this.k.setVisibility(8);
                    a(true, false);
                    j();
                    if (!f()) {
                        a(true);
                        new Handler().postDelayed(new k(this), 1000);
                        return;
                    }
                    return;
                }
                Toast.makeText(this, getResources().getString(2131362251), 1).show();
                setResult(0);
                finish();
            }
        }
    }

    private boolean e() {
        long j = 0;
        try {
            this.z = c("card_url");
            if (aj.a(this.z)) {
                throw new InvalidDataException("Expected card_url in binding values list");
            }
            this.A = c("offer_id");
            if (aj.a(this.A)) {
                throw new InvalidDataException("Expected item_id in binding values list");
            }
            b(c("offer_image"));
            this.b.setText(c("offer_title"));
            this.c.setText(getString(2131362222, new Object[]{c("offer_merchant_name")}));
            this.d.setText(c("offer_description"));
            this.e.setText(c("offer_legal_text"));
            CharSequence c = c("start_date");
            CharSequence c2 = c("end_date");
            long parseLong = aj.b(c) ? Long.parseLong(c) : 0;
            if (aj.b(c2)) {
                j = Long.parseLong(c2);
            }
            a(parseLong, j);
            return true;
        } catch (InvalidDataException e) {
            return false;
        } catch (NumberFormatException e2) {
            return false;
        }
    }

    private void b(String str) {
        this.a.a(str != null ? a.a(str) : null);
    }

    private boolean f() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (defaultSharedPreferences != null) {
            return defaultSharedPreferences.getBoolean("OFFERS_NUX_HAS_RUN", false);
        }
        return true;
    }

    private void a(boolean z) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (defaultSharedPreferences != null) {
            Editor edit = defaultSharedPreferences.edit();
            edit.putBoolean("OFFERS_NUX_HAS_RUN", true);
            edit.apply();
        }
    }

    private void i() {
        az.a((Context) this).a(new bto(this, bg.a().c()), new h(this, true));
    }

    private void j() {
        az a = az.a((Context) this);
        x bsz = new bsz(this, bg.a().c(), this.A);
        this.T = new q(this);
        a.a(bsz, this.T);
    }

    private void a(com.twitter.library.commerce.model.m mVar) {
        az.a((Context) this).a(new bsn(this, bg.a().c(), mVar), new com.twitter.android.commerce.network.a(this));
    }

    private void l() {
        az.a((Context) this).a(new bss(this, bg.a().c(), true, false, null, null), new ProfileSaveCallback(this, RequestType.ADDRESS_AND_SIGNATURE));
    }

    private void m() {
        if (aj.a(this.D)) {
            this.D = UUID.randomUUID().toString();
        }
        az a = az.a((Context) this);
        x bts = new bts(this, bg.a().c(), this.z, this.A, this.K, this.D, this.y.t, this.E);
        this.U = new r(this);
        showDialog(2);
        c.a((Context) this, this.y, "cl_offer::product_detail:save_button:click", this.z, w());
        a.a(bts, this.U);
    }

    private void r() {
        a imageRequest = this.a.getImageRequest();
        if (imageRequest != null && imageRequest.v()) {
            c.a((Context) this, this.y, "cl_offer::product_detail:product_image:open", this.z, w());
            Uri parse = Uri.parse(imageRequest.a());
            startActivity(new Intent(this, CommerceImageActivity.class).setData(parse).putExtra("image_url", parse.toString()).putExtra("android.intent.extra.TEXT", this.b.getText()));
        }
    }

    private void s() {
        this.f.setVisibility(8);
        this.i.setVisibility(0);
    }

    private void t() {
        this.f.setVisibility(0);
        this.i.setVisibility(8);
    }

    private void u() {
        Intent intent = new Intent(this, OfferSinglePageNUXActivity.class);
        Bundle bundle = new Bundle();
        if (this.y != null) {
            bundle.putParcelable("commerce_buynow_tweet", this.y);
        }
        if (this.z != null) {
            bundle.putString("commerce_buynow_card_url", this.z);
        }
        intent.putExtras(bundle);
        startActivity(intent);
        overridePendingTransition(2131034174, 2131034175);
    }

    private void v() {
        boolean z;
        TypefacesTextView typefacesTextView = (TypefacesTextView) findViewById(2131952989);
        if (this.R) {
            this.e.setVisibility(8);
            typefacesTextView.setText(2131362221);
        } else {
            this.e.setVisibility(0);
            typefacesTextView.setText(2131362206);
            c.a((Context) this, this.y, "cl_offer::product_detail:detail_view:click", this.z, w());
        }
        if (this.R) {
            z = false;
        } else {
            z = true;
        }
        this.R = z;
    }

    private String w() {
        return String.format("{\"num_cards\": %d, \"step\": \"%s\"}", new Object[]{Integer.valueOf(this.S), x()});
    }

    private String x() {
        return this.f.getVisibility() == 8 ? "save_offer" : "add_offer_for_free";
    }

    private String c(String str) {
        return c.a(this.x, str);
    }

    private void a(CreditCard creditCard) {
        this.o.setText(2131362250);
        this.s.setVisibility(0);
        this.u.setText(BuildConfig.VERSION_NAME);
        CharSequence a = com.twitter.android.commerce.util.a.a(creditCard, (Context) this);
        int count = this.P != null ? this.P.getCount() : 0;
        if (count == 1) {
            this.u.setText(a);
        } else if (count == 2) {
            this.u.setText(getResources().getString(2131362092, new Object[]{a}));
        } else {
            this.u.setText(getResources().getString(2131362091, new Object[]{a, Integer.valueOf(count - 1)}));
        }
        this.t.setImageResource(ImageHelper.a(creditCard.a()).a());
    }

    private void y() {
        this.o.setText(2131362249);
        if (this.O != null) {
            this.w.setSupportedCardTypes(this.O);
        }
        this.k.setVisibility(0);
    }

    private CreditCard z() {
        if (this.P == null || this.P.isEmpty()) {
            return null;
        }
        return (CreditCard) this.P.getItem(0);
    }

    private static CharSequence b(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yy");
        Date date = new Date(j);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(date);
    }

    private void a(long j, long j2) {
        this.m.setVisibility(0);
        if (j > 0 && j2 > 0) {
            this.n.setText(getResources().getString(2131362233, new Object[]{b(j), b(j2)}));
        } else if (j2 > 0) {
            this.n.setText(getResources().getString(2131362231, new Object[]{b(j2)}));
        } else if (j > 0) {
            this.n.setText(getResources().getString(2131362232, new Object[]{b(j)}));
        } else {
            this.m.setVisibility(8);
        }
    }

    private void a(boolean z, boolean z2) {
        int i;
        if (z) {
            i = 2131362928;
        } else {
            i = 2131362223;
        }
        this.g.setText(i);
        this.g.setEnabled(z2);
        this.g.setVisibility(0);
    }

    protected Dialog onCreateDialog(int i) {
        Dialog progressDialog;
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
                progressDialog = new ProgressDialog(this);
                progressDialog.setProgressStyle(0);
                progressDialog.setMessage(getText(2131362115));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            case WireMessage.WIRE_AUTH /*3*/:
                progressDialog = new ProgressDialog(this);
                progressDialog.setIndeterminateDrawable(getResources().getDrawable(2130838911));
                progressDialog.setMessage(getText(2131362218));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            default:
                return super.onCreateDialog(i);
        }
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969153);
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public boolean a(w wVar) {
        if (!super.a(wVar)) {
            return false;
        }
        wVar.a(2132017157);
        return true;
    }

    public boolean a(ac acVar) {
        if (acVar.a() == 2131953418) {
            Intent intent = new Intent(this, ProfileSummaryActivity.class);
            Bundle bundle = new Bundle();
            if (this.y != null) {
                bundle.putParcelable("commerce_buynow_tweet", this.y);
            }
            if (this.z != null) {
                bundle.putString("commerce_buynow_card_url", this.z);
            }
            bundle.putSerializable("commerce_in_buy_mode", Boolean.valueOf(false));
            intent.putExtras(bundle);
            startActivityForResult(intent, 2);
        }
        return super.a(acVar);
    }

    public void a(boolean z, am amVar) {
        boolean z2;
        this.h.setVisibility(8);
        this.B = amVar;
        this.S = amVar.g().length;
        this.P = b.a(this, amVar, this.O);
        CreditCard z3 = z();
        if (z3 != null) {
            s();
            a(z3);
            z2 = false;
        } else if (z) {
            if (this.Q != OfferStatus.AVAILABLE) {
                s();
            } else {
                t();
                this.f.setEnabled(true);
            }
            y();
            z2 = false;
        } else {
            Toast.makeText(this, getResources().getString(2131362173), 1).show();
            z2 = true;
        }
        if (z2) {
            c.a((Context) this, this.y, "cl_offer::product_detail::load_aborted", this.z, w());
            a(false, false);
            return;
        }
        c.a((Context) this, this.y, "cl_offer::product_detail::load_finished", this.z, w());
        boolean z4 = this.Q != null && this.Q.equals(OfferStatus.AVAILABLE);
        if (z4) {
            a(false, true);
        }
        int count = this.P.getCount();
        String str = BuildConfig.VERSION_NAME;
        if (this.O == null || this.O.size() <= 0) {
            String str2 = str;
        } else {
            Object string = getResources().getString(2131362107, new Object[]{c.a((Context) this, this.O)});
        }
        int i = 2131362227;
        int i2 = 2131362223;
        if (count == 0) {
            g.a((Context) this, 2131362225, this.q);
        } else if (count == 1) {
            g.a((Context) this, 2131362226, this.q);
        } else {
            i = 2131362228;
            i2 = 2131362229;
            g.a((Context) this, 2131362224, this.q);
        }
        this.g.setText(i2);
        if (z4) {
            this.p.setText(getResources().getString(i, new Object[]{string}));
            this.p.setVisibility(0);
        }
    }

    public void b(Bundle bundle) {
        h(bundle);
    }

    public void c(Bundle bundle) {
        boolean z;
        if (bundle != null) {
            com.twitter.library.commerce.model.a aVar = (com.twitter.library.commerce.model.a) ab.a(bundle, "createaddr_bundle_address", com.twitter.library.commerce.model.a.a);
            String string = bundle.getString("createaddr_bundle_signature");
            String string2 = bundle.getString("createaddr_bundle_timestamp");
            if (string == null || string2 == null) {
                z = true;
            } else {
                this.N = true;
                az.a((Context) this).a(new btv((Context) this, bg.a().c(), aVar, null, this.L, string, string2, true, this.L instanceof com.twitter.library.commerce.model.ac), new ProfileSaveCallback(this, RequestType.PROFILE));
                z = false;
            }
        } else {
            z = true;
        }
        if (z) {
            a(false, false);
            Toast.makeText(this, getResources().getString(2131362179), 1).show();
        }
    }

    public void d(Bundle bundle) {
        m();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && !this.M) {
            c.a((Context) this, this.y, "cl_offer::product_detail::exit", this.z, w());
        }
    }

    public void e(Bundle bundle) {
        removeDialog(2);
        h(bundle);
    }

    public void f(Bundle bundle) {
        removeDialog(2);
        h(bundle);
    }

    public void a() {
        l();
    }

    public void a(Bundle bundle) {
        removeDialog(2);
        h(bundle);
    }

    private void a(Bundle bundle, boolean z) {
        boolean z2;
        if (!z || bundle == null) {
            z2 = true;
        } else {
            OfferDetails offerDetails = (OfferDetails) ab.a(bundle, "offer_details", OfferDetails.a);
            String a = offerDetails.a();
            boolean b = offerDetails.b();
            this.K = offerDetails.c();
            if (this.A.equalsIgnoreCase(a) && b) {
                this.Q = offerDetails.e();
                this.O = offerDetails.f();
                if (this.Q == OfferStatus.AVAILABLE) {
                    a(offerDetails.d(), offerDetails.c());
                } else {
                    a(this.Q);
                }
                i();
                z2 = false;
            } else {
                z2 = true;
            }
        }
        if (z2) {
            if (!z) {
                c.a((Context) this, this.y, "cl_offer::product_detail::load_aborted", this.z, w());
            }
            this.h.setVisibility(8);
            a(false, false);
            i(bundle);
        }
    }

    private void b(Bundle bundle, boolean z) {
        boolean z2;
        this.h.setVisibility(8);
        if (!z || bundle == null) {
            z2 = true;
        } else {
            c.a((Context) this, this.y, "cl_offer::product_detail::save_success", this.z, w());
            c.a((Context) this, this.y, PromotedEvent.CL_OFFER_ACCEPTED);
            if (bundle.getBoolean("saveoffer_success_boolean")) {
                long abs = 2000 - Math.abs(m.b() - c());
                if (abs > 0) {
                    c(abs);
                } else {
                    B();
                }
                z2 = false;
            } else {
                z2 = true;
            }
        }
        if (z2) {
            c.a((Context) this, this.y, "cl_offer::product_detail::save_failure", this.z, w());
            removeDialog(2);
            a(false, true);
            i(bundle);
        }
    }

    private void A() {
        showDialog(2);
        new e(this, new l(this)).a();
    }

    private void a(OfferStatus offerStatus) {
        this.h.setVisibility(8);
        this.r.setVisibility(0);
        s();
        a(false, false);
        String str = null;
        switch (p.a[offerStatus.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                str = getResources().getString(2131362207);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str = getResources().getString(2131362217);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                str = getResources().getString(2131362220);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                str = getResources().getString(2131362166);
                break;
        }
        if (str == null || isFinishing()) {
            List arrayList = new ArrayList();
            arrayList.add(new ServerError(BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, ServerErrorType.UNKNOWN));
            this.v.c(arrayList);
            return;
        }
        new Builder(this).setMessage(str.toString()).setCancelable(true).setPositiveButton(2131363218, new m(this)).create().show();
    }

    private void h(Bundle bundle) {
        this.h.setVisibility(8);
        a(false, true);
        i(bundle);
    }

    private void c(long j) {
        new Handler().postDelayed(new n(this), j);
    }

    private void B() {
        this.M = true;
        removeDialog(2);
        showDialog(3);
        new Handler().postDelayed(new o(this), 2000);
    }

    private void C() {
        removeDialog(3);
        Intent data = new Intent(this, TweetActivity.class).setData(ck.b(this.y.H, bg.a().c().g()));
        CharSequence string = getResources().getString(2131362219);
        ((NotificationManager) getSystemService("notification")).notify(null, -2147483647, new NotificationCompat.Builder(this).setSmallIcon(2130839920).setTicker(getResources().getString(2131362218)).setContentTitle(getResources().getString(2131362218)).setContentText(string).setStyle(new BigTextStyle().bigText(string)).setOngoing(false).setContentIntent(PendingIntent.getActivity(this, 0, data, 0)).setPriority(1).setAutoCancel(true).build());
        Toast.makeText(this, string, 1).show();
        setResult(-1);
        this.r.setVisibility(0);
    }

    private void i(Bundle bundle) {
        this.v.a((Context) this, bundle);
    }

    public void onClick(View view) {
        if (view.getId() == this.g.getId()) {
            int i;
            int i2;
            boolean z;
            if (this.s.getVisibility() == 0) {
                i = 1;
            } else {
                boolean z2 = false;
            }
            if (this.k.getVisibility() == 0) {
                i2 = 1;
            } else {
                z = false;
            }
            Object obj = null;
            if (i != 0) {
                m();
                i = 0;
                z = false;
            } else if (i2 != 0) {
                this.L = this.w.getCreditCard();
                if (aj.a(this.w.getCardNumber())) {
                    i = 2131362149;
                    z = true;
                } else if (CreditCard.a(this.L, this.O)) {
                    if (this.B.c() != null) {
                        showDialog(2);
                        l();
                        i = 0;
                        z = false;
                    } else {
                        A();
                        i = 0;
                        z = false;
                    }
                } else if (this.O == null || this.O.size() <= 0) {
                    i = 2131362153;
                    z = true;
                } else {
                    z = true;
                    String a = c.a((Context) this, this.O);
                    i = 2131362276;
                }
            } else {
                i = 0;
                z = true;
            }
            if (z) {
                CharSequence string;
                if (i == 0) {
                    i = 2131362179;
                }
                if (obj != null) {
                    string = getResources().getString(i, new Object[]{obj});
                } else {
                    string = getResources().getString(i);
                }
                Toast.makeText(this, string, 1).show();
                return;
            }
            this.g.setEnabled(false);
        } else if (view.getId() == this.a.getId()) {
            r();
        } else if (view.getId() == this.f.getId()) {
            s();
        } else if (view.getId() == 2131953004) {
            u();
        } else if (view.getId() == 2131952989) {
            c.a((Context) this, this.y, "cl_offer::product_detail:add_button:click", this.z, w());
            v();
        } else if (view.getId() == this.s.getId() || view.getId() == this.l.getId()) {
            Intent intent = new Intent(this, CardSummaryActivity.class);
            ab.a(intent, "profile_bundle", this.B, am.a);
            if (this.O != null && this.O.size() > 0) {
                intent.putExtra("commerce_valid_card_types", new ArrayList(this.O));
            }
            startActivityForResult(intent, 1);
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if ((i == 1 || i == 2) && intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String string = extras.getString("commerce_profile_id_added");
                boolean z = extras.getBoolean("commerce_profiles_deleted", false);
                if (string != null || z) {
                    this.j.setVisibility(0);
                    this.g.setVisibility(0);
                    this.s.setVisibility(8);
                    this.k.setVisibility(8);
                    this.h.setVisibility(0);
                    a(true, false);
                    i();
                }
            }
        }
    }

    public long c() {
        return this.C;
    }

    public void a(long j) {
        this.C = j;
    }
}
