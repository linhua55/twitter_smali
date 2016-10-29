.class public Lcom/twitter/android/PhoneMTEntryFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/ui/widget/au;


# instance fields
.field private a:Lcom/twitter/android/util/al;

.field private b:Lcom/twitter/android/ln;

.field private c:Lcom/twitter/android/br;

.field private d:Lcom/twitter/ui/widget/TwitterSelection;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Landroid/content/Context;

.field private h:Lcom/twitter/library/client/Session;

.field private i:Z

.field private j:Z

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/twitter/android/lh;

    invoke-direct {v0, p0}, Lcom/twitter/android/lh;-><init>(Lcom/twitter/android/PhoneMTEntryFragment;)V

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/PhoneMTEntryFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/PhoneMTEntryFragment;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/PhoneMTEntryFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/PhoneMTEntryFragment;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->i:Z

    return p1
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->a:Lcom/twitter/android/util/al;

    invoke-interface {v2}, Lcom/twitter/android/util/al;->h()Ljava/lang/String;

    move-result-object v2

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->c:Lcom/twitter/android/br;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->d:Lcom/twitter/ui/widget/TwitterSelection;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterSelection;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/br;->a(I)Lcom/twitter/android/bq;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/android/bq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->a:Lcom/twitter/android/util/al;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->a:Lcom/twitter/android/util/al;

    .line 144
    invoke-interface {v2, v0}, Lcom/twitter/android/util/al;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 143
    invoke-interface {v1, v0}, Lcom/twitter/android/util/al;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->f()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->h:Lcom/twitter/library/client/Session;

    invoke-static {v1, v2, v0}, Lbnk;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)Lbnk;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/PhoneMTEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 164
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->b:Lcom/twitter/android/ln;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->c:Lcom/twitter/android/br;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->d:Lcom/twitter/ui/widget/TwitterSelection;

    invoke-virtual {v2}, Lcom/twitter/ui/widget/TwitterSelection;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/br;->a(I)Lcom/twitter/android/bq;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 211
    iget v1, v1, Lcom/twitter/android/bq;->b:I

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/twitter/android/ln;

    invoke-direct {v1, v0}, Lcom/twitter/android/ln;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->b:Lcom/twitter/android/ln;

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->b:Lcom/twitter/android/ln;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/twitter/android/ln;

    invoke-direct {v0}, Lcom/twitter/android/ln;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->b:Lcom/twitter/android/ln;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x0

    .line 71
    const v0, 0x7f04027a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->g:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->h:Lcom/twitter/library/client/Session;

    .line 76
    iput-boolean v4, p0, Lcom/twitter/android/PhoneMTEntryFragment;->i:Z

    .line 77
    iput-boolean v4, p0, Lcom/twitter/android/PhoneMTEntryFragment;->j:Z

    .line 79
    const v0, 0x7f0a0626

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 81
    invoke-static {v2}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->a:Lcom/twitter/android/util/al;

    .line 83
    new-instance v0, Lcom/twitter/android/br;

    invoke-static {}, Lcom/twitter/android/util/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/br;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->c:Lcom/twitter/android/br;

    .line 84
    const v0, 0x7f1305dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterSelection;

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->d:Lcom/twitter/ui/widget/TwitterSelection;

    .line 85
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->d:Lcom/twitter/ui/widget/TwitterSelection;

    iget-object v3, p0, Lcom/twitter/android/PhoneMTEntryFragment;->c:Lcom/twitter/android/br;

    .line 86
    invoke-static {v2}, Lcom/twitter/android/util/o;->a(Landroid/content/Context;)Lcom/twitter/android/bq;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/android/br;->a(Lcom/twitter/android/bq;)I

    move-result v2

    .line 85
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterSelection;->setSelectedPosition(I)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->d:Lcom/twitter/ui/widget/TwitterSelection;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->c:Lcom/twitter/android/br;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterSelection;->setSelectionAdapter(Lcom/twitter/ui/widget/v;)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->d:Lcom/twitter/ui/widget/TwitterSelection;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterSelection;->setOnSelectionChangeListener(Lcom/twitter/ui/widget/au;)V

    .line 90
    const v0, 0x7f1305df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 93
    invoke-direct {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->h()V

    .line 94
    const v0, 0x7f1305e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->f:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/twitter/android/li;

    invoke-direct {v2, p0}, Lcom/twitter/android/li;-><init>(Lcom/twitter/android/PhoneMTEntryFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "phone_loggedin_mt"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "enter_phone:::impression"

    aput-object v4, v2, v3

    .line 113
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 115
    new-instance v0, Lcom/twitter/android/lj;

    invoke-direct {v0, p0}, Lcom/twitter/android/lj;-><init>(Lcom/twitter/android/PhoneMTEntryFragment;)V

    invoke-virtual {v1, v0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-object v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTEntryFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 7
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 172
    if-ne p2, v4, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lbnk;

    invoke-virtual {v0}, Lbnk;->s()Lcnc;

    move-result-object v1

    move-object v0, p1

    .line 174
    check-cast v0, Lbnk;

    invoke-virtual {v0}, Lbnk;->e()[I

    move-result-object v2

    .line 175
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcnc;->a:Ljava/lang/String;

    .line 176
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/PhoneMTFlowActivity;

    iget-object v2, v1, Lcnc;->a:Ljava/lang/String;

    iget-boolean v1, v1, Lcnc;->b:Z

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/PhoneMTFlowActivity;->a(Ljava/lang/String;Z)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/16 v0, 0x11d

    invoke-static {v2, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "phone_loggedin_mt"

    aput-object v2, v1, v5

    const-string/jumbo v2, "enter_phone:register_begin::error"

    aput-object v2, v1, v4

    .line 184
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 185
    const v0, 0x7f0a0621

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->g:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 187
    :cond_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "phone_loggedin_mt"

    aput-object v2, v1, v5

    const-string/jumbo v2, "enter_phone:register_begin::failure"

    aput-object v2, v1, v4

    .line 188
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 189
    const v0, 0x7f0a0622

    goto :goto_1
.end method

.method public a(Lcom/twitter/ui/widget/TwitterSelection;I)V
    .locals 4

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->j:Z

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone_loggedin_mt"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "enter_phone::country_code:change"

    aput-object v3, v1, v2

    .line 224
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->h()V

    .line 227
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->f:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    return-void
.end method

.method b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-boolean v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->j:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "phone_loggedin_mt"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "enter_phone::phone_number:input"

    aput-object v3, v1, v2

    .line 200
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 201
    iput-boolean v4, p0, Lcom/twitter/android/PhoneMTEntryFragment;->i:Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PhoneMTEntryFragment;->f:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1305e0

    if-ne v0, v1, :cond_0

    .line 151
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTEntryFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone_loggedin_mt"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "enter_phone::continue:click"

    aput-object v3, v1, v2

    .line 152
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 153
    invoke-direct {p0}, Lcom/twitter/android/PhoneMTEntryFragment;->g()V

    .line 155
    :cond_0
    return-void
.end method
