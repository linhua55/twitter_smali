package com.twitter.android.commerce.view;

import android.app.Dialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.commerce.network.h;
import com.twitter.android.commerce.network.i;
import com.twitter.android.commerce.util.ImageHelper;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.commerce.util.g;
import com.twitter.android.commerce.widget.form.DescriptionHeader;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.commerce.model.CardVariantList;
import com.twitter.library.commerce.model.CardVariantList.CardVariantListException;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.ProductVariant;
import com.twitter.library.commerce.model.ServerError;
import com.twitter.library.commerce.model.ServerErrorType;
import com.twitter.library.commerce.model.ShippingType;
import com.twitter.library.commerce.model.TaxType;
import com.twitter.library.commerce.model.af;
import com.twitter.library.commerce.model.am;
import com.twitter.library.commerce.model.e;
import com.twitter.library.commerce.model.j;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.library.util.InvalidDataException;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.m;
import defpackage.bbn;
import defpackage.bsd;
import defpackage.bsl;
import defpackage.btc;
import defpackage.bto;
import defpackage.bty;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ProductSummaryActivity extends TwitterFragmentActivity implements OnClickListener, OnItemSelectedListener, i {
    private CardVariantList A;
    private HashMap<String, Object> B;
    private Tweet C;
    private String D;
    private String E;
    private long K;
    private long L;
    private boolean M;
    private boolean N;
    private String O;
    private String P;
    private long Q;
    private String R;
    private long S;
    private Boolean T;
    private boolean U;
    private boolean V;
    private String W;
    private List<String> X;
    private boolean Y;
    private String Z;
    private MediaImageView a;
    private boolean aa;
    private boolean ab;
    private MatchProductOrCartCallback ac;
    private ae ad;
    private af ae;
    private TextView b;
    private TextView c;
    private TwitterButton d;
    private TwitterButton e;
    private TextView f;
    private Spinner[] g;
    private ErrorTextView[] h;
    private TextView i;
    private TextView j;
    private ProgressBar k;
    private LinearLayout l;
    private LinearLayout m;
    private LinearLayout n;
    private View o;
    private DescriptionHeader p;
    private LinearLayout q;
    private ImageView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private d v;
    private String w;
    private am x;
    private CreditCard y;
    private e z;

    /* compiled from: Twttr */
    public enum BillingSuccessMode {
        HANDLED,
        INDETERMINATE,
        ERROR
    }

    /* compiled from: Twttr */
    final class MatchProductOrCartCallback extends z {
        private final WeakReference<ProductSummaryActivity> a;
        private boolean b;
        private final RequestType c;

        /* compiled from: Twttr */
        public enum RequestType {
            MATCH_VARIANTS,
            CHECK_FEES,
            CART
        }

        MatchProductOrCartCallback(ProductSummaryActivity productSummaryActivity, RequestType requestType) {
            this.a = new WeakReference(productSummaryActivity);
            this.c = requestType;
        }

        public void a(x xVar) {
            if (!this.b) {
                Bundle bundle;
                aa aaVar = (aa) xVar.l().b();
                if (aaVar.b()) {
                    bundle = aaVar.c.getBundle("product_info_bundle");
                } else {
                    bundle = aaVar.c.getBundle("commerce_error_list_bundle");
                }
                ProductSummaryActivity productSummaryActivity = (ProductSummaryActivity) this.a.get();
                if (productSummaryActivity != null && !productSummaryActivity.isFinishing()) {
                    if (this.c == RequestType.MATCH_VARIANTS) {
                        productSummaryActivity.a(bundle, aaVar.b());
                    } else {
                        productSummaryActivity.b(bundle, aaVar.b());
                    }
                }
            }
        }
    }

    /* compiled from: Twttr */
    final class ProductSelectAdapter<T> extends ArrayAdapter<T> {
        private final Context a;
        private Map<Integer, SpinnerState> b;
        private Map<Integer, String> c;
        private final int d;

        /* compiled from: Twttr */
        public enum SpinnerState {
            NONE,
            UNAVAILABLE,
            OUT_OF_STOCK
        }

        ProductSelectAdapter(Context context, int i, int i2) {
            super(context, i, i2);
            this.d = context.getResources().getColor(2131886179);
            this.a = context;
        }

        public void a(int i, String str) {
            if (this.c == null) {
                this.c = new HashMap();
            }
            this.c.put(Integer.valueOf(i), str);
        }

        public void a(int i, SpinnerState spinnerState) {
            if (this.b == null) {
                this.b = new HashMap();
            }
            this.b.put(Integer.valueOf(i), spinnerState);
        }

        public void a() {
            if (this.b != null) {
                this.b.clear();
            }
            if (this.c != null) {
                this.c.clear();
            }
        }

        public boolean a(int i) {
            if (this.b == null || !this.b.containsKey(Integer.valueOf(i))) {
                return false;
            }
            return ((SpinnerState) this.b.get(Integer.valueOf(i))).equals(SpinnerState.UNAVAILABLE);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            TextView textView = (TextView) view2.findViewById(16908308);
            if (textView != null) {
                if (i == 0) {
                    textView.setTextColor(this.d);
                } else {
                    textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                }
            }
            return view2;
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            View dropDownView = super.getDropDownView(i, view, viewGroup);
            TextView textView = (TextView) dropDownView.findViewById(16908309);
            if (textView != null) {
                textView.setText(BuildConfig.VERSION_NAME);
                if (this.b != null && this.b.containsKey(Integer.valueOf(i))) {
                    switch (ad.b[((SpinnerState) this.b.get(Integer.valueOf(i))).ordinal()]) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            textView.setVisibility(0);
                            textView.setText(this.a.getString(2131362268));
                            break;
                        case WireMessage.WIRE_CONTROL /*2*/:
                            textView.setVisibility(0);
                            textView.setText(this.a.getString(2131362257));
                            break;
                        default:
                            textView.setVisibility(8);
                            break;
                    }
                }
                textView.setVisibility(8);
            }
            textView = (TextView) dropDownView.findViewById(2131952194);
            if (textView != null) {
                if (this.c == null || !this.c.containsKey(Integer.valueOf(i))) {
                    textView.setVisibility(8);
                } else {
                    textView.setVisibility(0);
                    textView.setText((CharSequence) this.c.get(Integer.valueOf(i)));
                }
            }
            return dropDownView;
        }
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.a = (MediaImageView) findViewById(2131952203);
        this.b = (TextView) findViewById(2131952204);
        this.c = (TextView) findViewById(2131952205);
        this.n = (LinearLayout) findViewById(2131952211);
        this.i = (TextView) findViewById(2131952206);
        this.j = (TextView) findViewById(2131952207);
        this.d = (TwitterButton) findViewById(2131952200);
        this.e = (TwitterButton) findViewById(2131952201);
        this.f = (TextView) findViewById(2131952202);
        this.q = (LinearLayout) findViewById(2131952196);
        this.l = (LinearLayout) findViewById(2131952210);
        this.k = (ProgressBar) findViewById(2131952208);
        this.o = findViewById(2131952209);
        this.m = (LinearLayout) findViewById(2131952195);
        this.v = new d(this);
        this.r = (ImageView) findViewById(2131952183);
        this.s = (TextView) findViewById(2131952184);
        this.t = (TextView) findViewById(2131952198);
        this.u = (TextView) findViewById(2131952105);
        this.q.setOnClickListener(this);
        this.z = null;
        this.d.setOnClickListener(this);
        this.d.setEnabled(false);
        this.m.setVisibility(8);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.a.setOnClickListener(this);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.C = (Tweet) extras.getParcelable("commerce_buynow_tweet");
            if (this.C != null) {
                this.B = (HashMap) extras.getSerializable("commerce_product_values");
                int f = f();
                if (f != 0) {
                    Toast.makeText(this, getResources().getString(f), 1).show();
                    a(0);
                    finish();
                    return;
                }
                View descriptionHeader = new DescriptionHeader(this);
                descriptionHeader.c.setShouldTrim(false);
                descriptionHeader.b.setText(getString(2131362267));
                g.a((Context) this, this.L, descriptionHeader.c);
                this.n.addView(descriptionHeader);
                this.S = m.b();
                if (this.A == null || this.A.a().size() <= 0) {
                    Toast.makeText(this, getResources().getString(2131362251), 1).show();
                    a(0);
                    finish();
                    return;
                }
                if (this.A.a().size() == 1) {
                    b((e) this.A.a().get(0));
                }
                this.l.setVisibility(8);
                a(RequestType.MATCH_VARIANTS, null);
                new Handler().postDelayed(new y(this), 500);
            }
        }
    }

    private void a(int i) {
        if (this.ae != null) {
            this.ae.a(i);
        }
        setResult(i);
    }

    private int f() {
        try {
            this.A = new CardVariantList(this.B);
            int b = this.A.b();
            this.g = new Spinner[b];
            this.h = new ErrorTextView[b];
            for (int i = 0; i < b; i++) {
                View inflate = getLayoutInflater().inflate(2130968699, null);
                a(inflate, i);
                this.l.addView(inflate, i);
            }
            this.V = a("item_shipping_included", true);
            this.Y = a("item_shipping_address_required", true);
            if (!i()) {
                return 2131362176;
            }
            if (b > 0) {
                a(new BigDecimal(((e) this.A.a().get(0)).c()));
            }
            this.D = c("card_url");
            if (aj.a(this.D)) {
                throw new InvalidDataException("Expected card_url in binding values list");
            }
            this.E = c("item_id");
            if (aj.a(this.E)) {
                throw new InvalidDataException("Expected item_id in binding values list");
            }
            CharSequence c = c("marketplace_id");
            if (aj.a(c)) {
                throw new InvalidDataException("Expected marketplace_id in binding values list");
            }
            this.K = Long.parseLong(c);
            c = c("merchant_id");
            if (aj.a(c)) {
                throw new InvalidDataException("Expected merchant_id in binding values list");
            }
            this.L = Long.parseLong(c);
            String c2 = c("item_image");
            b(c2);
            this.w = com.twitter.util.object.e.b(c2);
            this.b.setText(c("item_title"));
            this.c.setText(getString(2131362261, new Object[]{c("merchant_name")}));
            setTitle(c);
            this.p = a(getString(2131362247), c("item_description"), false);
            a(getString(2131362260), c("item_shipping_policy"), true);
            a(getString(2131362258), c("item_sale_terms"), true);
            return 0;
        } catch (CardVariantListException e) {
            return 2131362251;
        } catch (InvalidDataException e2) {
            return 2131362251;
        } catch (NumberFormatException e3) {
            return 2131362251;
        }
    }

    private boolean i() {
        this.X = new ArrayList();
        this.X.add("US");
        if (j.a()) {
            List b = j.b();
            String c = c("item_shipping_countries");
            if (aj.b((CharSequence) c)) {
                List a = c.a(c);
                if (j.a(a)) {
                    this.X = b;
                } else {
                    this.X = j.a(b, a);
                }
                if (this.X == null || this.X.size() == 0) {
                    return false;
                }
            }
        }
        return true;
    }

    private DescriptionHeader a(String str, String str2, boolean z) {
        View descriptionHeader = new DescriptionHeader(this);
        descriptionHeader.setVisibility(8);
        if (aj.b((CharSequence) str) && aj.b((CharSequence) str2)) {
            descriptionHeader.b.setText(str);
            descriptionHeader.c.setText(str2);
            if (!z) {
                descriptionHeader.a.setVisibility(8);
            }
            descriptionHeader.setVisibility(0);
        }
        this.n.addView(descriptionHeader);
        return descriptionHeader;
    }

    private void a(RequestType requestType, String str) {
        x b = b(requestType, str);
        if (b != null) {
            az a = az.a((Context) this);
            this.ac = new MatchProductOrCartCallback(this, requestType);
            a.a(b, this.ac);
        }
    }

    private x b(RequestType requestType, String str) {
        List arrayList = new ArrayList();
        Session c = bg.a().c();
        boolean b = c.b();
        if (c.f() && requestType == RequestType.CHECK_FEES) {
            arrayList.add(this.z.a());
            return new bsl(this, c, this.E, this.K, this.L, this.D, arrayList, com.twitter.util.object.e.b(str));
        }
        Iterator it = this.A.a().iterator();
        while (it.hasNext()) {
            arrayList.add(((e) it.next()).a());
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        return new btc(this, c, this.E, this.K, this.L, this.D, arrayList, requestType == RequestType.CHECK_FEES, b, com.twitter.util.object.e.b(str));
    }

    private void b(String str) {
        this.a.a(str != null ? a.a(str) : null);
    }

    private void j() {
        a imageRequest = this.a.getImageRequest();
        if (imageRequest != null && imageRequest.v()) {
            c.a(this, this.C, "buy_now::product_detail:product_image:open", this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_PRODUCT_IMAGE_OPEN);
            Uri parse = Uri.parse(imageRequest.d());
            startActivity(new Intent(this, CommerceImageActivity.class).setData(parse).putExtra("image_url", parse.toString()).putExtra("android.intent.extra.TEXT", this.b.getText()));
        }
    }

    private void a(View view, int i) throws CardVariantListException {
        Spinner spinner = (Spinner) view.findViewById(2131952180);
        ErrorTextView errorTextView = (ErrorTextView) view.findViewById(2131952178);
        ((TextView) view.findViewById(2131952179)).setText(b(i + 1));
        this.g[i] = spinner;
        this.h[i] = errorTextView;
        ProductSelectAdapter productSelectAdapter = new ProductSelectAdapter(this, 17367048, 16908308);
        productSelectAdapter.setDropDownViewResource(2130968703);
        spinner.setAdapter(productSelectAdapter);
        List<String> a = this.A.a(i, new String[this.A.b()]);
        productSelectAdapter.add(getResources().getString(2131362259, new Object[]{r3}));
        for (String add : a) {
            productSelectAdapter.add(add);
        }
        spinner.setOnItemSelectedListener(null);
        spinner.setSelection(0);
        productSelectAdapter.notifyDataSetChanged();
        spinner.setOnItemSelectedListener(this);
        this.M = false;
    }

    private String b(int i) {
        return c("item_attribute" + i);
    }

    private String c(String str) {
        return c.a(this.B, str);
    }

    private boolean a(String str, boolean z) {
        return c.a(this.B, str, z);
    }

    private int a(String[] strArr) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < strArr.length) {
            if (strArr[i] == null) {
                i3++;
                i2 = i;
            }
            i++;
        }
        return i3 == 1 ? i2 : -1;
    }

    private boolean l() {
        int i = 1;
        if (this.T == null) {
            if (this.A == null || this.A.a() == null || this.A.a().size() == 0) {
                this.T = Boolean.valueOf(false);
            } else {
                ArrayList a = this.A.a();
                e eVar = (e) a.get(0);
                this.T = Boolean.valueOf(true);
                e eVar2 = eVar;
                while (i < a.size()) {
                    eVar = (e) a.get(i);
                    if (!a(eVar) || !a(r2) || !eVar.e().c().equals(r2.e().c())) {
                        this.T = Boolean.valueOf(false);
                        break;
                    }
                    i++;
                    eVar2 = eVar;
                }
            }
        }
        return this.T.booleanValue();
    }

    private boolean a(e eVar) {
        return (eVar == null || eVar.e() == null || eVar.e().c() == null) ? false : true;
    }

    private String[] m() {
        String[] strArr = new String[this.g.length];
        for (int i = 0; i < strArr.length; i++) {
            if (this.g[i].getSelectedItemPosition() > 0) {
                strArr[i] = (String) this.g[i].getSelectedItem();
            }
        }
        return strArr;
    }

    private e b(String[] strArr) {
        int i;
        for (String str : strArr) {
            if (str == null) {
                i = 0;
                break;
            }
        }
        i = 1;
        if (i == 0) {
            return null;
        }
        List a = this.A.a(strArr);
        if (a == null || a.size() <= 0) {
            return null;
        }
        return (e) a.get(0);
    }

    private void b(e eVar) {
        this.z = eVar;
        if (this.z != null) {
            BigDecimal c;
            CharSequence b = this.z.b();
            String c2 = c("item_description");
            if (!aj.a(b)) {
                CharSequence charSequence = b;
            }
            d(c2);
            c2 = this.z.d();
            if (c2 != null) {
                b(c2);
            } else {
                this.a.a(a.a(this.w));
            }
            ProductVariant e = this.z.e();
            if (e != null) {
                c = e.c();
            } else {
                c = new BigDecimal(this.z.c());
            }
            if (this.U && this.z.e() != null && this.z.e().b() != 0) {
                a(c);
                this.d.setEnabled(true);
                return;
            } else if (this.U) {
                a(null);
                this.d.setEnabled(false);
                return;
            } else {
                a(new BigDecimal(this.z.c()));
                return;
            }
        }
        d(c("item_description"));
        this.a.a(a.a(this.w));
        a(this.A.a().size() > 0 ? new BigDecimal(((e) this.A.a().get(0)).c()) : null);
    }

    private void d(String str) {
        if (aj.a((CharSequence) str)) {
            this.p.setVisibility(8);
            return;
        }
        this.p.c.setText(str);
        this.p.setVisibility(0);
    }

    private BigDecimal r() {
        BigDecimal c;
        BigDecimal g;
        BigDecimal bigDecimal;
        ProductVariant e = this.z.e();
        BigDecimal e2;
        if (e != null) {
            c = e.c();
            g = e.g();
            e2 = e.e();
            bigDecimal = c;
            c = g;
            g = e2;
        } else {
            c = new BigDecimal(this.z.c());
            g = new BigDecimal(0);
            e2 = new BigDecimal(0);
            bigDecimal = c;
            c = g;
            g = e2;
        }
        if (c != null) {
            bigDecimal = bigDecimal.add(c);
        }
        if (g != null) {
            return bigDecimal.add(g);
        }
        return bigDecimal;
    }

    private void a(String[] strArr, ProductSelectAdapter<String> productSelectAdapter, int i) {
        List a = this.A.a(strArr);
        if (a != null && a.size() > 0) {
            ProductVariant e = ((e) a.get(0)).e();
            if (e != null) {
                if (!l()) {
                    productSelectAdapter.a(i, b("$", e.c()));
                }
                if (e.b() == 0) {
                    productSelectAdapter.a(i, SpinnerState.OUT_OF_STOCK);
                }
            }
        }
    }

    private void a(BigDecimal bigDecimal) {
        if (bigDecimal != null) {
            CharSequence string;
            if (this.V) {
                string = getResources().getString(2131362069);
            } else {
                string = getResources().getString(2131362070);
            }
            this.j.setText(string);
            this.j.setTextColor(getResources().getColor(2131886170));
            string = b("$", bigDecimal);
            this.i.setTextColor(getResources().getColor(2131886171));
            this.i.setText(string);
            return;
        }
        this.j.setText(getResources().getString(2131362071));
        this.j.setTextColor(getResources().getColor(2131886184));
        this.i.setTextColor(getResources().getColor(2131886180));
    }

    private static String b(String str, BigDecimal bigDecimal) {
        return c.a(bigDecimal);
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (!this.M) {
            AdapterView<?> adapterView2;
            try {
                this.M = true;
                b(false);
                String[] m = m();
                int a = a(m);
                e b = b(m);
                int i2 = 0;
                while (i2 < m.length) {
                    String[] strArr = (String[]) m.clone();
                    strArr[i2] = null;
                    Collection a2 = this.A.a(i2, strArr);
                    adapterView2 = this.g[i2];
                    HashSet hashSet = new HashSet(a2);
                    ProductSelectAdapter productSelectAdapter = (ProductSelectAdapter) adapterView2.getAdapter();
                    Object obj = i2 == a ? 1 : null;
                    productSelectAdapter.a();
                    for (int i3 = 1; i3 < productSelectAdapter.getCount(); i3++) {
                        if (!hashSet.contains(productSelectAdapter.getItem(i3))) {
                            productSelectAdapter.a(i3, SpinnerState.UNAVAILABLE);
                        } else if (b != null || obj != null) {
                            strArr[i2] = (String) productSelectAdapter.getItem(i3);
                            a(strArr, productSelectAdapter, i3);
                        }
                    }
                    if (adapterView2 != adapterView) {
                        adapterView2.setOnItemSelectedListener(null);
                        if (productSelectAdapter.a(adapterView2.getSelectedItemPosition())) {
                            adapterView2.setSelection(0);
                        }
                        adapterView2.setOnItemSelectedListener(this);
                    } else {
                        this.h[i2].setError(null);
                    }
                    i2++;
                }
                if (b != null) {
                    b(b);
                } else {
                    b(null);
                }
                this.M = false;
            } catch (CardVariantListException e) {
                this.M = false;
            } catch (Throwable th) {
                this.M = false;
            }
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null && extras.getString("commerce_profile_id_added") != null) {
                d(false);
            }
        }
    }

    private void a(StringBuilder stringBuilder, String str) {
        if (aj.b((CharSequence) str)) {
            stringBuilder.append(str);
            stringBuilder.append(" ");
        }
    }

    private void a(CreditCard creditCard) {
        View findViewById = findViewById(2131952199);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        findViewById = findViewById(2131952197);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        this.s.setText(com.twitter.android.commerce.util.a.a(creditCard, (Context) this));
        this.r.setImageResource(ImageHelper.a(creditCard.a()).a());
        this.O = null;
        this.P = creditCard.i();
        t();
    }

    private void a(CreditCard creditCard, com.twitter.library.commerce.model.a aVar) {
        this.s.setText(BuildConfig.VERSION_NAME);
        this.t.setText(BuildConfig.VERSION_NAME);
        this.u.setText(BuildConfig.VERSION_NAME);
        this.s.setText(com.twitter.android.commerce.util.a.a(creditCard, (Context) this));
        StringBuilder stringBuilder = new StringBuilder();
        a(stringBuilder, aVar.b());
        a(stringBuilder, aVar.c());
        a(stringBuilder, aVar.e());
        a(stringBuilder, aVar.f());
        a(stringBuilder, aVar.g());
        this.t.setText(getResources().getString(2131362278, new Object[]{stringBuilder.toString()}));
        this.u.setText(aVar.g());
        this.r.setImageResource(ImageHelper.a(creditCard.a()).a());
        this.O = aVar.h();
        this.P = creditCard.i();
        t();
    }

    private boolean s() {
        return this.e.getVisibility() == 0;
    }

    private void t() {
        new Handler().postDelayed(new z(this), 500);
    }

    private void b(boolean z) {
        if (s() == z) {
            return;
        }
        if (z) {
            this.d.setVisibility(8);
            this.e.setVisibility(0);
            this.q.setVisibility(0);
            if (this.z != null) {
                this.f.setText(c(this.z));
                return;
            } else {
                this.f.setText(BuildConfig.VERSION_NAME);
                return;
            }
        }
        this.d.setVisibility(0);
        this.e.setVisibility(8);
        this.q.setVisibility(8);
        this.f.setText(getResources().getText(2131362079));
    }

    private void c(boolean z) {
        int i;
        if (z) {
            i = 2131362928;
        } else {
            i = 2131362078;
        }
        this.d.setText(i);
        this.d.setEnabled(!z);
    }

    private String c(e eVar) {
        return a(getResources(), eVar);
    }

    public static String a(Resources resources, e eVar) {
        String str = BuildConfig.VERSION_NAME;
        if (eVar != null) {
            ShippingType f = eVar.e() != null ? eVar.e().f() : ShippingType.UNKNOWN;
            TaxType h = eVar.e() != null ? eVar.e().h() : TaxType.UNKNOWN;
            if (f == ShippingType.INCLUDED_IN_PRICE) {
                switch (ad.a[h.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        return resources.getString(2131362073, new Object[]{b("$", eVar.e().g())});
                    case WireMessage.WIRE_CONTROL /*2*/:
                        return resources.getString(2131362075, new Object[]{b("$", eVar.e().g())});
                    case WireMessage.WIRE_AUTH /*3*/:
                        return resources.getString(2131362077);
                    default:
                        return str;
                }
            } else if (f == ShippingType.CALCULATED) {
                switch (ad.a[h.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        return resources.getString(2131362072, new Object[]{b("$", eVar.e().e()), b("$", eVar.e().g())});
                    case WireMessage.WIRE_CONTROL /*2*/:
                        return resources.getString(2131362074, new Object[]{b("$", eVar.e().e()), b("$", eVar.e().g())});
                    case WireMessage.WIRE_AUTH /*3*/:
                        return resources.getString(2131362076, new Object[]{b("$", eVar.e().e())});
                }
            }
        }
        return str;
    }

    public void onPause() {
        if (s()) {
            b(false);
        }
        super.onPause();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && !this.N) {
            c.a(this, this.C, "buy_now::product_detail::exit", this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_PRODUCT_DETAIL_EXIT);
        }
    }

    protected Dialog onCreateDialog(int i) {
        Dialog progressDialog;
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
                progressDialog = new ProgressDialog(this);
                progressDialog.setProgressStyle(0);
                progressDialog.setMessage(getText(2131362116));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            case WireMessage.WIRE_AUTH /*3*/:
                progressDialog = new ProgressDialog(this);
                progressDialog.setIndeterminateDrawable(getResources().getDrawable(2130838911));
                progressDialog.setMessage(getText(2131362272));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            default:
                return super.onCreateDialog(i);
        }
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968704);
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
            c.a(this, this.C, "buy_now:::payment_settings_menu_item:click", this.D);
            boolean s = s();
            b(false);
            a(s, false);
        }
        return super.a(acVar);
    }

    private void a(boolean z, boolean z2) {
        b(false);
        Intent intent = new Intent(this, ProfileSummaryActivity.class);
        Bundle bundle = new Bundle();
        if (this.C != null) {
            bundle.putParcelable("commerce_buynow_tweet", this.C);
        }
        if (this.D != null) {
            bundle.putString("commerce_buynow_card_url", this.D);
        }
        if (this.x != null) {
            ab.a(bundle, "commerce_profile_entry", this.x, am.a);
        }
        if (this.X != null) {
            bundle.putSerializable("commerce_allowed_states_for_item", (Serializable) this.X);
        }
        bundle.putSerializable("commerce_in_buy_mode", Boolean.valueOf(z));
        bundle.putBoolean("commerce_phone_required", this.aa);
        bundle.putBoolean("commerce_billing_required", this.ab);
        intent.putExtras(bundle);
        if (z2) {
            startActivityForResult(intent, 1);
        } else {
            startActivity(intent);
        }
        c.a(this, this.C, "buy_now:payment_settings:::start", this.D);
    }

    public void a(boolean z, am amVar) {
        boolean z2;
        CreditCard a = c.a(amVar);
        com.twitter.library.commerce.model.a a2 = c.a(a, amVar);
        com.twitter.library.commerce.model.m c = c.c(amVar);
        this.y = null;
        if (amVar != null) {
            this.y = amVar.b();
        }
        boolean z3 = this.Y ? a2 != null : true;
        if (a == null || !r0) {
            z2 = false;
        } else if (!this.Y || j.a(a2.d(), this.X)) {
            String h;
            this.x = amVar;
            if (a2 != null) {
                h = a2.h();
            } else {
                h = null;
            }
            this.O = h;
            if (a(z) != BillingSuccessMode.ERROR) {
                z3 = true;
            } else {
                z3 = false;
            }
            z2 = z3;
        } else {
            int i;
            if (this.X == null || this.X.size() == 0) {
                i = 2131362176;
                c(false);
                z2 = true;
            } else {
                i = 2131362125;
                c.a(this, this.C, "buy_now::product_detail:buy_button:error_address_not_supported", this.D);
                z2 = false;
            }
            Toast.makeText(this, getResources().getString(i), 1).show();
        }
        if (!z2) {
            if (!z) {
                c(false);
                u();
            } else if (this.Y) {
                c(false);
                a(a2, c);
            } else if (c.b(amVar) != null) {
                this.x = amVar;
                this.O = null;
                if (a(true) == BillingSuccessMode.ERROR) {
                    u();
                }
            } else {
                c(false);
                a(c);
            }
        }
    }

    private void u() {
        Toast.makeText(this, getResources().getString(2131362173), 1).show();
    }

    public BillingSuccessMode a(boolean z) {
        BillingSuccessMode billingSuccessMode = BillingSuccessMode.INDETERMINATE;
        if (this.ab || this.aa) {
            Object a = c.a(this.x);
            if (a == null) {
                return BillingSuccessMode.ERROR;
            }
            af d = c.d(this.x);
            com.twitter.library.commerce.model.a l = a.l();
            if (!a(d, l)) {
                if (z) {
                    boolean z2;
                    Object a2 = c.a((CreditCard) a, this.x);
                    if (a2 == null || l == null) {
                        z2 = false;
                    } else {
                        z2 = a2.g().equals(l.g());
                    }
                    Intent intent = new Intent(this, ProfileEntryBillingActivity.class);
                    intent.putExtras(getIntent());
                    intent.putExtra("commerce_billing_same_as_shipping", z2);
                    ab.a(intent, "commerce_address_object", a2, com.twitter.library.commerce.model.a.a);
                    intent.putExtra("commerce_profile_id_added", a.i());
                    ab.a(intent, "commerce_cc_info", a, CreditCard.d);
                    startActivityForResult(intent, 1);
                    billingSuccessMode = BillingSuccessMode.HANDLED;
                    c(false);
                } else {
                    billingSuccessMode = BillingSuccessMode.ERROR;
                }
            }
        }
        if (billingSuccessMode != BillingSuccessMode.INDETERMINATE) {
            return billingSuccessMode;
        }
        a(RequestType.CHECK_FEES, this.O);
        return billingSuccessMode;
    }

    private boolean a(af afVar, com.twitter.library.commerce.model.a aVar) {
        return afVar != null && afVar.e().size() == 0 && aVar != null && aVar.a().size() == 0;
    }

    public void b(Bundle bundle) {
        c(false);
        this.d.setEnabled(true);
        a(bundle);
    }

    private void a(com.twitter.library.commerce.model.a aVar, com.twitter.library.commerce.model.m mVar) {
        c.a(this, this.C, this.D, aVar, mVar, null, v(), this.X, 1, false, this.aa, this.ab);
    }

    private void a(com.twitter.library.commerce.model.m mVar) {
        if (!(this.C == null || this.D == null)) {
            c.a(this, this.C, c.a(false, "store_profile:payment_method:start"), this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_STORE_PROFILE_START);
        }
        Intent intent = new Intent(this, CardEmailEntryActivity.class);
        Bundle bundle = new Bundle();
        ab.a(bundle, "commerce_profile_email", (Object) mVar, com.twitter.library.commerce.model.m.a);
        bundle.putParcelable("commerce_buynow_tweet", this.C);
        bundle.putBoolean("commerce_launched_from_settings", false);
        bundle.putBoolean("commerce_phone_required", this.aa);
        bundle.putBoolean("commerce_billing_required", this.ab);
        if (v() != null && c.e()) {
            ab.a(bundle, "commerce_partial_card_object", v(), CreditCard.d);
        }
        intent.putExtras(bundle);
        startActivityForResult(intent, 1);
    }

    private CreditCard v() {
        return this.y;
    }

    private void a(Bundle bundle, boolean z) {
        boolean z2;
        this.k.setVisibility(8);
        this.T = null;
        this.U = true;
        if (!z || bundle == null) {
            z2 = true;
        } else {
            this.aa = c.a((Context) this, bundle.getBoolean("phone_number_required"));
            this.ab = c.b(this, bundle.getBoolean("billing_address_required"));
            if (this.E.equalsIgnoreCase(bundle.getString("cart_bundle_id"))) {
                try {
                    c.a(this, this.C, "buy_now::product_detail::load_finished", this.D);
                    c.a((Context) this, this.C, PromotedEvent.BUYNOW_PRODUCT_DETAIL_LOAD_FINISHED);
                    List parcelableArrayList = bundle.getParcelableArrayList("getproductinfo_bundle_variants");
                    if (parcelableArrayList.size() == 0) {
                        throw new CardVariantListException("Expected non-empty variant list to be returned");
                    }
                    this.A.a(parcelableArrayList);
                    if (this.A.a().size() > 1) {
                        this.o.setVisibility(0);
                        this.l.setVisibility(0);
                        for (int i = 0; i < this.l.getChildCount(); i++) {
                            a(this.l.getChildAt(i), i);
                        }
                    } else if (this.A.a().size() == 1) {
                        b((e) this.A.a().get(0));
                    }
                    this.d.setEnabled(true);
                    z2 = false;
                } catch (Throwable e) {
                    bbn.a(e);
                    z2 = true;
                }
            } else {
                z2 = true;
            }
        }
        if (z2) {
            c.a(this, this.C, "buy_now::product_detail::load_aborted", this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_PRODUCT_DETAIL_LOAD_ABORTED);
            a(bundle);
        }
    }

    private void b(Bundle bundle, boolean z) {
        boolean z2 = false;
        this.k.setVisibility(8);
        this.T = null;
        if (!z || bundle == null) {
            z2 = true;
        } else {
            this.Z = bundle.getString("cart_bundle_id");
            try {
                List parcelableArrayList = bundle.getParcelableArrayList("getproductinfo_bundle_variants");
                if (parcelableArrayList.size() == 0) {
                    throw new CardVariantListException("Expected non-empty variant list to be returned");
                }
                this.z.a(null);
                this.A.a(parcelableArrayList);
                if (this.z.e() == null) {
                    z2 = true;
                } else if (this.x == null) {
                    z2 = true;
                } else {
                    CreditCard a = c.a(this.x);
                    if (this.Y) {
                        com.twitter.library.commerce.model.a a2 = c.a(a, this.x);
                        if (a2 != null) {
                            a(a, a2);
                        }
                    } else {
                        if (a == null) {
                            a = c.b(this.x);
                        }
                        a(a);
                    }
                }
            } catch (Throwable e) {
                bbn.a(e);
                z2 = true;
            }
        }
        if (z2) {
            a(bundle);
            this.e.setEnabled(true);
        }
        new Handler().postDelayed(new aa(this), 500);
    }

    private void c(Bundle bundle, boolean z) {
        boolean z2 = false;
        this.k.setVisibility(8);
        if (!z || bundle == null) {
            z2 = true;
        } else {
            boolean z3 = bundle.getBoolean("output_success");
            CharSequence string = bundle.getString("auth_cart_id");
            if (z3 && aj.b(string)) {
                this.W = string;
                long abs = 2000 - Math.abs(m.b() - e());
                if (abs > 0) {
                    b(abs);
                } else {
                    w();
                }
            } else {
                z2 = true;
            }
        }
        if (z2) {
            c.a(this, this.C, "buy_now::product_detail::purchase_failure", this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_PURCHASE_FAILURE);
            removeDialog(2);
            this.e.setEnabled(true);
            a(bundle);
        }
    }

    private void b(long j) {
        new Handler().postDelayed(new ab(this), j);
    }

    private void w() {
        removeDialog(2);
        showDialog(3);
        c.a(this, this.C, "buy_now::product_detail::purchase_success", this.D);
        c.a((Context) this, this.C, PromotedEvent.BUYNOW_PURCHASE_SUCCESS);
        this.N = true;
        new Handler().postDelayed(new ac(this), 2000);
    }

    private void x() {
        removeDialog(3);
        Intent intent = new Intent(this, OrderHistoryDetailsActivity.class);
        intent.setAction(this.W);
        intent.putExtra("commerce_order_history_item_id", this.W);
        com.twitter.android.commerce.network.e.a(intent.getExtras(), bg.a().c().e());
        CharSequence string = getResources().getString(2131362273, new Object[]{c("item_title")});
        int b = (int) m.b();
        ((NotificationManager) getSystemService("notification")).notify(null, b, new Builder(this).setSmallIcon(2130839920).setTicker(getResources().getString(2131362272)).setContentTitle(getResources().getString(2131362272)).setContentText(string).setOngoing(false).setContentIntent(PendingIntent.getActivity(this, b, intent, 1073741824)).setPriority(1).setAutoCancel(true).build());
        Toast.makeText(this, string, 1).show();
        a(-1);
        finish();
    }

    private void a(Bundle bundle) {
        int i = 0;
        if (bundle != null) {
            Object parcelableArrayList = bundle.getParcelableArrayList("commerce_bundle_errors");
            if (parcelableArrayList != null) {
                this.v.c(parcelableArrayList);
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    if (((ServerError) it.next()).b() == ServerErrorType.NO_INVENTORY) {
                        a(null);
                        i = 1;
                        break;
                    }
                }
                i = 1;
            }
        }
        if (i == 0) {
            Toast.makeText(this, getResources().getString(2131362251), 1).show();
        }
    }

    public void onClick(View view) {
        if (view.getId() == this.d.getId()) {
            if (y()) {
                Toast.makeText(this, getResources().getString(2131362130), 1).show();
                return;
            }
            c.a(this, this.C, "buy_now::product_detail:buy_button:click", this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_BUY_BUTTON_CLICK);
            d(true);
        } else if (view.getId() == this.e.getId()) {
            this.e.setEnabled(false);
            c.a(this, this.C, "buy_now::product_detail:buy_button:confirm", this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_BUY_BUTTON_CONFIRM);
            if (aj.a(this.R)) {
                this.R = UUID.randomUUID().toString();
            }
            az a = az.a((Context) this);
            x c = c();
            this.ad = new ae(this);
            showDialog(2);
            a.a(c, this.ad);
        } else if (view.getId() == this.q.getId()) {
            c.a(this, this.C, "buy_now::product_detail:change_payment_profile_button:click", this.D);
            c.a((Context) this, this.C, PromotedEvent.BUYNOW_CHANGE_PAYMENT_PROFILE_BUTTON_CLICK);
            b(false);
            a(true, true);
        } else if (view.getId() == this.a.getId()) {
            j();
        }
    }

    x c() {
        BigDecimal c;
        Session c2 = bg.a().c();
        if (this.z.e() != null) {
            c = this.z.e().c();
        } else {
            c = new BigDecimal(this.z.c());
        }
        if (c.f()) {
            return new bty(this, c2, this.Z, this.D, this.E, this.z.a(), this.O, this.P, this.L, this.K, c, this.z.e().g(), this.z.e().e(), this.z.e().d(), this.R, this.C.t, this.S);
        }
        return new bsd(this, c2, this.D, this.E, this.z.a(), this.O, this.P, this.L, this.K, c, this.z.e().g(), this.z.e().e(), this.z.e().d(), this.R, this.C.t, this.S);
    }

    public void onBackPressed() {
        if (s()) {
            b(false);
        } else {
            super.onBackPressed();
        }
    }

    private boolean y() {
        if (this.A.a().size() <= 1) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.g.length; i++) {
            if (this.g[i].getSelectedItemPosition() == 0) {
                String b = b(i + 1);
                this.h[i].setError(getResources().getString(2131362177, new Object[]{b}));
                z = true;
            }
        }
        return z;
    }

    private void d(boolean z) {
        this.d.setEnabled(false);
        az a = az.a((Context) this);
        x bto = new bto(this, bg.a().c());
        c(true);
        a.a(bto, new h(this, z));
    }

    public long e() {
        return this.Q;
    }

    public void a(long j) {
        this.Q = j;
    }
}
