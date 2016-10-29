.class public Lcom/twitter/android/EmailEntryFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/fb;
.implements Lcom/twitter/android/util/bi;
.implements Lcom/twitter/app/common/base/m;


# static fields
.field private static final c:[I

.field private static final d:[I


# instance fields
.field a:Lcom/twitter/android/ez;

.field b:Lcom/twitter/ui/widget/TwitterEditText;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/twitter/ui/widget/TypefacesTextView;

.field private i:Lcom/twitter/ui/widget/TypefacesTextView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/twitter/android/kk;

.field private m:Lcom/twitter/android/ye;

.field private n:Lcom/twitter/android/qf;

.field private o:Lcom/twitter/android/fa;

.field private p:Lcom/twitter/android/fz;

.field private q:Lcom/twitter/android/widget/ProgressDialogFragment;

.field private r:Lcom/twitter/android/v;

.field private s:J

.field private t:Lcom/twitter/library/client/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/EmailEntryFragment;->c:[I

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010441

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/EmailEntryFragment;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/EmailEntryFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    .line 382
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0403ab

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 385
    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    new-instance v1, Lcom/twitter/android/util/i;

    invoke-direct {v1, v0}, Lcom/twitter/android/util/i;-><init>(Lcom/twitter/internal/android/widget/PopupEditText;)V

    .line 389
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/EmailEntryFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/EmailEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/EmailEntryFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)Lcom/twitter/android/ValidationState$State;
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EmailEntryFragment;->a(Z)V

    .line 298
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 299
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->length()I

    move-result v0

    .line 300
    if-lt v0, p1, :cond_0

    .line 301
    sget-object v0, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    .line 305
    :goto_0
    return-object v0

    .line 302
    :cond_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    if-ge v0, p1, :cond_1

    .line 303
    sget-object v0, Lcom/twitter/android/ValidationState$State;->a:Lcom/twitter/android/ValidationState$State;

    goto :goto_0

    .line 305
    :cond_1
    sget-object v0, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/EmailEntryFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->t:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/twitter/android/EmailEntryFragment;)Lcom/twitter/android/ye;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 157
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->a()V

    .line 158
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-boolean v0, p0, Lcom/twitter/android/EmailEntryFragment;->e:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    iget-object v2, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v2}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    invoke-interface {v0}, Lcom/twitter/android/ye;->e()Lcom/twitter/android/ValidationState;

    move-result-object v0

    .line 168
    :goto_0
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/twitter/android/ValidationState;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {p0, v3}, Lcom/twitter/android/EmailEntryFragment;->a(Z)V

    .line 177
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->p:Lcom/twitter/android/fz;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->p:Lcom/twitter/android/fz;

    invoke-virtual {p0, v0}, Lcom/twitter/android/EmailEntryFragment;->a(Lcom/twitter/android/fz;)V

    .line 180
    :cond_2
    return-void

    .line 166
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    invoke-interface {v0}, Lcom/twitter/android/ye;->e()Lcom/twitter/android/ValidationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/ValidationState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 172
    invoke-direct {p0, v0}, Lcom/twitter/android/EmailEntryFragment;->c(I)Lcom/twitter/android/ValidationState$State;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    if-ne v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a:Lcom/twitter/android/ez;

    invoke-virtual {v0, v3}, Lcom/twitter/android/ez;->a(I)V

    goto :goto_1
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->q:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 334
    invoke-static {p1}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(I)Lcom/twitter/android/widget/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->q:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 335
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->q:Lcom/twitter/android/widget/ProgressDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ProgressDialogFragment;->setRetainInstance(Z)V

    .line 336
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->q:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 5

    .prologue
    .line 443
    if-nez p2, :cond_0

    .line 445
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->l:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->d()V

    .line 447
    const-string/jumbo v0, "ok"

    .line 451
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/EmailEntryFragment;->s:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "phone100_email_optional"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "skip_confirm_dialog"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/twitter/android/EmailEntryFragment;->f:Z

    .line 453
    invoke-static {v4}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 452
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 455
    :cond_0
    return-void

    .line 449
    :cond_1
    const-string/jumbo v0, "cancel"

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/fz;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p1, Lcom/twitter/android/fz;->b:Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->t_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setError(Ljava/lang/CharSequence;)V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->p:Lcom/twitter/android/fz;

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/EmailEntryFragment;->p:Lcom/twitter/android/fz;

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 9
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 197
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 199
    packed-switch p2, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {p0, v7}, Lcom/twitter/android/EmailEntryFragment;->a(Z)V

    .line 203
    sget-object v0, Lcom/twitter/android/ValidationState$State;->c:Lcom/twitter/android/ValidationState$State;

    .line 204
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 216
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    sget-object v2, Lcom/twitter/android/ValidationState$Level;->b:Lcom/twitter/android/ValidationState$Level;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0, v6}, Lcom/twitter/android/EmailEntryFragment;->a(Z)V

    .line 207
    sget-object v2, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    .line 209
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->e()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setError(Ljava/lang/CharSequence;)V

    move-object v0, v2

    goto :goto_1

    .line 211
    :cond_2
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->h()Z

    move-result v0

    if-nez v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0825

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->l:Lcom/twitter/android/kk;

    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/kk;->a(Z)V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->f()V

    .line 225
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/bk;->c(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    .line 230
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 233
    if-eqz v0, :cond_5

    .line 234
    const-string/jumbo v0, "success"

    .line 235
    iget-object v2, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v2}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-boolean v4, p0, Lcom/twitter/android/EmailEntryFragment;->g:Z

    if-eqz v4, :cond_4

    .line 237
    invoke-static {v2, p0}, Lcom/twitter/android/widget/PendingEmailOverlayPrompt;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 247
    :goto_3
    iget-boolean v2, p0, Lcom/twitter/android/EmailEntryFragment;->g:Z

    if-eqz v2, :cond_6

    .line 248
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "add_update_email:::email_attach"

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    invoke-virtual {v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 254
    :goto_4
    invoke-static {v3}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 239
    :cond_4
    iget-object v2, p0, Lcom/twitter/android/EmailEntryFragment;->l:Lcom/twitter/android/kk;

    invoke-interface {v2}, Lcom/twitter/android/kk;->d()V

    goto :goto_3

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    const v2, 0x7f0a0346

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    const-string/jumbo v0, "failure"

    goto :goto_3

    .line 250
    :cond_6
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "phone100_email_optional"

    aput-object v4, v2, v6

    const-string/jumbo v4, "add_email"

    aput-object v4, v2, v7

    iget-boolean v4, p0, Lcom/twitter/android/EmailEntryFragment;->f:Z

    .line 251
    invoke-static {v4}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x3

    aput-object v1, v2, v4

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 250
    invoke-virtual {v3, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const v1, 0x7f0a0833

    invoke-virtual {p0, v1}, Lcom/twitter/android/EmailEntryFragment;->a(I)V

    .line 321
    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/EmailEntryFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 367
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->t:Lcom/twitter/library/client/Session;

    move-object v3, p2

    move-object v4, v2

    move-object v5, p1

    .line 368
    invoke-static/range {v0 .. v6}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lblv;

    move-result-object v0

    .line 370
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v6}, Lcom/twitter/android/EmailEntryFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 371
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/twitter/android/EmailEntryFragment;->c(Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p2}, Lcom/twitter/android/EmailEntryFragment;->a(Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->requestFocus()Z

    .line 414
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 435
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->d(Ljava/util/Collection;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/EmailEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0, v1, v2, p0}, Lcom/twitter/android/util/SpannableTextUtil;->a(Landroid/content/Context;[ILandroid/widget/TextView;Lcom/twitter/android/util/bi;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/twitter/android/EmailEntryFragment;->d:[I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setExtraState([I)V

    .line 311
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/twitter/android/EmailEntryFragment;->c:[I

    goto :goto_0
.end method

.method public a(ZII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    if-eqz p1, :cond_2

    .line 394
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    if-eqz p2, :cond_0

    .line 396
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->j:Landroid/view/View;

    const v1, 0x7f130345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :cond_0
    if-eqz p3, :cond_1

    .line 399
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->j:Landroid/view/View;

    const v1, 0x7f13073b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 285
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 286
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/twitter/android/EmailEntryFragment;->c(I)Lcom/twitter/android/ValidationState$State;

    move-result-object v0

    .line 287
    sget-object v1, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    if-ne v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->a:Lcom/twitter/android/ez;

    invoke-virtual {v1, v2}, Lcom/twitter/android/ez;->a(I)V

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    sget-object v2, Lcom/twitter/android/ValidationState$Level;->a:Lcom/twitter/android/ValidationState$Level;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    .line 294
    :cond_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->a:Lcom/twitter/android/ez;

    invoke-virtual {v1, v2}, Lcom/twitter/android/ez;->removeMessages(I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->h:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->h:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0, v1, p1, v2}, Lcom/twitter/android/util/SpannableTextUtil;->a(Landroid/content/Context;Landroid/widget/TextView;IZ)V

    .line 471
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->h:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    const v2, 0x7f0d02a2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 472
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 488
    const v0, 0x7f0a07f0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EmailEntryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->r:Lcom/twitter/android/v;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->o:Lcom/twitter/android/fa;

    invoke-virtual {v1}, Lcom/twitter/android/fa;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/v;->b(Z)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const v0, 0x7f0a0936

    invoke-virtual {p0, v0}, Lcom/twitter/android/EmailEntryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->n:Lcom/twitter/android/qf;

    invoke-interface {v0}, Lcom/twitter/android/qf;->r()V

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    invoke-interface {v0}, Lcom/twitter/android/ye;->e()Lcom/twitter/android/ValidationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/ValidationState;->a()Z

    move-result v0

    return v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->n:Lcom/twitter/android/qf;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->n:Lcom/twitter/android/qf;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/qf;->e(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->n:Lcom/twitter/android/qf;

    invoke-interface {v0}, Lcom/twitter/android/qf;->s()V

    .line 330
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 185
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->e()V

    .line 187
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->q:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->q:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/ProgressDialogFragment;->b()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->q:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 345
    :cond_0
    return-void
.end method

.method protected g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 350
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v4}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0374

    .line 351
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0373

    .line 352
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0276

    .line 353
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0274

    .line 354
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 355
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 360
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/EmailEntryFragment;->s:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "phone100_email_optional"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "skip_confirm_dialog"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/twitter/android/EmailEntryFragment;->f:Z

    .line 362
    invoke-static {v3}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v1, v2

    .line 361
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 360
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 363
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    const v2, 0x7f0d0418

    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/TwitterEditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 419
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->k:Landroid/view/View;

    const v2, 0x7f0f0069

    invoke-static {v0, v1, v2}, Lcom/twitter/android/bl;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 424
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v0

    .line 477
    const-string/jumbo v1, "current_email"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    const-string/jumbo v2, "umf_update_email_flow"

    invoke-virtual {v0, v2, v3}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 479
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->k:Landroid/view/View;

    const v2, 0x7f130346

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    .line 481
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TwitterEditText;->setVisibility(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 144
    check-cast v0, Lcom/twitter/android/kk;

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->l:Lcom/twitter/android/kk;

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/twitter/android/ye;

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->m:Lcom/twitter/android/ye;

    .line 146
    instance-of v0, p1, Lcom/twitter/android/qf;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/twitter/android/qf;

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->n:Lcom/twitter/android/qf;

    .line 150
    :cond_0
    instance-of v0, p1, Lcom/twitter/android/v;

    if-eqz v0, :cond_1

    .line 151
    check-cast p1, Lcom/twitter/android/v;

    iput-object p1, p0, Lcom/twitter/android/EmailEntryFragment;->r:Lcom/twitter/android/v;

    .line 153
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/network/f;->a(Landroid/content/Context;)Lcom/twitter/library/network/e;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "people_discoverability_settings_update_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 106
    new-instance v2, Lcom/twitter/android/fa;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/android/fa;-><init>(Lcom/twitter/android/fb;Lcom/twitter/library/network/e;Z)V

    iput-object v2, p0, Lcom/twitter/android/EmailEntryFragment;->o:Lcom/twitter/android/fa;

    .line 107
    new-instance v0, Lcom/twitter/android/ez;

    invoke-direct {v0, p0}, Lcom/twitter/android/ez;-><init>(Lcom/twitter/android/EmailEntryFragment;)V

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->a:Lcom/twitter/android/ez;

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 113
    const v0, 0x7f0400e0

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/EmailEntryFragment;->k:Landroid/view/View;

    .line 114
    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v2

    .line 116
    const v0, 0x7f130347

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    .line 117
    const v0, 0x7f130158

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->h:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 118
    const v0, 0x7f130348

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->i:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 119
    const v0, 0x7f13073a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->j:Landroid/view/View;

    .line 121
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, v8, v9}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/android/EmailEntryFragment;->s:J

    .line 122
    iget-wide v4, p0, Lcom/twitter/android/EmailEntryFragment;->s:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/android/EmailEntryFragment;->s:J

    .line 124
    invoke-virtual {p0}, Lcom/twitter/android/EmailEntryFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->t:Lcom/twitter/library/client/Session;

    .line 129
    :goto_0
    const-string/jumbo v0, "add_email"

    const-string/jumbo v3, "phone_100_step"

    .line 130
    invoke-virtual {v2, v3}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EmailEntryFragment;->e:Z

    .line 131
    const-string/jumbo v0, "umf_add_update_email_flow"

    invoke-virtual {v2, v0, v6}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EmailEntryFragment;->g:Z

    .line 133
    const-string/jumbo v0, "suggested_email"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v2}, Lcom/twitter/android/qd;->a(Lcom/twitter/app/common/base/f;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/EmailEntryFragment;->f:Z

    .line 137
    iget-object v3, p0, Lcom/twitter/android/EmailEntryFragment;->o:Lcom/twitter/android/fa;

    const-string/jumbo v4, "phone_100_step"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lcom/twitter/android/fa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v1

    .line 126
    :cond_0
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-wide v4, p0, Lcom/twitter/android/EmailEntryFragment;->s:J

    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->t:Lcom/twitter/library/client/Session;

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 268
    const v1, 0x7f130347

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->l:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->y_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/twitter/android/EmailEntryFragment;->l:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->b()V

    .line 270
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method
