.class public Lcom/twitter/android/LoginActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/kq;
.implements Lcom/twitter/app/common/base/k;
.implements Lcom/twitter/app/common/base/m;
.implements Lcom/twitter/ui/widget/ao;


# static fields
.field private static final b:[I


# instance fields
.field a:Z

.field private final c:Lcom/twitter/android/iu;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/twitter/ui/widget/TwitterEditText;

.field private h:Lcom/twitter/ui/widget/TwitterEditText;

.field private i:Landroid/widget/Button;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Lcom/twitter/android/util/be;

.field private o:Ljava/lang/String;

.field private p:[Lcom/twitter/model/login/OneFactorEligibleFactor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010427

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/LoginActivity;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 137
    new-instance v0, Lcom/twitter/android/iu;

    invoke-direct {v0, p0}, Lcom/twitter/android/iu;-><init>(Lcom/twitter/android/LoginActivity;)V

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/iu;

    .line 141
    const-string/jumbo v0, "no_prefill"

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->f:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/LoginActivity;I)I
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/twitter/android/LoginActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/twitter/android/LoginActivity;)Lcom/twitter/ui/widget/TwitterEditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/LoginActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/twitter/android/LoginActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;)V
    .locals 2

    .prologue
    .line 464
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->showDialog(I)V

    .line 465
    new-instance v0, Lcom/twitter/android/ko;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/twitter/android/ko;-><init>(Landroid/content/Context;Lcom/twitter/android/kq;Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;)V

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    .line 466
    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Lcom/twitter/android/ko;->a(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/login/OneFactorEligibleFactor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1169
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->o:Ljava/lang/String;

    .line 1170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/model/login/OneFactorEligibleFactor;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/model/login/OneFactorEligibleFactor;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    .line 1171
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 1173
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->g()Lcom/twitter/app/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f040266

    .line 1174
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->g(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 1175
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1176
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/k;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 1177
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1178
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v4, "tag_1fa_dialog"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1180
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "login::1fa_eligible_sheet::impression"

    aput-object v1, v0, v6

    invoke-static {v2, v3, v0}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    .line 1181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/login/OneFactorEligibleFactor;

    .line 1182
    iget-object v4, v0, Lcom/twitter/model/login/OneFactorEligibleFactor;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    sget-object v5, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    if-ne v4, v5, :cond_1

    .line 1183
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v4, "login::1fa_eligible_sheet:send_email:impression"

    aput-object v4, v0, v6

    invoke-static {v2, v3, v0}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v0, v0, Lcom/twitter/model/login/OneFactorEligibleFactor;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    sget-object v4, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->a:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    if-ne v0, v4, :cond_0

    .line 1185
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v4, "login::1fa_eligible_sheet:send_sms:impression"

    aput-object v4, v0, v6

    invoke-static {v2, v3, v0}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/LoginActivity;Z)Z
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/twitter/android/LoginActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/LoginActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 470
    const-string/jumbo v0, "native_password_reset_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PasswordResetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "account_id"

    .line 472
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 473
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/twitter/android/util/ak;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 531
    const-string/jumbo v0, "native_password_reset_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string/jumbo v1, "login_verification_user_id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    const-string/jumbo v2, "login_verification_request_id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 537
    const-string/jumbo v2, "login_verification_cause"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 538
    const-string/jumbo v2, "login_verification_request_url"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 539
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    invoke-static {v4}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v5}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 546
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/LoginActivity;->l:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 550
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v8

    .line 551
    iget v0, p0, Lcom/twitter/android/LoginActivity;->l:I

    if-ne v0, v7, :cond_2

    .line 552
    const-string/jumbo v0, "login_verification_type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 562
    iput-boolean v7, p0, Lcom/twitter/android/LoginActivity;->k:Z

    .line 563
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/iu;

    new-instance v1, Lcom/twitter/model/account/LoginVerificationRequiredResponse;

    iget v7, p0, Lcom/twitter/android/LoginActivity;->l:I

    invoke-direct/range {v1 .. v7}, Lcom/twitter/model/account/LoginVerificationRequiredResponse;-><init>(JLjava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v0, v8, v1}, Lcom/twitter/android/iu;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginVerificationRequiredResponse;)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0, v7}, Lcom/twitter/android/LoginActivity;->showDialog(I)V

    .line 568
    iput-boolean v7, p0, Lcom/twitter/android/LoginActivity;->k:Z

    .line 569
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/iu;

    move-object v1, v8

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 559
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 547
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 494
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->l()Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    .line 495
    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {p0, v0, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-static {p0}, Lcom/twitter/library/util/an;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    .line 495
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/LoginActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/LoginActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/LoginActivity;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/twitter/android/LoginActivity;)I
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/twitter/android/LoginActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/twitter/android/LoginActivity;->d:I

    return v0
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 511
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-static {p0, v0, v7}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 513
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->r()Ljava/lang/String;

    move-result-object v1

    .line 514
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "login:identifier:%s::prefill_changed"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 518
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 521
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "login:form:::submit"

    aput-object v4, v3, v7

    .line 522
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 523
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 525
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/iu;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->j:Ljava/lang/String;

    .line 527
    invoke-virtual {p0, v8}, Lcom/twitter/android/LoginActivity;->showDialog(I)V

    .line 528
    return-void
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 594
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 596
    new-instance v4, Lcom/twitter/android/FlowData;

    invoke-direct {v4}, Lcom/twitter/android/FlowData;-><init>()V

    .line 597
    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->m:Z

    invoke-virtual {v4, v0}, Lcom/twitter/android/FlowData;->g(Z)V

    .line 598
    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->m:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/twitter/android/FlowData;->a(Z)V

    .line 599
    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->a:Z

    invoke-virtual {v4, v0}, Lcom/twitter/android/FlowData;->c(Z)V

    .line 600
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->n:Lcom/twitter/android/util/be;

    invoke-interface {v0}, Lcom/twitter/android/util/be;->b()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/twitter/android/FlowData;->b(Z)V

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/FlowActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "flow_data"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 604
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v6, "login:form::signup:click"

    aput-object v6, v5, v2

    .line 605
    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 604
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 606
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    const-string/jumbo v2, "android.intent.extra.INTENT"

    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    return-void

    :cond_1
    move v0, v2

    .line 598
    goto :goto_0
