.class public Lvc;
.super Lcom/twitter/library/card/au;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/aa;
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/card/i;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:J

.field private h:J

.field private i:Ljava/lang/Long;

.field private j:Lcom/twitter/library/card/CardContext;

.field private k:Lcom/twitter/model/core/TwitterUser;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-direct {v0, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lvc;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;)V
    .locals 5

    .prologue
    const v4, 0x7f020594

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Lcom/twitter/library/card/au;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvc;->c:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lvc;->a:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lvc;->b:Lcom/twitter/android/card/i;

    .line 71
    iput-object p2, p0, Lvc;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 74
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne p2, v0, :cond_0

    .line 75
    const v0, 0x7f040049

    .line 79
    :goto_0
    iget-object v1, p0, Lvc;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lvc;->e:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lvc;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f13019f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvc;->f:Landroid/widget/TextView;

    .line 81
    invoke-static {}, Lcom/twitter/util/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    iget-object v1, p0, Lvc;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v0, p0, Lvc;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    iget-object v0, p0, Lvc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v4, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 90
    :goto_1
    return-void

    .line 77
    :cond_0
    const v0, 0x7f04004a

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lvc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method static synthetic a(Lvc;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lvc;->d()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/library/card/CardContext;Lcom/twitter/model/core/TwitterUser;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/card/CardContext;->e()J

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lvc;->i:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lvc;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    .line 164
    :cond_2
    iget-object v0, p0, Lvc;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004b

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lvc;->e:Landroid/widget/LinearLayout;

    .line 165
    iput-object v4, p0, Lvc;->f:Landroid/widget/TextView;

    .line 168
    :cond_3
    iget-object v0, p0, Lvc;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 170
    iget-object v0, p0, Lvc;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_4

    .line 171
    iget-object v0, p0, Lvc;->b:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "message_me_card_show"

    invoke-virtual {p0}, Lvc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/twitter/android/card/i;->d(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 174
    :cond_4
    iget-object v0, p0, Lvc;->f:Landroid/widget/TextView;

    new-instance v1, Lvd;

    invoke-direct {v1, p0, p2}, Lvd;-><init>(Lvc;Lcom/twitter/model/core/TwitterUser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lvc;)Lcom/twitter/android/card/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lvc;->b:Lcom/twitter/android/card/i;

    return-object v0
.end method

.method static synthetic c(Lvc;)Lcom/twitter/library/card/CardContext;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lvc;->j:Lcom/twitter/library/card/CardContext;

    return-object v0
.end method

.method private d()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lvc;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lvc;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lvc;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lvc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lvc;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/twitter/library/card/z;->a()Lcom/twitter/library/card/z;

    move-result-object v0

    .line 114
    iget-wide v2, p0, Lvc;->g:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/z;->b(JLjava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 116
    iget-wide v2, p0, Lvc;->h:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lvc;->i:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    iget-object v1, p0, Lvc;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 120
    :cond_0
    return-void
.end method

.method public a(JLclm;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lvc;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 125
    const-string/jumbo v0, "cta"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-direct {p0}, Lvc;->d()Landroid/app/Activity;

    move-result-object v1

    .line 127
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 129
    const-string/jumbo v3, "string"

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lvc;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    :goto_0
    const-string/jumbo v0, "default_composer_text"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->l:Ljava/lang/String;

    .line 140
    :cond_1
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lvc;->f:Landroid/widget/TextView;

    const v1, 0x7f0a053c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lvc;->b:Lcom/twitter/android/card/i;

    invoke-interface {v0, p3}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 151
    iput-object p3, p0, Lvc;->j:Lcom/twitter/library/card/CardContext;

    .line 152
    iget-object v0, p0, Lvc;->k:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {p0, p3, v0}, Lvc;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/model/core/TwitterUser;)V

    .line 153
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 1

    .prologue
    .line 144
    iput-object p3, p0, Lvc;->k:Lcom/twitter/model/core/TwitterUser;

    .line 145
    iget-object v0, p0, Lvc;->j:Lcom/twitter/library/card/CardContext;

    invoke-direct {p0, v0, p3}, Lvc;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/model/core/TwitterUser;)V

    .line 146
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 98
    iget-wide v0, p1, Lcom/twitter/library/card/av;->a:J

    iput-wide v0, p0, Lvc;->g:J

    .line 99
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lvc;->h:J

    .line 100
    const-string/jumbo v0, "recipient"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lvc;->i:Ljava/lang/Long;

    .line 102
    invoke-static {}, Lcom/twitter/library/card/z;->a()Lcom/twitter/library/card/z;

    move-result-object v0

    .line 103
    iget-wide v2, p1, Lcom/twitter/library/card/av;->a:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/z;->a(JLjava/lang/Object;)V

    .line 104
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 105
    iget-wide v2, p0, Lvc;->h:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lvc;->i:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    iget-object v1, p0, Lvc;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lvc;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lvc;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-static {v0}, Lcom/twitter/android/card/l;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lvc;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method
