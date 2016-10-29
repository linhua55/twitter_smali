.class public Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/ui/widget/TwitterButton;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

.field private e:Lcom/twitter/android/dm/cards/dmfeedbackcard/l;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->e:Lcom/twitter/android/dm/cards/dmfeedbackcard/l;

    iget-object v1, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "comment_compose"

    const-string/jumbo v3, "dismiss"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/dm/cards/dmfeedbackcard/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v4}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->setResult(I)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 225
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->finish()V

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)Lcom/twitter/ui/widget/TwitterButton;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a039d

    .line 182
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0034

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0285

    new-instance v2, Lcom/twitter/android/dm/cards/dmfeedbackcard/j;

    invoke-direct {v2, p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/j;-><init>(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)V

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00fd

    new-instance v2, Lcom/twitter/android/dm/cards/dmfeedbackcard/i;

    invoke-direct {v2, p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/i;-><init>(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)V

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/twitter/android/dm/cards/dmfeedbackcard/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/k;-><init>(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->f:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f0400ea

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 56
    return-object p2
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    const-string/jumbo v0, "feedback_associated_user_name_key"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string/jumbo v0, "feedback_scribe_component"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->g:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "feedback_request_params"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

    iput-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->d:Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

    .line 70
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->d:Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

    invoke-virtual {v0}, Lcom/twitter/library/customerservice/network/FeedbackRequestParams;->d()Lclj;

    move-result-object v0

    .line 71
    const-string/jumbo v3, "score"

    .line 72
    invoke-static {v3, v0}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    .line 71
    invoke-static {v0, v3}, Lcom/twitter/util/aj;->d(Ljava/lang/String;I)I

    .line 75
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->d:Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

    invoke-virtual {v0}, Lcom/twitter/library/customerservice/network/FeedbackRequestParams;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/twitter/android/dm/cards/dmfeedbackcard/l;->a(J)Lcom/twitter/android/dm/cards/dmfeedbackcard/l;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->e:Lcom/twitter/android/dm/cards/dmfeedbackcard/l;

    .line 76
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->e:Lcom/twitter/android/dm/cards/dmfeedbackcard/l;

    iget-object v3, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->g:Ljava/lang/String;

    const-string/jumbo v4, "comment_compose"

    const-string/jumbo v5, "impression"

    invoke-virtual {v0, v3, v4, v5}, Lcom/twitter/android/dm/cards/dmfeedbackcard/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v0, 0x7f0a0398

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->setTitle(I)V

    .line 84
    const v0, 0x7f13035a

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    .line 85
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03a4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v6}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    new-instance v3, Lcom/twitter/android/dm/cards/dmfeedbackcard/e;

    invoke-direct {v3, p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/e;-><init>(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)V

    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-string/jumbo v0, "feedback_associated_score_description_key"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const v0, 0x7f130359

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->c:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->c:Landroid/widget/EditText;

    sget-object v3, Lcom/twitter/android/revenue/card/h;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->c:Landroid/widget/EditText;

    .line 101
    invoke-virtual {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0399

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/android/dm/cards/dmfeedbackcard/f;

    invoke-direct {v1, p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/f;-><init>(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    const v0, 0x7f130358

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->b:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/dm/cards/dmfeedbackcard/g;

    invoke-direct {v1, p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/g;-><init>(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 154
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 156
    if-ne p2, v3, :cond_0

    .line 157
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iput-boolean v2, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->f:Z

    .line 159
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-direct {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 161
    const v0, 0x7f0a03a5

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-direct {p0, v2}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-direct {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->i()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->e:Lcom/twitter/android/dm/cards/dmfeedbackcard/l;

    iget-object v2, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->g:Ljava/lang/String;

    const-string/jumbo v3, "comment_compose"

    const-string/jumbo v4, "submit"

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/dm/cards/dmfeedbackcard/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->d:Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

    invoke-virtual {v1, v0}, Lcom/twitter/library/customerservice/network/FeedbackRequestParams;->a(Ljava/lang/String;)Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

    .line 130
    new-instance v1, Lcom/twitter/library/customerservice/network/c;

    invoke-virtual {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->d:Lcom/twitter/library/customerservice/network/FeedbackRequestParams;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/twitter/library/customerservice/network/c;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/customerservice/network/FeedbackRequestParams;Ljava/lang/String;)V

    .line 132
    iput-boolean v6, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->f:Z

    .line 133
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v5}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 135
    invoke-virtual {p0, v1, v6}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 149
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a039b

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a039c

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a05e4

    new-instance v2, Lcom/twitter/android/dm/cards/dmfeedbackcard/h;

    invoke-direct {v2, p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/h;-><init>(Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;)V

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 174
    invoke-direct {p0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->h()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;->a(Z)V

    goto :goto_0
.end method