.end method

.method static synthetic i(Lcom/twitter/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->p()V

    return-void
.end method

.method static synthetic j(Lcom/twitter/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->l()V

    return-void
.end method

.method static synthetic k(Lcom/twitter/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->m()V

    return-void
.end method

.method static synthetic l(Lcom/twitter/android/LoginActivity;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/twitter/android/LoginActivity;->d:I

    return v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 713
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0934

    .line 714
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0933

    .line 715
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05e4

    .line 716
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a03dc

    .line 717
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 718
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 719
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 720
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "login::use_temporary_password_prompt::impression"

    aput-object v3, v1, v2

    .line 721
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 720
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 722
    return-void
.end method

.method static synthetic m(Lcom/twitter/android/LoginActivity;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/twitter/android/LoginActivity;->l:I

    return v0
.end method

.method private m()V
    .locals 3

    .prologue
    const v2, 0x7f0a06f1

    .line 725
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 726
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a06f2

    .line 727
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0900

    .line 728
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 729
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 730
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 731
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 732
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 736
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a04b5

    .line 737
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05e4

    .line 738
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 739
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 740
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 741
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "login::ambiguity_alert::impression"

    aput-object v3, v1, v2

    .line 742
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 741
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 743
    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 4

    .prologue
    .line 789
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "login::::success"

    aput-object v3, v1, v2

    .line 790
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 791
    const-string/jumbo v1, "app_download_client_event"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 792
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v1

    .line 793
    const-string/jumbo v2, "4"

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 794
    sget-object v1, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v1}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v1

    .line 795
    if-eqz v1, :cond_0

    .line 796
    const-string/jumbo v2, "6"

    invoke-virtual {v1}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 797
    invoke-virtual {v1}, Lcom/twitter/library/api/d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 799
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 800
    return-void
.end method

.method private t()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 830
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-static {p0}, Lcom/twitter/library/network/f;->a(Landroid/content/Context;)Lcom/twitter/library/network/e;

    move-result-object v0

    .line 832
    invoke-interface {v0}, Lcom/twitter/library/network/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 835
    const-string/jumbo v1, "email"

    iput-object v1, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    .line 836
    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->f:Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->requestFocus()Z

    .line 841
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "login:identifier:%s::prefill"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 842
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 841
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 843
    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    .line 849
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    .line 850
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0403ab

    .line 852
    invoke-static {p0}, Lcom/twitter/android/wb;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 853
    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 855
    new-instance v1, Lcom/twitter/android/iv;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/iv;-><init>(Lcom/twitter/android/LoginActivity;Lcom/twitter/internal/android/widget/PopupEditText;)V

    .line 856
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_1fa_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 1193
    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0}, Lcom/twitter/android/widget/PromptDialogFragment;->dismissAllowingStateLoss()V

    .line 1196
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->n:Lcom/twitter/android/util/be;

    if-nez v0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/twitter/android/util/bf;->a(Landroid/content/Context;)Lcom/twitter/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->n:Lcom/twitter/android/util/be;

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0d02df

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 164
    invoke-static {p0}, Lcom/twitter/android/qd;->a(Landroid/app/Activity;)V

    .line 165
    const v0, 0x7f040187

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 166
    invoke-virtual {p2, v3}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 167
    invoke-virtual {p2, v3}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 168
    invoke-virtual {p2, v3}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 169
    invoke-virtual {p2, v3}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 170
    return-object p2
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 873
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    .line 874
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 875
    return-void
.end method

.method public a(Landroid/app/Dialog;ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 879
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    .line 881
    sget-object v0, Lcom/twitter/android/iz;->b:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    const v0, 0x7f0a04c0

    move v1, v0

    .line 888
    :goto_0
    const v0, 0x7f1305c2

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 889
    iget-object v3, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v0, v3, v1

    .line 891
    iget-object v5, v0, Lcom/twitter/model/login/OneFactorEligibleFactor;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    sget-object v6, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    if-ne v5, v6, :cond_3

    .line 892
    const v0, 0x7f1305c4

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 898
    :goto_2
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 900
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 883
    :cond_1
    sget-object v0, Lcjf;->c:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    const v0, 0x7f0a04bf

    move v1, v0

    goto :goto_0

    .line 886
    :cond_2
    const v0, 0x7f0a04c1

    move v1, v0

    goto :goto_0

    .line 893
    :cond_3
    iget-object v0, v0, Lcom/twitter/model/login/OneFactorEligibleFactor;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    sget-object v5, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->a:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    if-ne v0, v5, :cond_4

    .line 894
    const v0, 0x7f1305c3

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 896
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 903
    :cond_5
    const v0, 0x7f1305c5

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    :cond_6
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v0, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 668
    packed-switch p2, :pswitch_data_0

    .line 709
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 670
    :pswitch_1
    if-ne p3, v2, :cond_0

    .line 671
    const v0, 0x7f0a0acb

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginActivity;->b(I)V

    goto :goto_0

    .line 677
    :pswitch_2
    if-ne p3, v0, :cond_0

    .line 678
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const v2, 0x7f0a0ab4

    .line 679
    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 678
    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 680
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "login::use_temporary_password_prompt:get_help:click"

    aput-object v2, v1, v4

    .line 681
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 680
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 687
    :pswitch_3
    if-ne p3, v0, :cond_0

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const v2, 0x7f0a0ac9

    .line 689
    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 688
    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 695
    :pswitch_4
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 696
    if-ne p3, v2, :cond_1

    .line 697
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "login::1fa_send_sms_confirm_dialog:ok:click"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    .line 698
    sget-object v0, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->a:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;)V

    goto :goto_0

    .line 700
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "login::1fa_send_sms_confirm_dialog:cancel:click"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 753
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v0

    .line 754
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    .line 755
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 757
    iget-boolean v4, p0, Lcom/twitter/android/LoginActivity;->a:Z

    .line 758
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v5

    .line 757
    invoke-static {p0, p1, v4, p2, v5}, Lcom/twitter/android/iz;->a(Landroid/app/Activity;Lcom/twitter/library/client/Session;ZLjava/lang/String;Lcom/twitter/library/client/bk;)V

    .line 760
    iget-boolean v4, p0, Lcom/twitter/android/LoginActivity;->a:Z

    invoke-static {p0, v4, v2, v3}, Lcom/twitter/android/iz;->a(Landroid/app/Activity;ZJ)V

    .line 762
    iget-boolean v4, p0, Lcom/twitter/android/LoginActivity;->m:Z

    if-nez v4, :cond_1

    .line 763
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/DispatchActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 764
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 765
    const-string/jumbo v5, "android.intent.extra.INTENT"

    .line 766
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "android.intent.extra.INTENT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 765
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 768
    :cond_0
    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 771
    :cond_1
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "AbsFragmentActivity_account_name"

    .line 772
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 771
    invoke-virtual {p0, v4, v1}, Lcom/twitter/android/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 774
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/twitter/android/util/AppEventTrack$EventType;->c:Lcom/twitter/android/util/AppEventTrack$EventType;

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/twitter/android/util/AppEventTrack;->a(Landroid/content/Context;Lcom/twitter/android/util/AppEventTrack$EventType;[Ljava/lang/String;)V

    .line 775
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->s()V

    .line 777
    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v4, "login:identifier:%s::success"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v2, v3, v1}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    .line 779
    const-string/jumbo v1, "login::::success"

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/twitter/android/client/c;->a(JLjava/lang/String;Z)V

    .line 781
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 782
    invoke-static {p0, p1}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lblv;

    move-result-object v1

    const/4 v2, 0x0

    .line 781
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 783
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->finish()V

    .line 784
    return-void
.end method

.method public a(Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;Lcom/twitter/model/login/a;)V
    .locals 3

    .prologue
    .line 861
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    .line 862
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/OneFactorAuthVerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "1fa_login"

    const/4 v2, 0x1

    .line 863
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "auth_method"

    .line 864
    invoke-virtual {p1}, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "identifier"

    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    .line 865
    invoke-virtual {v2}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "request_id"

    iget-object v2, p2, Lcom/twitter/model/login/a;->a:Ljava/lang/String;

    .line 866
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "possible_1fa"

    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 868
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 869
    return-void
.end method

.method public a(Lcom/twitter/ui/widget/TwitterEditText;)Z
    .locals 4

    .prologue
    const/16 v3, 0x91

    .line 804
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    if-ne v0, p1, :cond_1

    .line 805
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 806
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getSelectionStart()I

    move-result v0

    .line 807
    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getSelectionEnd()I

    move-result v1

    .line 808
    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v2}, Lcom/twitter/ui/widget/TwitterEditText;->getInputType()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 809
    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TwitterEditText;->setInputType(I)V

    .line 810
    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    sget-object v3, Lcom/twitter/android/LoginActivity;->b:[I

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TwitterEditText;->setExtraState([I)V

    .line 816
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setSelection(II)V

    .line 817
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 818
    const/4 v0, 0x1

    .line 820
    :goto_1
    return v0

    .line 812
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TwitterEditText;->setInputType(I)V

    .line 813
    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TwitterEditText;->setExtraState([I)V

    goto :goto_0

    .line 820
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcyd;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 576
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 577
    const v2, 0x7f130802

    if-ne v1, v2, :cond_0

    .line 578
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/settings/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 588
    :goto_0
    return v0

    .line 580
    :cond_0
    const v2, 0x7f130804

    if-ne v1, v2, :cond_1

    .line 581
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/AdvancedDiscoSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "extra_is_signup_process"

    .line 582
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 581
    invoke-virtual {p0, v1}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 584
    :cond_1
    const v2, 0x7f130803

    if-ne v1, v2, :cond_2

    .line 585
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/settings/ProxySettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 588
    :cond_2
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 2

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    .line 387
    const v0, 0x7f140027

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 388
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    const v0, 0x7f140028

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 392
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->i:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    return-void
.end method

.method public b(Lcyg;)I
    .locals 4

    .prologue
    .line 376
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 377
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040188

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 379
    const v2, 0x7f13044a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 381
    const/4 v0, 0x2

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 177
    const v0, 0x7f0a04d9

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->setTitle(I)V

    .line 179
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 182
    const-string/jumbo v0, "add_account"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/LoginActivity;->a:Z

    .line 185
    const-string/jumbo v0, "authorize_account"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/LoginActivity;->m:Z

    .line 187
    const v0, 0x7f13044f

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    .line 188
    const v0, 0x7f130450

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    .line 189
    const v0, 0x7f130451

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->i:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->setOnStatusIconClickListener(Lcom/twitter/ui/widget/ao;)V

    .line 197
    const v0, 0x7f1301df

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput v2, p0, Lcom/twitter/android/LoginActivity;->d:I

    .line 201
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 205
    if-eqz v4, :cond_2

    .line 206
    const-string/jumbo v0, "screen_name"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string/jumbo v0, "password"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 216
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v5, "login:::username:prefill"

    aput-object v5, v3, v2

    invoke-static {v6, v7, v3}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v3, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->requestFocus()Z

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    new-instance v1, Lcom/twitter/android/ir;

    invoke-direct {v1, p0}, Lcom/twitter/android/ir;-><init>(Lcom/twitter/android/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    new-instance v1, Lcom/twitter/android/is;

    invoke-direct {v1, p0, v6, v7}, Lcom/twitter/android/is;-><init>(Lcom/twitter/android/LoginActivity;J)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->i:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    const v0, 0x7f130345

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    .line 259
    const v1, 0x7f0a04da

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(I)V

    .line 261
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/twitter/library/util/an;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lcom/twitter/library/util/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->g:Lcom/twitter/ui/widget/TwitterEditText;

    const-string/jumbo v1, "@twitter.com email"

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setLabelText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    if-nez p1, :cond_6

    .line 267
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v3, "login::::impression"

    aput-object v3, v1, v2

    .line 268
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 269
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 271
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "login"

    aput-object v0, v3, v2

    const-string/jumbo v0, ""

    aput-object v0, v3, v8

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->a:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "switch_account"

    :goto_2
    aput-object v0, v3, v2

    const/4 v0, 0x3

    const-string/jumbo v2, ""

    aput-object v2, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "impression"

    aput-object v2, v3, v0

    .line 272
    invoke-virtual {v1, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 274
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 276
    const-string/jumbo v0, "login"

    invoke-static {p0, v0}, Lcom/twitter/android/ip;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 278
    if-eqz v4, :cond_1

    .line 279
    invoke-direct {p0, v4}, Lcom/twitter/android/LoginActivity;->b(Landroid/net/Uri;)V

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->t()V

    .line 304
    :goto_3
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->u()V

    .line 305
    return-void

    .line 209
    :cond_2
    const-string/jumbo v0, "screen_name"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string/jumbo v0, "password"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->h:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_1

    .line 226
    :cond_4
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "login:::username:prefill_fail"

    aput-object v1, v0, v2

    invoke-static {v6, v7, v0}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :cond_5
    const-string/jumbo v0, "logged_out"

    goto :goto_2

    .line 284
    :cond_6
    const-string/jumbo v0, "reqId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->j:Ljava/lang/String;

    .line 285
    const-string/jumbo v0, "passwordResetLogin"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/LoginActivity;->k:Z

    .line 286
    const-string/jumbo v0, "loginVerificationCause"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/LoginActivity;->l:I

    .line 287
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/iu;

    invoke-virtual {v0, v1, v3}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V

    .line 289
    const-string/jumbo v0, "prefill_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    .line 290
    const-string/jumbo v0, "prefill_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->f:Ljava/lang/String;

    .line 292
    const-string/jumbo v0, "1fa_factors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 293
    if-eqz v3, :cond_7

    array-length v0, v3

    if-lez v0, :cond_7

    .line 294
    array-length v0, v3

    new-array v0, v0, [Lcom/twitter/model/login/OneFactorEligibleFactor;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    move v1, v2

    .line 295
    :goto_4
    array-length v0, v3

    if-ge v1, v0, :cond_8

    .line 296
    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    aget-object v0, v3, v1

    check-cast v0, Lcom/twitter/model/login/OneFactorEligibleFactor;

    aput-object v0, v2, v1

    .line 295
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 299
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    .line 301
    :cond_8
    const-string/jumbo v0, "1fa_identifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->o:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 615
    packed-switch p1, :pswitch_data_0

    .line 658
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 617
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 618
    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->a:Z

    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 620
    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 625
    :cond_1
    invoke-virtual {p0, v2, p3}, Lcom/twitter/android/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 627
    invoke-static {}, Lcom/twitter/android/bo;->a()V

    .line 628
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_0

    .line 634
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 635
    invoke-virtual {p0, v2, p3}, Lcom/twitter/android/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 636
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_0

    .line 642
    :pswitch_2
    if-ne p2, v2, :cond_0

    .line 643
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginActivity;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 648
    :pswitch_3
    if-ne p2, v2, :cond_0

    .line 649
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "session"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    .line 651
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "serialized_user"

    .line 652
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->a:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "accountAuthenticatorResponse"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 366
    if-eqz v0, :cond_0

    .line 367
    const/4 v1, 0x4

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 370
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 371
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 423
    :sswitch_0
    const v0, 0x7f0a0acc

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginActivity;->b(I)V

    goto :goto_0

    .line 427
    :sswitch_1
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->h()V

    goto :goto_0

    .line 433
    :sswitch_2
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->i()V

    goto :goto_0

    .line 437
    :sswitch_3
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->v()V

    .line 438
    sget-object v2, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    invoke-direct {p0, v2}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;)V

    .line 439
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "login::1fa_eligible_sheet:send_email:click"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :sswitch_4
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->v()V

    .line 444
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    sget-object v5, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->a:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    .line 446
    invoke-static {v4, v5}, Lzm;->a([Lcom/twitter/model/login/OneFactorEligibleFactor;Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-static {v2, v3, v4, p0}, Lcom/twitter/android/ko;->a(Landroid/content/Context;ILjava/lang/String;Lcom/twitter/app/common/base/m;)Lcom/twitter/android/widget/PromptDialogFragment;

    move-result-object v2

    .line 448
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 449
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "login::1fa_eligible_sheet:send_sms:click"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :sswitch_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    .line 454
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->v()V

    goto :goto_0

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1301df -> :sswitch_0
        0x7f13044a -> :sswitch_2
        0x7f130451 -> :sswitch_1
        0x7f1305c3 -> :sswitch_4
        0x7f1305c4 -> :sswitch_3
        0x7f1305c5 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 397
    sparse-switch p1, :sswitch_data_0

    .line 412
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 400
    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 401
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 402
    if-ne p1, v3, :cond_0

    .line 403
    const v1, 0x7f0a04d7

    invoke-virtual {p0, v1}, Lcom/twitter/android/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 407
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 408
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 405
    :cond_0
    const v1, 0x7f0a0833

    invoke-virtual {p0, v1}, Lcom/twitter/android/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 328
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->e(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 335
    sget-object v0, Lcom/twitter/android/it;->a:[I

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session$LoginStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 337
    :pswitch_0
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->setResult(I)V

    .line 339
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/twitter/app/main/MainActivity;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 344
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->showDialog(I)V

    goto :goto_0

    .line 348
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    goto :goto_0

    .line 352
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    const-string/jumbo v0, "reqId"

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "passwordResetLogin"

    iget-boolean v1, p0, Lcom/twitter/android/LoginActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    const-string/jumbo v0, "loginVerificationCause"

    iget v1, p0, Lcom/twitter/android/LoginActivity;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string/jumbo v0, "prefill_type"

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v0, "prefill_value"

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    if-eqz v0, :cond_0

    .line 318
    const-string/jumbo v0, "1fa_factors"

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->p:[Lcom/twitter/model/login/OneFactorEligibleFactor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 321
    const-string/jumbo v0, "1fa_identifier"

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method
