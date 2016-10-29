.class public Lcom/twitter/android/moments/data/s;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/bk;

.field private final c:Lcom/twitter/library/client/bd;

.field private final d:Lcet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lcet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/android/moments/data/s;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/twitter/android/moments/data/s;->b:Lcom/twitter/library/client/bk;

    .line 29
    iput-object p3, p0, Lcom/twitter/android/moments/data/s;->c:Lcom/twitter/library/client/bd;

    .line 30
    iput-object p4, p0, Lcom/twitter/android/moments/data/s;->d:Lcet;

    .line 31
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lbqg;

    iget-object v1, p0, Lcom/twitter/android/moments/data/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/moments/data/s;->d:Lcet;

    iget-object v3, p0, Lcom/twitter/android/moments/data/s;->b:Lcom/twitter/library/client/bk;

    .line 35
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lbqg;-><init>(Landroid/content/Context;Lcet;Lcom/twitter/library/client/Session;Ljava/util/List;)V

    .line 36
    iget-object v1, p0, Lcom/twitter/android/moments/data/s;->c:Lcom/twitter/library/client/bd;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 37
    return-void
.end method

.method public b(J)V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lbqi;

    iget-object v1, p0, Lcom/twitter/android/moments/data/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/moments/data/s;->d:Lcet;

    iget-object v3, p0, Lcom/twitter/android/moments/data/s;->b:Lcom/twitter/library/client/bk;

    .line 41
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lbqi;-><init>(Landroid/content/Context;Lcet;Lcom/twitter/library/client/Session;Ljava/util/List;)V

    .line 42
    iget-object v1, p0, Lcom/twitter/android/moments/data/s;->c:Lcom/twitter/library/client/bd;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 43
    return-void
.end method
