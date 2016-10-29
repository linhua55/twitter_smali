.class public Ltv/periscope/android/data/g;
.super Ltv/periscope/android/data/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/data/a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ltv/periscope/android/data/c;

.field private d:Ltv/periscope/android/data/UserType;


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Ltv/periscope/android/data/g;->a:Ltv/periscope/android/data/f;

    iget-object v1, p0, Ltv/periscope/android/data/g;->b:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/data/g;->d:Ltv/periscope/android/data/UserType;

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/data/f;->a(Ljava/lang/String;Ltv/periscope/android/data/UserType;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Ltv/periscope/android/data/g;->c:Ltv/periscope/android/data/c;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltv/periscope/android/data/g;->a:Ltv/periscope/android/data/f;

    iget-object v1, p0, Ltv/periscope/android/data/g;->d:Ltv/periscope/android/data/UserType;

    iget-object v2, p0, Ltv/periscope/android/data/g;->b:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v1, v2, v3}, Ltv/periscope/android/data/f;->a(Ltv/periscope/android/data/UserType;Ljava/lang/String;I)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ltv/periscope/android/data/UserType;)V
    .locals 1

    .prologue
    .line 20
    iput-object p1, p0, Ltv/periscope/android/data/g;->d:Ltv/periscope/android/data/UserType;

    .line 21
    iget-object v0, p0, Ltv/periscope/android/data/g;->c:Ltv/periscope/android/data/c;

    iput-object p1, v0, Ltv/periscope/android/data/c;->a:Ltv/periscope/android/data/UserType;

    .line 22
    return-void
.end method
