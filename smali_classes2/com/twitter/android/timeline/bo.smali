.class public Lcom/twitter/android/timeline/bo;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Z)Lcmv;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcmv",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/twitter/android/timeline/ch;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/ch;-><init>(Z)V

    .line 17
    new-instance v1, Lcmu;

    new-instance v2, Lcom/twitter/android/timeline/q;

    invoke-direct {v2}, Lcom/twitter/android/timeline/q;-><init>()V

    const/16 v3, 0xe

    new-array v3, v3, [Lcmv;

    const/4 v4, 0x0

    new-instance v5, Lcom/twitter/android/timeline/ci;

    invoke-direct {v5}, Lcom/twitter/android/timeline/ci;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/twitter/android/timeline/n;

    invoke-direct {v5}, Lcom/twitter/android/timeline/n;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/twitter/android/timeline/cc;

    invoke-direct {v5, v0}, Lcom/twitter/android/timeline/cc;-><init>(Lcom/twitter/android/timeline/ch;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/twitter/android/timeline/ao;

    invoke-direct {v5, v0}, Lcom/twitter/android/timeline/ao;-><init>(Lcom/twitter/android/timeline/ch;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lcom/twitter/android/timeline/cu;

    new-instance v6, Lcom/twitter/android/timeline/cy;

    invoke-direct {v6}, Lcom/twitter/android/timeline/cy;-><init>()V

    new-instance v7, Lcom/twitter/android/timeline/cz;

    invoke-direct {v7}, Lcom/twitter/android/timeline/cz;-><init>()V

    new-instance v8, Lcom/twitter/android/timeline/cw;

    invoke-direct {v8}, Lcom/twitter/android/timeline/cw;-><init>()V

    invoke-direct {v5, v6, v7, v8}, Lcom/twitter/android/timeline/cu;-><init>(Lcom/twitter/android/timeline/cy;Lcom/twitter/android/timeline/cz;Lcom/twitter/android/timeline/cw;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Lcom/twitter/android/timeline/y;

    invoke-direct {v5}, Lcom/twitter/android/timeline/y;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Lcom/twitter/android/timeline/ag;

    invoke-direct {v5}, Lcom/twitter/android/timeline/ag;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Lcom/twitter/android/timeline/az;

    new-instance v6, Lcom/twitter/android/timeline/ba;

    invoke-direct {v6}, Lcom/twitter/android/timeline/ba;-><init>()V

    invoke-direct {v5, v6}, Lcom/twitter/android/timeline/az;-><init>(Lcom/twitter/android/timeline/ba;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/twitter/android/timeline/bn;

    invoke-direct {v5}, Lcom/twitter/android/timeline/bn;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-instance v5, Lcom/twitter/android/timeline/bv;

    invoke-direct {v5}, Lcom/twitter/android/timeline/bv;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-instance v5, Lcom/twitter/android/timeline/bc;

    invoke-direct {v5}, Lcom/twitter/android/timeline/bc;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-instance v5, Lcom/twitter/android/timeline/ad;

    invoke-direct {v5}, Lcom/twitter/android/timeline/ad;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-instance v5, Lcom/twitter/android/timeline/co;

    invoke-direct {v5}, Lcom/twitter/android/timeline/co;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xd

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcmu;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
