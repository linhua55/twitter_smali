.class Lcom/twitter/app/main/q;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/app/main/h;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/h;)V
    .locals 0

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 1724
    iput-object p1, p0, Lcom/twitter/app/main/q;->a:Lcom/twitter/app/main/h;

    .line 1725
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1719
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/app/main/q;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    .line 1729
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 1730
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    instance-of v0, p1, Lcom/twitter/library/api/search/q;

    if-eqz v0, :cond_0

    .line 1732
    check-cast p1, Lcom/twitter/library/api/search/q;

    .line 1734
    iget-object v0, p0, Lcom/twitter/app/main/q;->a:Lcom/twitter/app/main/h;

    const-wide/32 v2, 0x927c0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/twitter/library/api/search/q;->e()I

    move-result v5

    aput v5, v1, v4

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/twitter/app/main/h;->a(JLcom/twitter/app/main/q;[I)V

    .line 1737
    :cond_0
    return-void
.end method
