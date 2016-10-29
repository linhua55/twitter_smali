.class public Lcom/twitter/android/card/br;
.super Lcom/twitter/android/card/bo;
.source "Twttr"


# instance fields
.field private A:Lcom/twitter/library/card/e;

.field private C:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-direct {v0, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/android/card/e;

    invoke-direct {v1, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/android/card/br;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 7

    .prologue
    .line 39
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04023e

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/twitter/android/card/bp;

    invoke-direct {v6}, Lcom/twitter/android/card/bp;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/card/br;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/twitter/android/card/bo;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(JLclm;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/br;->k:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/twitter/android/card/br;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 56
    const-string/jumbo v0, "author"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "description"

    invoke-static {v1, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/twitter/android/card/br;->q:Landroid/content/Context;

    const v4, 0x7f120012

    .line 62
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v5, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 65
    iget-object v0, p0, Lcom/twitter/android/card/br;->q:Landroid/content/Context;

    const v2, 0x7f0a099d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/card/br;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/card/br;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/twitter/android/card/br;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    const-string/jumbo v0, "app_url"

    const-string/jumbo v1, "app_url_resolved"

    invoke-static {v0, v1, p3}, Lcom/twitter/library/card/e;->a(Ljava/lang/String;Ljava/lang/String;Lclm;)Lcom/twitter/library/card/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/br;->A:Lcom/twitter/library/card/e;

    .line 76
    const-string/jumbo v0, "app_id"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/br;->C:Ljava/lang/String;

    .line 78
    :cond_1
    return-void

    .line 67
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/twitter/android/card/br;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/card/br;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/br;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/twitter/android/card/br;->v:Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/card/br;->A:Lcom/twitter/library/card/e;

    iget-object v2, p0, Lcom/twitter/android/card/br;->C:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/card/br;->k:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/card/CardActionHelper;->a(Lcom/twitter/library/card/e;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/card/bo;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
