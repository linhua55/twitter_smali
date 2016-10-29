.class public Lcom/twitter/android/PasswordEntryFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/ui/widget/ao;


# static fields
.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[[I


# instance fields
.field a:Lcom/twitter/ui/widget/TwitterEditText;

.field private g:Lcom/twitter/android/ValidationState$State;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Lcom/twitter/android/widget/ProgressDialogFragment;

.field private l:Lcom/twitter/android/kx;

.field private m:Lcom/twitter/android/kk;

.field private n:Lcom/twitter/android/qf;

.field private o:Lcom/twitter/android/ye;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/PasswordEntryFragment;->b:[I

    .line 45
    new-array v0, v3, [I

    const v1, 0x7f010441

    aput v1, v0, v2

    sput-object v0, Lcom/twitter/android/PasswordEntryFragment;->c:[I

    .line 46
    new-array v0, v3, [I

    const v1, 0x7f010427

    aput v1, v0, v2

    sput-object v0, Lcom/twitter/android/PasswordEntryFragment;->d:[I

    .line 47
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/PasswordEntryFragment;->e:[I

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/twitter/android/PasswordEntryFragment;->b:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/PasswordEntryFragment;->c:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/PasswordEntryFragment;->d:[I

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/twitter/android/PasswordEntryFragment;->e:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/PasswordEntryFragment;->f:[[I

    return-void

    .line 47
    :array_0
    .array-data 4
        0x7f010427
        0x7f010441
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    .line 69
    const/16 v0, 0x81

    iput v0, p0, Lcom/twitter/android/PasswordEntryFragment;->h:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/PasswordEntryFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)Lcom/twitter/android/ValidationState$State;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/PasswordEntryFragment;->a(Z)V

    .line 279
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 280
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->length()I

    move-result v0

    .line 281
    if-lt v0, p1, :cond_0

    .line 282
    sget-object v0, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    .line 286
    :goto_0
    return-object v0

    .line 283
    :cond_0
    if-ge v0, p1, :cond_1

    .line 284
    sget-object v0, Lcom/twitter/android/ValidationState$State;->a:Lcom/twitter/android/ValidationState$State;

    goto :goto_0

    .line 286
    :cond_1
    sget-object v0, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/FlowData;->c(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->n:Lcom/twitter/android/qf;

    if-eqz v0, :cond_1

    .line 231
    if-eqz p2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->n:Lcom/twitter/android/qf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/android/qf;->h(Ljava/lang/String;)V

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->n:Lcom/twitter/android/qf;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/twitter/android/qf;->g(Z)V

    .line 238
    :cond_1
    return-void

    .line 233
    :cond_2
    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->n:Lcom/twitter/android/qf;

    invoke-interface {v0, p1}, Lcom/twitter/android/qf;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget v0, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    sget-object v1, Lcom/twitter/android/PasswordEntryFragment;->f:[[I

    iget v2, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setExtraState([I)V

    .line 297
    return-void

    .line 294
    :cond_0
    iget v0, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/PasswordEntryFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/twitter/android/PasswordEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/PasswordEntryFragment;)Lcom/twitter/android/ye;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->k:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->k:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->k:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 336
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->k:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 325
    invoke-static {p1}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(I)Lcom/twitter/android/widget/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->k:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 326
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->k:Lcom/twitter/android/widget/ProgressDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ProgressDialogFragment;->setRetainInstance(Z)V

    .line 327
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->k:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/twitter/android/PasswordEntryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 329
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 94
    const v0, 0x7f04026c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 96
    const v0, 0x7f130345

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    const v1, 0x7f13073b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    const v3, 0x7f0a05f5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 99
    const v0, 0x7f0a05f4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    const v0, 0x7f1305ca

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    iget v1, p0, Lcom/twitter/android/PasswordEntryFragment;->h:I

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setInputType(I)V

    .line 104
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->setOnStatusIconClickListener(Lcom/twitter/ui/widget/ao;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->requestFocus()Z

    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/PasswordEntryFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/qd;->a(Lcom/twitter/app/common/base/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PasswordEntryFragment;->j:Z

    .line 111
    return-object v2
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->a()V

    .line 117
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    invoke-interface {v0}, Lcom/twitter/android/ye;->e()Lcom/twitter/android/ValidationState;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/twitter/android/ValidationState;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-direct {p0, v2}, Lcom/twitter/android/PasswordEntryFragment;->a(Z)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/android/ValidationState;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/twitter/android/PasswordEntryFragment;->a(I)Lcom/twitter/android/ValidationState$State;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->l:Lcom/twitter/android/kx;

    invoke-virtual {v0, v2}, Lcom/twitter/android/kx;->a(I)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0, v2}, Lcom/twitter/android/PasswordEntryFragment;->a(I)Lcom/twitter/android/ValidationState$State;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->l:Lcom/twitter/android/kx;

    invoke-virtual {v0, v2}, Lcom/twitter/android/kx;->a(I)V

    goto :goto_0
.end method

.method protected a(Lblo;)V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/PasswordEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 317
    return-void
.end method

.method protected a(Lbuw;)V
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/PasswordEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 321
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 9
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 156
    packed-switch p2, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lbuw;

    .line 159
    invoke-virtual {p1}, Lbuw;->e()Lcom/twitter/library/api/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/api/x;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 161
    :goto_1
    invoke-direct {p0, v0}, Lcom/twitter/android/PasswordEntryFragment;->a(Z)V

    .line 163
    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/twitter/android/ValidationState$State;->c:Lcom/twitter/android/ValidationState$State;

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->g:Lcom/twitter/android/ValidationState$State;

    .line 165
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 170
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    iget-object v1, p0, Lcom/twitter/android/PasswordEntryFragment;->g:Lcom/twitter/android/ValidationState$State;

    sget-object v2, Lcom/twitter/android/ValidationState$Level;->b:Lcom/twitter/android/ValidationState$Level;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 159
    goto :goto_1

    .line 167
    :cond_3
    sget-object v0, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->g:Lcom/twitter/android/ValidationState$State;

    .line 168
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    const v1, 0x7f0a0827

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    goto :goto_2

    .line 177
    :pswitch_1
    invoke-direct {p0}, Lcom/twitter/android/PasswordEntryFragment;->c()V

    .line 178
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    check-cast p1, Lblo;

    iget-object v0, p1, Lblo;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/PasswordEntryFragment;->a(Ljava/lang/String;Z)V

    .line 180
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/PasswordEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "phone100_change_password"

    aput-object v4, v3, v1

    const-string/jumbo v1, "change_password"

    aput-object v1, v3, v2

    iget-boolean v1, p0, Lcom/twitter/android/PasswordEntryFragment;->j:Z

    .line 182
    invoke-static {v1}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    aput-object v6, v3, v8

    const/4 v1, 0x4

    const-string/jumbo v2, "success"

    aput-object v2, v3, v1

    .line 181
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 185
    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/twitter/library/network/at;->a(Landroid/os/Bundle;)[I

    move-result-object v0

    .line 186
    if-eqz v0, :cond_5

    array-length v3, v0

    if-nez v3, :cond_6

    :cond_5
    move v0, v1

    .line 190
    :goto_3
    sparse-switch v0, :sswitch_data_0

    .line 209
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a_:Landroid/content/Context;

    const v3, 0x7f0a05f1

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->m:Lcom/twitter/android/kk;

    const v2, 0x7f0a083c

    invoke-interface {v0, v2}, Lcom/twitter/android/kk;->a(I)V

    .line 212
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_4
    if-eqz v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    goto/16 :goto_0

    .line 186
    :cond_6
    aget v0, v0, v1

    goto :goto_3

    .line 192
    :sswitch_0
    invoke-direct {p0, v6, v2}, Lcom/twitter/android/PasswordEntryFragment;->a(Ljava/lang/String;Z)V

    .line 193
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/PasswordEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "phone100_change_password"

    aput-object v4, v3, v1

    const-string/jumbo v4, "change_password"

    aput-object v4, v3, v2

    iget-boolean v2, p0, Lcom/twitter/android/PasswordEntryFragment;->j:Z

    .line 195
    invoke-static {v2}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    aput-object v6, v3, v8

    const/4 v2, 0x4

    const-string/jumbo v4, "wrong_current"

    aput-object v4, v3, v2

    .line 194
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_4

    .line 200
    :sswitch_1
    const v1, 0x7f0a0826

    .line 201
    goto :goto_4

    .line 204
    :sswitch_2
    const v1, 0x7f0a05f0

    .line 205
    goto :goto_4

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_1
        0x72 -> :sswitch_0
        0xee -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 300
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 303
    new-instance v0, Lblo;

    .line 304
    invoke-virtual {p0}, Lcom/twitter/android/PasswordEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/service/ab;

    .line 305
    invoke-virtual {p0}, Lcom/twitter/android/PasswordEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    iget-object v3, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    .line 306
    invoke-virtual {v3}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lblo;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lblo;->h(I)Lcom/twitter/library/service/x;

    .line 308
    const v1, 0x7f0a09ad

    invoke-direct {p0, v1}, Lcom/twitter/android/PasswordEntryFragment;->c(I)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/twitter/android/PasswordEntryFragment;->a(Lblo;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    const v1, 0x7f0a0826

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/ui/widget/TwitterEditText;)Z
    .locals 4

    .prologue
    const/16 v3, 0x91

    .line 340
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    if-ne v0, p1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getSelectionStart()I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getSelectionEnd()I

    move-result v1

    .line 345
    iget v2, p0, Lcom/twitter/android/PasswordEntryFragment;->h:I

    if-eq v2, v3, :cond_0

    .line 346
    iput v3, p0, Lcom/twitter/android/PasswordEntryFragment;->h:I

    .line 347
    iget v2, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    .line 352
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    iget v3, p0, Lcom/twitter/android/PasswordEntryFragment;->h:I

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TwitterEditText;->setInputType(I)V

    .line 353
    iget-object v2, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TwitterEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 354
    iget-object v2, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    invoke-interface {v2}, Lcom/twitter/android/ye;->e()Lcom/twitter/android/ValidationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/ValidationState;->a()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/twitter/android/PasswordEntryFragment;->a(Z)V

    .line 356
    iget-object v2, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setSelection(II)V

    .line 357
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_1
    return v0

    .line 349
    :cond_0
    const/16 v2, 0x81

    iput v2, p0, Lcom/twitter/android/PasswordEntryFragment;->h:I

    .line 350
    iget v2, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/twitter/android/PasswordEntryFragment;->i:I

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 260
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 261
    invoke-direct {p0, v2}, Lcom/twitter/android/PasswordEntryFragment;->a(I)Lcom/twitter/android/ValidationState$State;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->g:Lcom/twitter/android/ValidationState$State;

    .line 263
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->g:Lcom/twitter/android/ValidationState$State;

    sget-object v1, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->l:Lcom/twitter/android/kx;

    invoke-virtual {v0, v2}, Lcom/twitter/android/kx;->a(I)V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    iget-object v1, p0, Lcom/twitter/android/PasswordEntryFragment;->g:Lcom/twitter/android/ValidationState$State;

    sget-object v2, Lcom/twitter/android/ValidationState$Level;->a:Lcom/twitter/android/ValidationState$Level;

    .line 272
    invoke-interface {v0, v1, v2}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    .line 275
    :cond_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->l:Lcom/twitter/android/kx;

    invoke-virtual {v0, v2}, Lcom/twitter/android/kx;->removeMessages(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/PasswordEntryFragment;->a(Ljava/lang/String;Z)V

    .line 365
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->a:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->e()V

    .line 136
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/twitter/android/kk;

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->m:Lcom/twitter/android/kk;

    .line 142
    instance-of v0, p1, Lcom/twitter/android/ye;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 143
    check-cast v0, Lcom/twitter/android/ye;

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->o:Lcom/twitter/android/ye;

    .line 145
    :cond_0
    instance-of v0, p1, Lcom/twitter/android/qf;

    if-eqz v0, :cond_1

    .line 146
    check-cast p1, Lcom/twitter/android/qf;

    iput-object p1, p0, Lcom/twitter/android/PasswordEntryFragment;->n:Lcom/twitter/android/qf;

    .line 148
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lcom/twitter/android/kx;

    invoke-direct {v0, p0}, Lcom/twitter/android/kx;-><init>(Lcom/twitter/android/PasswordEntryFragment;)V

    iput-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->l:Lcom/twitter/android/kx;

    .line 90
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 243
    const v1, 0x7f1305ca

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->m:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->y_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/twitter/android/PasswordEntryFragment;->m:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->b()V

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
