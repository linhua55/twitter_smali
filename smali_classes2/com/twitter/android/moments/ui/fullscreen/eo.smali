.class public Lcom/twitter/android/moments/ui/fullscreen/eo;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Lakj;

.field private d:Lcom/twitter/android/moments/ui/fullscreen/eq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lakj;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->b:Lcom/twitter/library/client/bd;

    .line 39
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->c:Lakj;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lakj;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->c:Lakj;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->b:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lcom/twitter/android/moments/ui/fullscreen/eq;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->d:Lcom/twitter/android/moments/ui/fullscreen/eq;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/eq;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->d:Lcom/twitter/android/moments/ui/fullscreen/eq;

    .line 75
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 45
    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/twitter/android/profiles/as;->a(JLjava/lang/String;Lcom/twitter/library/client/Session;)Z

    move-result v2

    .line 46
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v3

    .line 47
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->c:Lakj;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->a:Landroid/content/Context;

    if-eqz v3, :cond_0

    const v0, 0x7f0a091a

    .line 48
    :goto_0
    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v4, v2, v3, v0}, Lakj;->a(ZZLjava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/eo;->c:Lakj;

    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/ep;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ep;-><init>(Lcom/twitter/android/moments/ui/fullscreen/eo;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Z)V

    invoke-virtual {v0, v3}, Lakj;->a(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void

    .line 47
    :cond_0
    const v0, 0x7f0a03b7

    goto :goto_0
.end method
