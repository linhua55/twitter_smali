.class public Lru;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsb",
        "<",
        "Lsv;",
        "Lcom/twitter/android/provider/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lrx;

.field private final b:Lrz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsj;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/twitter/android/client/bu;->g()I

    move-result v0

    .line 25
    new-instance v1, Lrx;

    invoke-direct {v1, p1, v0, p2}, Lrx;-><init>(Landroid/content/Context;ILsj;)V

    iput-object v1, p0, Lru;->a:Lrx;

    .line 27
    new-instance v1, Lrz;

    invoke-direct {v1, p1, v0, p2}, Lrz;-><init>(Landroid/content/Context;ILsj;)V

    iput-object v1, p0, Lru;->b:Lrz;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lru;->a:Lrx;

    invoke-virtual {v0}, Lrx;->a()V

    .line 60
    iget-object v0, p0, Lru;->b:Lrz;

    invoke-virtual {v0}, Lrz;->a()V

    .line 61
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lsc;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lsv;

    invoke-virtual {p0, p1, p2}, Lru;->a(Lsv;Lsc;)V

    return-void
.end method

.method public a(Lsv;Lsc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsv;",
            "Lsc",
            "<",
            "Lsv;",
            "Lcom/twitter/android/provider/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget v0, p1, Lsv;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 35
    iget-object v0, p0, Lru;->a:Lrx;

    iget-object v1, p1, Lsv;->a:Ljava/lang/String;

    new-instance v2, Lrv;

    invoke-direct {v2, p0, p2, p1}, Lrv;-><init>(Lru;Lsc;Lsv;)V

    invoke-virtual {v0, v1, v2}, Lrx;->a(Ljava/lang/Object;Lsc;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v0, p1, Lsv;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p1, Lsv;->a:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lru;->b:Lrz;

    iget-object v1, p1, Lsv;->a:Ljava/lang/String;

    new-instance v2, Lrw;

    invoke-direct {v2, p0, p2, p1}, Lrw;-><init>(Lru;Lsc;Lsv;)V

    invoke-virtual {v0, v1, v2}, Lrz;->a(Ljava/lang/Object;Lsc;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lsc;->a(Ljava/lang/Object;Lcmf;)V

    goto :goto_0
.end method
