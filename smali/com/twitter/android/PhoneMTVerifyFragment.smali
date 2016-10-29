.class public Lcom/twitter/android/PhoneMTVerifyFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/twitter/android/client/c;

.field private h:Lcom/twitter/library/client/Session;

.field private i:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->e:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->i:Z

    .line 59
    new-instance v0, Lcom/twitter/android/ll;

    invoke-direct {v0, p0}, Lcom/twitter/android/ll;-><init>(Lcom/twitter/android/PhoneMTVerifyFragment;)V

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/PhoneMTVerifyFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/PhoneMTVerifyFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/PhoneMTVerifyFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->f:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->h:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbnk;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)Lbnk;

    move-result-object v0

    .line 134
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/PhoneMTVerifyFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 135
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f0a062c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :cond_0
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string/jumbo v1, "/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->h:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->e:Z

    invoke-static {v1, v2, v3, v0, v4}, Lbnl;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Z)Lbnl;

    move-result-object v0

    .line 146
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/PhoneMTVerifyFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 147
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    const v0, 0x7f04027c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->f:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->g:Lcom/twitter/android/client/c;

    .line 82
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->h:Lcom/twitter/library/client/Session;

    .line 84
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a062d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "verify_phone_number"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "is_verizon"

    invoke-virtual {v0, v1, v6}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->e:Z

    .line 90
    const v0, 0x7f1305e3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/android/lm;

    invoke-direct {v1, p0}, Lcom/twitter/android/lm;-><init>(Lcom/twitter/android/PhoneMTVerifyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    const v0, 0x7f1305e4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->b:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f1305e5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->c:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f1305e2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    const v3, 0x7f0a0628

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 104
    :goto_0
    aput-object v1, v4, v6

    .line 103
    invoke-virtual {p0, v3, v4}, Lcom/twitter/android/PhoneMTVerifyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 109
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "phone_loggedin_mt"

    aput-object v3, v1, v6

    const-string/jumbo v3, "enter_code:::impression"

    aput-object v3, v1, v7

    .line 110
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 111
    return-object v2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 9
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x1

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 155
    if-ne p2, v7, :cond_4

    move-object v0, p1

    .line 156
    check-cast v0, Lbnk;

    invoke-virtual {v0}, Lbnk;->s()Lcnc;

    move-result-object v1

    move-object v0, p1

    .line 157
    check-cast v0, Lbnk;

    invoke-virtual {v0}, Lbnk;->e()[I

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcnc;->a:Ljava/lang/String;

    .line 159
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    const/16 v0, 0x11d

    invoke-static {v2, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    const v0, 0x7f0a0621

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->f:Landroid/content/Context;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f0a062b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :cond_2
    :goto_1
    return-void

    .line 165
    :cond_3
    const v0, 0x7f0a0622

    goto :goto_0

    .line 172
    :cond_4
    if-ne p2, v1, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_6

    iget-wide v4, v3, Lcom/twitter/library/service/ab;->c:J

    .line 175
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 176
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/util/ab;->a(Landroid/content/Context;)Lcom/twitter/library/util/ab;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v7, v7}, Lcom/twitter/library/util/ab;->a(ZZ)V

    .line 179
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v6, "phone_loggedin_mt"

    aput-object v6, v1, v8

    const-string/jumbo v6, "enter_code:verify_code::success"

    aput-object v6, v1, v7

    .line 180
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 182
    if-eqz v3, :cond_5

    .line 183
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbvg;

    iget-object v6, v3, Lcom/twitter/library/service/ab;->e:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lbvg;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 187
    :cond_5
    instance-of v0, v2, Lcom/twitter/android/lk;

    if-eqz v0, :cond_2

    .line 188
    check-cast v2, Lcom/twitter/android/PhoneMTFlowActivity;

    invoke-virtual {v2}, Lcom/twitter/android/PhoneMTFlowActivity;->a()V

    goto :goto_1

    .line 174
    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 191
    :cond_7
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "phone_loggedin_mt"

    aput-object v2, v1, v8

    const-string/jumbo v2, "enter_code:verify_code::failure"

    aput-object v2, v1, v7

    .line 192
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 193
    iget-object v0, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->f:Landroid/content/Context;

    const v1, 0x7f0a062a

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    iget-boolean v2, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->i:Z

    if-eqz v2, :cond_0

    .line 203
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "phone_loggedin_mt"

    aput-object v4, v3, v1

    const-string/jumbo v4, "enter_code::code:input"

    aput-object v4, v3, v0

    .line 204
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 205
    iput-boolean v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->i:Z

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->b:Landroid/widget/Button;

    iget-object v3, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    return-void

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1305e4

    if-ne v0, v1, :cond_1

    .line 119
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "phone_loggedin_mt"

    aput-object v2, v1, v4

    const-string/jumbo v2, "enter_code::continue:click"

    aput-object v2, v1, v5

    .line 120
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 121
    invoke-virtual {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->a:Landroid/widget/EditText;

    invoke-static {v0, v1, v4}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 122
    invoke-direct {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->f()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1305e5

    if-ne v0, v1, :cond_0

    .line 124
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/PhoneMTVerifyFragment;->h:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "phone_loggedin_mt"

    aput-object v2, v1, v4

    const-string/jumbo v2, "enter_code::resend:click"

    aput-object v2, v1, v5

    .line 125
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 126
    invoke-direct {p0}, Lcom/twitter/android/PhoneMTVerifyFragment;->c()V

    goto :goto_0
.end method
