.class public Lcom/twitter/android/or;
.super Lcom/twitter/app/common/list/w;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/w;-><init>(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/twitter/android/or;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/android/or;

    invoke-direct {v0, p0}, Lcom/twitter/android/or;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/os;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/android/os;

    invoke-direct {v0, p0}, Lcom/twitter/android/os;-><init>(Lcom/twitter/android/or;)V

    return-object v0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/or;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "search_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/or;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/or;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "search_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic e()Lcom/twitter/app/common/list/x;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/or;->a()Lcom/twitter/android/os;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/app/common/base/g;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/or;->a()Lcom/twitter/android/os;

    move-result-object v0

    return-object v0
.end method
