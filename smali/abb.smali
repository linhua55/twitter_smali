.class public Labb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/landing/ab;


# instance fields
.field private final a:Labd;

.field private final b:Laay;

.field private final c:Lcom/twitter/android/livevideo/landing/y;

.field private final d:Landroid/content/res/Resources;

.field private e:Lcdq;

.field private f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private g:Z

.field private final h:Lcom/twitter/android/livevideo/player/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Labd;Laay;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Labb;->g:Z

    .line 47
    new-instance v0, Labc;

    invoke-direct {v0, p0}, Labc;-><init>(Labb;)V

    iput-object v0, p0, Labb;->h:Lcom/twitter/android/livevideo/player/l;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Labb;->d:Landroid/content/res/Resources;

    .line 76
    iput-object p2, p0, Labb;->a:Labd;

    .line 77
    iput-object p3, p0, Labb;->b:Laay;

    .line 78
    iget-object v0, p0, Labb;->b:Laay;

    iget-object v1, p0, Labb;->h:Lcom/twitter/android/livevideo/player/l;

    invoke-virtual {v0, v1}, Laay;->a(Lcom/twitter/android/livevideo/player/l;)V

    .line 79
    new-instance v0, Lcom/twitter/android/livevideo/landing/y;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/twitter/android/livevideo/landing/y;-><init>(Landroid/content/res/Resources;Lcom/twitter/android/livevideo/landing/ab;Lrx/t;)V

    iput-object v0, p0, Labb;->c:Lcom/twitter/android/livevideo/landing/y;

    .line 80
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Labb;
    .locals 5

    .prologue
    .line 64
    new-instance v0, Labb;

    new-instance v1, Labd;

    invoke-direct {v1, p0}, Labd;-><init>(Landroid/content/Context;)V

    new-instance v2, Laay;

    new-instance v3, Laba;

    invoke-direct {v3, p0}, Laba;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcdr;

    invoke-direct {v4, p1}, Lcdr;-><init>(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    invoke-direct {v2, p0, v3, v4}, Laay;-><init>(Landroid/app/Activity;Laba;Lcdr;)V

    invoke-direct {v0, p0, v1, v2}, Labb;-><init>(Landroid/content/Context;Labd;Laay;)V

    return-object v0
.end method

.method static synthetic a(Labb;)Labd;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Labb;->a:Labd;

    return-object v0
.end method

.method static synthetic a(Labb;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Labb;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Labb;->e:Lcdq;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Labb;->b:Laay;

    iget-object v1, p0, Labb;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v2, p0, Labb;->e:Lcdq;

    invoke-virtual {v0, v1, v2}, Laay;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcdq;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Labb;->a:Labd;

    invoke-virtual {v0}, Labd;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Labb;->b:Laay;

    invoke-virtual {v0, p1}, Laay;->a(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method public a(Lcdq;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 4

    .prologue
    .line 88
    iput-object p1, p0, Labb;->e:Lcdq;

    .line 89
    iget-object v0, p0, Labb;->a:Labd;

    iget-object v1, p0, Labb;->b:Laay;

    invoke-virtual {v1}, Laay;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Labd;->a(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Labb;->a:Labd;

    invoke-virtual {v0, p1}, Labd;->a(Lcdq;)V

    .line 91
    iput-object p2, p0, Labb;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 93
    iget-object v0, p0, Labb;->b:Laay;

    invoke-virtual {v0, p2, p1}, Laay;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcdq;)V

    .line 95
    iget-object v0, p0, Labb;->e:Lcdq;

    invoke-virtual {v0}, Lcdq;->f()Lcom/twitter/model/livevideo/BroadcastState;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/livevideo/BroadcastState;->c:Lcom/twitter/model/livevideo/BroadcastState;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Labb;->a:Labd;

    iget-object v1, p0, Labb;->d:Landroid/content/res/Resources;

    const v2, 0x7f0a0494

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Labd;->a(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Labb;->c:Lcom/twitter/android/livevideo/landing/y;

    iget-object v1, p0, Labb;->e:Lcdq;

    invoke-virtual {v1}, Lcdq;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/livevideo/landing/y;->d(J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Labb;->a:Labd;

    invoke-virtual {v0, p1}, Labd;->a(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Labb;->e:Lcdq;

    .line 112
    iget-object v0, p0, Labb;->b:Laay;

    invoke-virtual {v0}, Laay;->b()V

    .line 113
    iget-object v0, p0, Labb;->c:Lcom/twitter/android/livevideo/landing/y;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/y;->a()V

    .line 114
    return-void
.end method

.method public c()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Labb;->b:Laay;

    invoke-virtual {v0}, Laay;->c()Lcom/twitter/library/widget/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Labb;->a:Labd;

    invoke-virtual {v0}, Labd;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Labb;->g:Z

    return v0
.end method
