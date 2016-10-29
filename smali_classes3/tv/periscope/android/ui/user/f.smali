.class Ltv/periscope/android/ui/user/f;
.super Ltv/periscope/android/util/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/util/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/user/e;


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltv/periscope/android/ui/user/f;->a:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->getItemCount()I

    move-result v0

    return v0
.end method

.method protected a(I)Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Ltv/periscope/android/ui/user/f;->a:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/user/e;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Ltv/periscope/android/ui/user/f;->a:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/user/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v1, v0, Ltv/periscope/android/api/PsUser;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Ltv/periscope/android/api/PsUser;

    iget-object v0, v0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected synthetic c(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/user/f;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
