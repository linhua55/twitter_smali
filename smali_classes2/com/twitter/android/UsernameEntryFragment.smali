.class public Lcom/twitter/android/UsernameEntryFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/util/bi;


# static fields
.field private static final c:[I

.field private static final d:[I


# instance fields
.field a:Lcom/twitter/android/ya;

.field b:Lcom/twitter/ui/widget/TwitterEditText;

.field private e:Lcom/twitter/android/widget/ProgressDialogFragment;

.field private f:Lcom/twitter/android/kk;

.field private g:Lcom/twitter/android/qf;

.field private h:Lcom/twitter/android/ye;

.field private i:Lcom/twitter/ui/widget/TypefacesTextView;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/UsernameEntryFragment;->c:[I

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010441

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/UsernameEntryFragment;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->n:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Landroid/text/Editable;)I
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/twitter/android/UsernameEntryFragment;->b(Landroid/text/Editable;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/UsernameEntryFragment;)Lcom/twitter/android/kk;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->f:Lcom/twitter/android/kk;

    return-object v0
.end method

.method private a(Lcom/twitter/model/core/cj;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-static {p1}, Lcom/twitter/library/util/ad;->a(Lcom/twitter/model/core/cj;)Lcom/twitter/model/core/cg;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/twitter/model/core/cg;->c:Ljava/lang/String;

    const-string/jumbo v2, "The user failed validation: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v0, v0, Lcom/twitter/model/core/cg;->c:Ljava/lang/String;

    const-string/jumbo v1, "The user failed validation: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/text/Editable;)I
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcjh;->d:Ljava/util/regex/Pattern;

    .line 208
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 209
    if-eqz v0, :cond_0

    const v0, 0x7f0a082b

    .line 212
    :goto_0
    return v0

    .line 209
    :cond_0
    const v0, 0x7f0a082a

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/UsernameEntryFragment;)Lcom/twitter/android/ye;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->h:Lcom/twitter/android/ye;

    return-object v0
.end method

.method private g()Lcom/twitter/android/ValidationState$State;
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsernameEntryFragment;->a(Z)V

    .line 197
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 198
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->length()I

    move-result v0

    .line 199
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 200
    sget-object v0, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    .line 202
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/android/ValidationState$State;->a:Lcom/twitter/android/ValidationState$State;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 87
    const v0, 0x7f0403f0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 89
    const v0, 0x7f130345

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    const v1, 0x7f13073b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    const v3, 0x7f0a093f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 92
    const v0, 0x7f0a093e

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const v0, 0x7f13008b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    .line 96
    const v0, 0x7f130783

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 98
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->requestFocus()Z

    .line 101
    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "extra_flow_data"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string/jumbo v1, "extra_flow_data"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/f;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/FlowData;

    .line 104
    invoke-virtual {v0}, Lcom/twitter/android/FlowData;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->k:Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Lcom/twitter/android/FlowData;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->l:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Lcom/twitter/android/FlowData;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->m:Ljava/lang/String;

    .line 107
    invoke-virtual {v0}, Lcom/twitter/android/FlowData;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/UsernameEntryFragment;->j:Z

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->b()V

    .line 112
    return-object v2
.end method

.method public a()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->a()V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->h:Lcom/twitter/android/ye;

    invoke-interface {v0}, Lcom/twitter/android/ye;->e()Lcom/twitter/android/ValidationState;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/twitter/android/ValidationState;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/UsernameEntryFragment;->g()Lcom/twitter/android/ValidationState$State;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->a:Lcom/twitter/android/ya;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/ya;->a(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/android/ValidationState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsernameEntryFragment;->a(Z)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->e:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 344
    invoke-static {p1}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(I)Lcom/twitter/android/widget/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->e:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 345
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->e:Lcom/twitter/android/widget/ProgressDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ProgressDialogFragment;->setRetainInstance(Z)V

    .line 346
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->e:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method protected a(Lblv;)V
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/UsernameEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 336
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/UsernameEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 340
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 235
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 236
    packed-switch p2, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {p0, v5}, Lcom/twitter/android/UsernameEntryFragment;->a(Z)V

    .line 241
    sget-object v0, Lcom/twitter/android/ValidationState$State;->c:Lcom/twitter/android/ValidationState$State;

    .line 242
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 248
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->h:Lcom/twitter/android/ye;

    sget-object v2, Lcom/twitter/android/ValidationState$Level;->b:Lcom/twitter/android/ValidationState$Level;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, v4}, Lcom/twitter/android/UsernameEntryFragment;->a(Z)V

    .line 245
    sget-object v1, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    .line 246
    iget-object v2, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setError(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_1

    .line 252
    :pswitch_1
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->g:Lcom/twitter/android/qf;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->g:Lcom/twitter/android/qf;

    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/qf;->g(Ljava/lang/String;)V

    .line 256
    :cond_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "phone100_enter_username"

    aput-object v2, v1, v4

    const-string/jumbo v2, "update_username"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/twitter/android/UsernameEntryFragment;->j:Z

    .line 258
    invoke-static {v3}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "success"

    aput-object v3, v1, v2

    .line 257
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 260
    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/xz;

    invoke-direct {v1, p0}, Lcom/twitter/android/xz;-><init>(Lcom/twitter/android/UsernameEntryFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->f()V

    goto/16 :goto_0

    .line 267
    :cond_3
    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "CUSTOM_ERRORS"

    sget-object v2, Lcom/twitter/model/core/cj;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    .line 269
    invoke-direct {p0, v0}, Lcom/twitter/android/UsernameEntryFragment;->a(Lcom/twitter/model/core/cj;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v4}, Lcom/twitter/android/UsernameEntryFragment;->a(Z)V

    .line 271
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const v0, 0x7f0a0728

    .line 272
    invoke-virtual {p0, v0}, Lcom/twitter/android/UsernameEntryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 278
    :pswitch_2
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    check-cast p1, Lbln;

    invoke-virtual {p1}, Lbln;->g()Ljava/util/List;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v2, p0, Lcom/twitter/android/UsernameEntryFragment;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    iget-object v2, p0, Lcom/twitter/android/UsernameEntryFragment;->m:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 286
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 290
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->n:[Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->n:[Ljava/lang/String;

    const v2, 0x7f0a0940

    iget-object v3, p0, Lcom/twitter/android/UsernameEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/twitter/android/util/SpannableTextUtil;->a(Landroid/content/Context;[Ljava/lang/String;ILandroid/widget/TextView;Lcom/twitter/android/util/bi;)V

    goto/16 :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/twitter/android/UsernameEntryFragment;->d:[I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setExtraState([I)V

    .line 217
    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/twitter/android/UsernameEntryFragment;->c:[I

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->n:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 167
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 171
    :goto_1
    return v0

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 144
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsernameEntryFragment;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsernameEntryFragment;->a(Z)V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->h:Lcom/twitter/android/ye;

    sget-object v1, Lcom/twitter/android/ValidationState$State;->c:Lcom/twitter/android/ValidationState$State;

    sget-object v2, Lcom/twitter/android/ValidationState$Level;->a:Lcom/twitter/android/ValidationState$Level;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->a:Lcom/twitter/android/ya;

    invoke-virtual {v0, v3}, Lcom/twitter/android/ya;->removeMessages(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/UsernameEntryFragment;->g()Lcom/twitter/android/ValidationState$State;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    if-ne v0, v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->a:Lcom/twitter/android/ya;

    invoke-virtual {v1, v3}, Lcom/twitter/android/ya;->a(I)V

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->h:Lcom/twitter/android/ye;

    sget-object v2, Lcom/twitter/android/ValidationState$Level;->a:Lcom/twitter/android/ValidationState$Level;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->a:Lcom/twitter/android/ya;

    invoke-virtual {v1, v3}, Lcom/twitter/android/ya;->removeMessages(I)V

    goto :goto_1
.end method

.method b()V
    .locals 7

    .prologue
    const v6, 0x7f0a0940

    const/4 v5, 0x0

    .line 175
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->n:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lbln;

    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->a_:Landroid/content/Context;

    .line 178
    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/UsernameEntryFragment;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/UsernameEntryFragment;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lbln;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v5}, Lcom/twitter/android/UsernameEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->a_:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/UsernameEntryFragment;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/twitter/android/UsernameEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0, v1, v6, v2, p0}, Lcom/twitter/android/util/SpannableTextUtil;->a(Landroid/content/Context;[Ljava/lang/String;ILandroid/widget/TextView;Lcom/twitter/android/util/bi;)V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->n:[Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/UsernameEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0, v1, v6, v2, p0}, Lcom/twitter/android/util/SpannableTextUtil;->a(Landroid/content/Context;[Ljava/lang/String;ILandroid/widget/TextView;Lcom/twitter/android/util/bi;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 372
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setSelection(I)V

    .line 375
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone100_enter_username"

    aput-object v3, v1, v2

    const-string/jumbo v2, "update_username"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/twitter/android/UsernameEntryFragment;->j:Z

    .line 377
    invoke-static {v3}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "suggestion"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    .line 376
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 378
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->f:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->d()V

    .line 332
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 325
    invoke-virtual {p0}, Lcom/twitter/android/UsernameEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    .line 324
    invoke-static/range {v0 .. v6}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lblv;

    move-result-object v0

    .line 326
    const v1, 0x7f0a09ad

    invoke-virtual {p0, v1}, Lcom/twitter/android/UsernameEntryFragment;->a(I)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/twitter/android/UsernameEntryFragment;->a(Lblv;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    const v1, 0x7f0a072a

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 130
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->e()V

    .line 132
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->e:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->e:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->e:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 355
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/twitter/android/kk;

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->f:Lcom/twitter/android/kk;

    .line 223
    instance-of v0, p1, Lcom/twitter/android/qf;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 224
    check-cast v0, Lcom/twitter/android/qf;

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->g:Lcom/twitter/android/qf;

    .line 226
    :cond_0
    check-cast p1, Lcom/twitter/android/ye;

    iput-object p1, p0, Lcom/twitter/android/UsernameEntryFragment;->h:Lcom/twitter/android/ye;

    .line 227
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance v0, Lcom/twitter/android/ya;

    invoke-direct {v0, p0}, Lcom/twitter/android/ya;-><init>(Lcom/twitter/android/UsernameEntryFragment;)V

    iput-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->a:Lcom/twitter/android/ya;

    .line 83
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x7f13008b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->f:Lcom/twitter/android/kk;

    .line 307
    invoke-interface {v0}, Lcom/twitter/android/kk;->y_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/twitter/android/UsernameEntryFragment;->f:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->b()V

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
