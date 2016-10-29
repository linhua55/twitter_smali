.class public Lcom/twitter/android/periscope/ac;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lard;

.field private final c:Lcom/twitter/android/periscope/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lard;Lcom/twitter/android/periscope/u;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/android/periscope/ac;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/twitter/android/periscope/ac;->b:Lard;

    .line 35
    iput-object p3, p0, Lcom/twitter/android/periscope/ac;->c:Lcom/twitter/android/periscope/u;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/periscope/ac;)Lcom/twitter/android/periscope/u;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/periscope/ac;->c:Lcom/twitter/android/periscope/u;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/periscope/ac;)Lard;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/periscope/ac;->b:Lard;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/periscope/ac;->c:Lcom/twitter/android/periscope/u;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/u;->b()V

    .line 75
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 41
    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/twitter/android/profiles/as;->a(JLjava/lang/String;Lcom/twitter/library/client/Session;)Z

    move-result v0

    .line 42
    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v1}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    .line 43
    iget v2, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v2}, Lcom/twitter/model/core/p;->b(I)Z

    move-result v2

    .line 44
    iget-object v3, p0, Lcom/twitter/android/periscope/ac;->b:Lard;

    iget v4, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 45
    invoke-static {v4}, Larm;->a(I)I

    move-result v4

    .line 44
    invoke-interface {v3, v4}, Lard;->a(I)V

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/twitter/android/periscope/ac;->a()V

    .line 52
    :goto_0
    if-nez v1, :cond_1

    .line 71
    :goto_1
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/periscope/ac;->b()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/periscope/ac;->c:Lcom/twitter/android/periscope/u;

    iget-object v3, p0, Lcom/twitter/android/periscope/ac;->a:Landroid/content/Context;

    const v4, 0x7f0a0492

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/periscope/u;->a(ZZLjava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/twitter/android/periscope/ac;->c:Lcom/twitter/android/periscope/u;

    new-instance v2, Lcom/twitter/android/periscope/ad;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/periscope/ad;-><init>(Lcom/twitter/android/periscope/ac;Z)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/periscope/u;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/periscope/ac;->c:Lcom/twitter/android/periscope/u;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/u;->c()V

    .line 79
    return-void
.end method
