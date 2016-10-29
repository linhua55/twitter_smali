.class Lcom/twitter/android/wf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/wc;


# direct methods
.method constructor <init>(Lcom/twitter/android/wc;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/twitter/android/wf;->a:Lcom/twitter/android/wc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 475
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 476
    iget-object v0, p0, Lcom/twitter/android/wf;->a:Lcom/twitter/android/wc;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/wc;->d(J)Ljava/lang/Long;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/wf;->a:Lcom/twitter/android/wc;

    .line 478
    invoke-static {v1}, Lcom/twitter/android/wc;->b(Lcom/twitter/android/wc;)Lcom/twitter/platform/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/platform/u;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/twitter/android/wc;->k()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 477
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/twitter/android/wf;->a(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
