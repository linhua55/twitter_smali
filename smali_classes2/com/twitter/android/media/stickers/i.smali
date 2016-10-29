.class public Lcom/twitter/android/media/stickers/i;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x19

    return v0
.end method

.method public static a(J)J
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/twitter/util/aj;->a:Ljava/security/SecureRandom;

    .line 45
    invoke-virtual {v0, p0, p1}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 46
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/media/stickers/m;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcpo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/android/media/stickers/j;

    invoke-direct {v0}, Lcom/twitter/android/media/stickers/j;-><init>()V

    invoke-static {p0, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/twitter/android/media/stickers/k;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/media/stickers/k;-><init>(J)V

    .line 67
    new-instance v1, Lcom/twitter/android/media/stickers/l;

    invoke-direct {v1, p1, p2, v0}, Lcom/twitter/android/media/stickers/l;-><init>(JLdau;)V

    invoke-static {p0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
